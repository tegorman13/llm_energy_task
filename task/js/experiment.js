    
    const experiment = {
        currentState: {
            isAdmin: true, // Default admin mode to true
            sectionIndex: 0,
            scenarioIndex: -1,
            scenarioSubStage: 'ai_response',
            currentScenarioItemData: null,
            sections: ['instructions', 'numeracy', 'energy-knowledge', 'scenario-task', 'debriefing'],
            get totalSections() { return this.sections.length; },
            currentSectionQuestions: [],
            participantResponses: {},
            llmEstimatesData: null,
            selectedItems: [],
        },
        
        async init() {
            console.log("Experiment (Short Version) Initializing...");
            try {
                await this.loadLLMEstimates();
                this.attachEventListeners();
                this.showSection(this.currentState.sections[0]);
                this.updateAdminBar();
                this.updateProgressBar();
                this.updateAdminUIElements(); // Call to set initial admin UI states
                console.log("Experiment (Short Version) Initialized successfully.");
            } catch (error) {
                console.error("FATAL: Initialization failed:", error);
                alert(`A critical error occurred during initialization: ${error.message}. Cannot continue. Please check the console (F12) for details, ensure 'llm_estimates1.json' is accessible, and that items within it have STRING 'estimation_task_key' values that match keys in the 'Appliance Energy Estimation' table (e.g., "est_cfl"). Also ensure items for interaction have "type": "Energy Used".`);
                const container = document.getElementById('experiment-container');
                if (container) container.innerHTML = `<h2 style="color:var(--danger-red);">Initialization Error</h2><p>A critical error occurred: ${error.message}. Please check the browser console (F12) for more details. This may be due to issues loading '${LLM_ESTIMATES_URL}' or problems with 'estimation_task_key' fields in the data (they MUST be strings matching estimation table keys and items must have a 'type' field).</p><pre>${error.stack}</pre>`;
            }
        },
        
        updateAdminUIElements() {
            // Update visibility of admin-specific text in instructions
            const adminInstructionText = document.getElementById('admin-mode-instructions-text');
            if (adminInstructionText) {
                adminInstructionText.style.display = this.currentState.isAdmin ? 'block' : 'none';
            }
            
            // Update visibility of all skip-section-buttons
            document.querySelectorAll('.skip-section-button').forEach(btn => {
                btn.style.display = this.currentState.isAdmin ? 'block' : 'none';
            });
            
            // Update AI debug info if currently visible in scenario task
            if (this.currentState.sections[this.currentState.sectionIndex] === 'scenario-task' &&
            document.getElementById('section-scenario-task').classList.contains('active')) {
                this.renderCurrentScenarioSubStage(); // To update debug info visibility
            }
            // Set checkbox state
            const adminCheckbox = document.getElementById('admin-mode-checkbox');
            if (adminCheckbox) {
                adminCheckbox.checked = this.currentState.isAdmin;
            }
        },
        showStatusMessage(msg, duration = 2000) {
            const el = document.getElementById("status-message");
            if (!el) return;
            el.textContent = msg;
            el.style.opacity = "1";
            setTimeout(() => { el.style.opacity = "0"; }, duration);
        },
        
        attachEventListeners() {
            console.log("Attaching event listeners...");
            document.getElementById('start-button')?.addEventListener('click', () => this.nextSection());
            document.querySelectorAll('.next-section-button').forEach(button => {
                button.addEventListener('click', (event) => {
                    const targetSectionId = event.target.dataset.nextTarget;
                    if (targetSectionId === 'scenario-task' && this.currentState.selectedItems.length === 0) {
                        this.selectRandomScenarioItems();
                        if (this.currentState.selectedItems.length < NUM_SCENARIOS_TO_SELECT) {
                            alert("Could not select enough valid scenario items. Please check 'llm_estimates1.json': ensure enough items have a valid STRING 'estimation_task_key' (e.g., \"est_cfl\") that matches an item 'key' in the 'Appliance Energy Estimation' table, AND have `\"type\": \"Energy Used\"`. The study cannot proceed with AI interaction without these items.");
                            return;
                        }
                    }
                    this.nextSection();
                });
            });
            document.querySelectorAll('.skip-section-button').forEach(button => {
                button.addEventListener('click', (event) => {
                    const targetSectionId = event.target.dataset.skipTarget;
                    this.skipSection(targetSectionId);
                });
            });
            document.getElementById('scenario-next-button')?.addEventListener('click', () => this.advanceScenarioStage());
            document.getElementById('restart-button')?.addEventListener('click', () => window.location.reload());
            document.querySelectorAll('.admin-jump-button').forEach(button => {
                button.addEventListener('click', (event) => {
                    const sectionIndex = parseInt(event.target.dataset.sectionIndex, 10);
                    if (!isNaN(sectionIndex)) {
                        const targetSectionId = this.currentState.sections[sectionIndex];
                        if (targetSectionId === 'scenario-task' && this.currentState.selectedItems.length === 0) {
                            this.selectRandomScenarioItems();
                            if (this.currentState.selectedItems.length < NUM_SCENARIOS_TO_SELECT) {
                                alert("Admin Jump Failed: Could not select enough valid scenario items. Check 'llm_estimates1.json' for STRING 'estimation_task_key' values (e.g., \"est_desktop\"), ensure they match estimation table keys, AND items have `\"type\": \"Energy Used\"`. Jumping to Instructions instead.");
                                this.goToSection(0);
                                return;
                            }
                        }
                        this.goToSection(sectionIndex);
                    }
                });
            });
            
            const adminCheckbox = document.getElementById('admin-mode-checkbox');
            if (adminCheckbox) {
                adminCheckbox.addEventListener('change', (event) => {
                    this.currentState.isAdmin = event.target.checked;
                    console.log("Admin mode toggled to:", this.currentState.isAdmin);
                    this.updateAdminUIElements();
                });
            }
            console.log("Event listeners attached.");
        },
        
        async loadLLMEstimates() {
            console.log(`Attempting to load LLM estimates from: ${LLM_ESTIMATES_URL}`);
            try {
                const response = await fetch(LLM_ESTIMATES_URL);
                if (!response.ok) throw new Error(`HTTP ${response.status} fetching ${LLM_ESTIMATES_URL}`);
                const jsonData = await response.json(); 
                
                this.currentState.llmEstimatesData = jsonData.data;
                
                if (!Array.isArray(this.currentState.llmEstimatesData) || this.currentState.llmEstimatesData.length === 0) {
                    throw new Error("The 'data' field in llm_estimates1.json is not a valid non-empty array.");
                }
                const itemsWithKeyAndTypeField = this.currentState.llmEstimatesData.filter(item => 
                typeof item.estimation_task_key !== 'undefined' && typeof item.type !== 'undefined'
                ).length;
                console.log(`LLM estimates loaded: ${this.currentState.llmEstimatesData.length} total items from 'data' field. ${itemsWithKeyAndTypeField} items have 'estimation_task_key' and 'type' fields present.`);
                if (itemsWithKeyAndTypeField < NUM_SCENARIOS_TO_SELECT) {
                    console.warn(`WARNING: Fewer than ${NUM_SCENARIOS_TO_SELECT} items in the 'data' field of '${LLM_ESTIMATES_URL}' have both 'estimation_task_key' and 'type' fields defined. This may lead to issues selecting enough scenario items. Ensure these keys are present AND 'estimation_task_key' is a STRING matching estimation table keys, and 'type' is 'Energy Used' for interaction items.`);
                }
            } catch (error) {
                console.error(`Error loading LLM estimates:`, error);
                if (error.message.includes("jsonData is undefined") || (typeof jsonData !== 'undefined' && typeof jsonData.data === 'undefined')) {
                    throw new Error(`Failed to load or parse '${LLM_ESTIMATES_URL}'. The expected 'data' array was not found within the JSON structure. ${error.message}`);
                }
                throw new Error(`Failed to load or parse '${LLM_ESTIMATES_URL}'. ${error.message}`);
            }
        },
        
        showSection(sectionId) {
            console.log(`Showing section: ${sectionId} (Index: ${this.currentState.sectionIndex})`);
            document.querySelectorAll('.section').forEach(sec => sec.classList.remove('active'));
            const sectionElement = document.getElementById(`section-${sectionId}`);
            if (!sectionElement) {
                console.error(`Section element '#section-${sectionId}' not found.`);
                return;
            }
            sectionElement.classList.add('active');
            const navButtonContainer = sectionElement.querySelector('.navigation-buttons');
            if (navButtonContainer) navButtonContainer.style.display = 'none';
            
            if (['numeracy', 'energy-knowledge'].includes(sectionId)) {
                this.renderQuestionsForSection(sectionId);
                if (navButtonContainer) navButtonContainer.style.display = 'block';
            } else if (sectionId === 'scenario-task') {
                if (this.currentState.selectedItems.length < NUM_SCENARIOS_TO_SELECT) {
                    this.selectRandomScenarioItems();
                    if (this.currentState.selectedItems.length < NUM_SCENARIOS_TO_SELECT) {
                        alert("Error: Could not automatically select enough valid scenario items for the AI Interaction task. Please check the 'llm_estimates1.json' file: ensure enough items have a valid STRING 'estimation_task_key' (e.g., \"est_cfl\") that matches an item key in the 'Appliance Energy Estimation' table AND have `\"type\": \"Energy Used\"`. Returning to Instructions.");
                        this.goToSection(0);
                        return;
                    }
                }
                if (this.currentState.scenarioIndex < 0) this.currentState.scenarioIndex = 0;
                this.loadScenario(this.currentState.scenarioIndex);
                if (navButtonContainer) navButtonContainer.style.display = 'block';
                
            } else if (sectionId === 'debriefing') {
                this.populateDebriefing();
                this.displayResults();
                if (navButtonContainer) navButtonContainer.style.display = 'block';
            } else if (sectionId === 'instructions') {
                if (navButtonContainer) navButtonContainer.style.display = 'block';
            }
            this.updateAdminBar();
            this.updateProgressBar();
            this.updateAdminUIElements(); // Ensure admin UI elements are correctly shown/hidden for the new section
            window.scrollTo(0, 0);
        },
        
        selectRandomScenarioItems() {
            console.log("Attempting to select random scenario items...");
            this.currentState.selectedItems = [];
            
            if (!this.currentState.llmEstimatesData || this.currentState.llmEstimatesData.length === 0) {
                console.error("LLM Estimates data (llmEstimatesData) is not loaded or empty. Cannot select random items.");
                return;
            }
            
            const estimationQuestion = questions.q18_energy_estimation;
            if (!estimationQuestion || !estimationQuestion.items || !Array.isArray(estimationQuestion.items)) {
                console.error("q18_energy_estimation definition is missing or invalid in 'questions' object. Cannot validate estimation_task_key.");
                return;
            }
            const validEstimationKeys = new Set(estimationQuestion.items.map(item => item.key));
            if (validEstimationKeys.size === 0) {
                console.error("No valid keys found in q18_energy_estimation.items. Cannot select linkable scenario items.");
                return;
            }
            console.log("Valid estimation keys from q18_energy_estimation table definition:", Array.from(validEstimationKeys));
            
            const potentialItems = this.currentState.llmEstimatesData.filter(item => {
                if (typeof item.estimation_task_key === 'undefined') {
                    return false;
                }
                if (typeof item.estimation_task_key !== 'string' || item.estimation_task_key.trim() === "") {
                    console.warn(`Item '${item.item_name || item._row}' has 'estimation_task_key': ${JSON.stringify(item.estimation_task_key)}, which is NOT A VALID STRING or is empty. It will be excluded. Keys MUST be strings like "est_cfl".`);
                    return false;
                }
                if (item.type !== "Energy Used") { // Filter for "Energy Used" type
                // console.log(`Item '${item.item_name || item._row}' skipped: type is '${item.type}', not 'Energy Used'.`);
                return false;
            }
            const isKeyValidAndMatching = validEstimationKeys.has(item.estimation_task_key);
            if (!isKeyValidAndMatching) {
                console.warn(`Item '${item.item_name || item._row}' (Type: ${item.type}) has STRING 'estimation_task_key': '${item.estimation_task_key}', but this key is NOT FOUND in the q18_energy_estimation table. This item will be excluded.`);
            }
            return isKeyValidAndMatching;
        });
        
        console.log(`Found ${potentialItems.length} items in llm_estimates1.json that are of type "Energy Used", have a valid, non-empty STRING 'estimation_task_key', which also matches a 'key' in the q18_energy_estimation table.`);
        
        if (potentialItems.length < NUM_SCENARIOS_TO_SELECT) {
            console.warn(`Cannot select ${NUM_SCENARIOS_TO_SELECT} random scenarios. Only ${potentialItems.length} linkable "Energy Used" items are available. Ensure 'llm_estimates1.json' has enough items with 'estimation_task_key' as a STRING (e.g., "est_cfl") that matches a key in the 'q18_energy_estimation' table definition, AND type is "Energy Used".`);
        }
        
        const shuffled = [...potentialItems].sort(() => 0.5 - Math.random());
        const selectedFullData = shuffled.slice(0, NUM_SCENARIOS_TO_SELECT);
        
        this.currentState.selectedItems = selectedFullData.map(itemData => ({
            item_name: itemData.item_name, 
            effective_correctness: this.determineCorrectness(itemData),
            effective_tone: this.determineTone(itemData.confidence_level)
        }));
        
        console.log("Randomly selected 'Energy Used' items for scenarios (names):", this.currentState.selectedItems.map(s => s.item_name));
    },
    renderQuestionsForSection(sectionId) { 
        const container = document.getElementById(`section-${sectionId}`);
        if (!container) { console.error(`Container not found for section: ${sectionId}`); return; }
        const navButtons = container.querySelector('.navigation-buttons');
        container.querySelectorAll('.question-block').forEach(block => block.remove());
        this.currentState.currentSectionQuestions = Object.values(questions).filter(q => q.section === sectionId);
        
        this.currentState.currentSectionQuestions.forEach(qDef => {
            try {
                const questionTextHtml = qDef.text.replace(/\*\*(.*?)\*\*/g, '<strong>$1</strong>');
                const questionHtml = this.createQuestionHtml({...qDef, text: questionTextHtml });
                if (navButtons) navButtons.insertAdjacentHTML('beforebegin', questionHtml);
                else container.insertAdjacentHTML('beforeend', questionHtml);
                if (qDef.type === 'slider') this.attachSliderListener(container, qDef.id);
            } catch (error) {
                console.error(`Error creating HTML for question ${qDef.id}:`, error);
                const errorHtml = `<div class="question-block" style="border-color:var(--danger-red);"><p style="color:var(--danger-red);">Error loading question: ${qDef.id}</p></div>`;
                if (navButtons) navButtons.insertAdjacentHTML('beforebegin', errorHtml);
                else container.insertAdjacentHTML('beforeend', errorHtml);
            }
        });
    },
    createQuestionHtml(qDef) { 
        if (qDef.type === 'likert') {
            const points = qDef.points || 5;
            let listItems = '';
            for (let i = 1; i <= points; i++) {
                listItems += `<li><input type="radio" id="${qDef.id}-${i}" name="${qDef.id}" value="${i}"><label for="${qDef.id}-${i}" class="option-label">${i}</label></li>`;
            }
            let endpoints = '';
            if (qDef.scale && qDef.scale.length === 2) {
                endpoints = `<div class="scale-endpoints"><span>1 - ${qDef.scale[0]}</span><span>${points} - ${qDef.scale[1]}</span></div>`;
            }
            return `<div class="question-block" id="block-${qDef.id}">
                             <label class="input-group-label" for="${qDef.id}">${qDef.text}</label>
                             <ul class="likert-scale">${listItems}</ul>
                             ${endpoints}
                         </div>`;
            }
            else if (qDef.type === 'slider') {
                const min = qDef.min !== undefined ? qDef.min : 0;
                const max = qDef.max !== undefined ? qDef.max : 100;
                const step = qDef.step !== undefined ? qDef.step : (qDef.id.includes('confidence') ? 10 : 1);
                const initialValue = qDef.id.includes('confidence') ? 50 : Math.round(min + (max - min) / 2);
                const unit = qDef.unit || (qDef.id.includes('confidence') ? '%' : '');
                return `<div class="question-block" id="block-${qDef.id}">
                             <label for="${qDef.id}">${qDef.text}</label>
                              <div class="scale-endpoints"><span>${min}${unit}</span><span>${max}${unit}</span></div>
                             <div class="slider-container">
                                 <input type="range" id="${qDef.id}" name="${qDef.id}" min="${min}" max="${max}" step="${step}" value="${initialValue}" data-unit="${unit}">
                                 <span class="${qDef.id}-value-display slider-value-display">${initialValue}${unit}</span>
                               </div>
                          </div>`;
                }
                else if (qDef.type === 'multiple-choice' || qDef.type === 'true-false') {
                    let listItems = '';
                    qDef.options.forEach(opt => {
                        listItems += `<li><input type="radio" id="${qDef.id}-${opt.value}" name="${qDef.id}" value="${opt.value}"><label for="${qDef.id}-${opt.value}" class="option-label">${opt.text}</label></li>`;
                    });
                    return `<div class="question-block" id="block-${qDef.id}">
                             <label class="input-group-label" for="${qDef.id}">${qDef.text}</label>
                             <ul class="${qDef.type}">${listItems}</ul>
                          </div>`;
                    }
                    else if (qDef.type === 'estimation-table') {
                        let tableRows = '';
                        qDef.items.forEach(item => { 
                            const icon = APPLIANCE_ICONS[item.key] || APPLIANCE_ICONS['default'];
                            tableRows += `<tr>
                                             <td>${icon} ${item.name}</td>
                                             <td><input type="number" id="${item.key}" name="${item.key}" min="0" step="any" pattern="[0-9]*(\.[0-9]+)?"></td>
                                          </tr>`;
                        });
                        const mainLabelIcon = APPLIANCE_ICONS['bulb_reference'] || '💡';
                        return `<div class="question-block" id="block-${qDef.id}">
                              <label class="input-group-label">${mainLabelIcon} ${qDef.text || 'Energy Estimation'}</label>
                              <p>Reference: 100W incandescent bulb = 100 units/hour. Please provide your best guess. You can use whole numbers or decimals.</p>
                              <div class="estimation-table-wrapper">
                                  <table class="estimation-table">
                                      <thead><tr><th>Device</th><th>Your estimate (Units/Hour)</th></tr></thead>
                                      <tbody>${tableRows}</tbody>
                                  </table>
                              </div>
                          </div>`;
                        }
                        else if (qDef.type === 'forced-choice-estimates') { // For scenario task
                            return `<div class="question-block" id="block-${qDef.id}">
                             <label class="input-group-label">${qDef.text}</label>
                             <p>For the <strong>${qDef.itemLabel}</strong>, please choose the estimate you find more accurate:</p>
                             <ul class="forced-choice-estimates">
                                 <li>
                                     <input type="radio" id="${qDef.id}-user" name="${qDef.id}" value="${qDef.userChoiceValue || 'user_estimate'}">
                                     <label for="${qDef.id}-user" class="option-label">Your earlier estimate: <strong>${qDef.userEstimate} units</strong></label>
                                 </li>
                                 <li>
                                     <input type="radio" id="${qDef.id}-ai" name="${qDef.id}" value="${qDef.aiChoiceValue || 'ai_estimate'}">
                                     <label for="${qDef.id}-ai" class="option-label">AI's estimate: <strong>${qDef.aiEstimate} units</strong></label>
                                 </li>
                             </ul>
                         </div>`;
                            }
                            else {
                                console.warn("Unknown or unhandled question type in createQuestionHtml:", qDef.type, "for question:", qDef.id);
                                return `<div class="question-block" id="block-${qDef.id}" style="border-color:var(--danger-red);"><p style="color:var(--danger-red);">...Error loading question type ${qDef.type} for ${qDef.id}...</div>`;
                                }
                            },
                            getItemDataByName(itemName) { 
                                if (!this.currentState.llmEstimatesData) {
                                    console.error("getItemDataByName called but llmEstimatesData is not loaded.");
                                    return null;
                                }
                                return this.currentState.llmEstimatesData.find(item =>
                                item.item_name === itemName || item._row === itemName || item.item_label === itemName);
                            },
                            determineCorrectness(itemData) { 
                                if (!itemData) return 'unknown';
                                const estimate = parseFloat(itemData.llm_estimate);
                                const actual = parseFloat(itemData.actual_value);
                                if (isNaN(estimate) || isNaN(actual)) return 'unknown';
                                if (actual === 0) return estimate === 0 ? 'correct' : 'incorrect';
                                if (itemData.item_name === "Dish washer" && estimate === 2) return 'incorrect';
                                if (itemData.item_name === "Line-dry clothes" && estimate === 10) return 'incorrect';
                                const ratio = estimate / actual;
                                return (ratio >= 0.5 && ratio <= 1.5) ? 'correct' : 'incorrect';
                            },
                            determineTone(confidenceLevel) { 
                                if (typeof confidenceLevel !== 'string') return 'unknown';
                                switch (confidenceLevel.toLowerCase()) {
                                    case 'high': return 'confident';
                                    case 'medium': case 'low': return 'hedged';
                                    default: return 'unknown';
                                }
                            },
                            loadScenario(index) { 
                                if (index >= this.currentState.selectedItems.length || index < 0) {
                                    if (index >= this.currentState.selectedItems.length) {
                                        const debriefingIndex = this.currentState.sections.indexOf('debriefing');
                                        if (debriefingIndex !== -1) this.goToSection(debriefingIndex);
                                        else console.error("Debriefing section not found in config after scenarios.");
                                    }
                                    return;
                                }
                                try {
                                    const selectedItemInfo = this.currentState.selectedItems[index];
                                    if (!selectedItemInfo || !selectedItemInfo.item_name) {
                                        throw new Error(`Selected item info is invalid or missing item_name at scenario index ${index}.`);
                                    }
                                    const itemData = this.getItemDataByName(selectedItemInfo.item_name); 
                                    
                                    if (!itemData) {
                                        throw new Error(`Full data not found in llmEstimatesData for item_name: '${selectedItemInfo.item_name}'. This item might have been filtered out or an issue with llm_estimates1.json structure.`);
                                    }
                                    
                                    this.currentState.currentScenarioItemData = itemData;
                                    this.currentState.scenarioSubStage = 'ai_response';
                                    
                                    const trialPrefix = `trial_${index + 1}`;
                                    this.currentState.participantResponses[`${trialPrefix}_item_name`] = itemData.item_name;
                                    this.currentState.participantResponses[`${trialPrefix}_item_label`] = itemData.item_label || itemData.item_name;
                                    this.currentState.participantResponses[`${trialPrefix}_prompt`] = itemData.prompt;
                                    this.currentState.participantResponses[`${trialPrefix}_actual_value`] = itemData.actual_value;
                                    this.currentState.participantResponses[`${trialPrefix}_llm_estimate`] = itemData.llm_estimate;
                                    this.currentState.participantResponses[`${trialPrefix}_llm_explanation`] = itemData.llm_explanation;
                                    this.currentState.participantResponses[`${trialPrefix}_llm_confidence_score`] = itemData.llm_confidence_score;
                                    this.currentState.participantResponses[`${trialPrefix}_llm_confidence_level`] = itemData.confidence_level;
                                    this.currentState.participantResponses[`${trialPrefix}_effective_correctness`] = selectedItemInfo.effective_correctness; 
                                    this.currentState.participantResponses[`${trialPrefix}_effective_tone`] = selectedItemInfo.effective_tone; 
                                    this.currentState.participantResponses[`${trialPrefix}_item_type`] = itemData.type; 
                                    
                                    if (typeof itemData.estimation_task_key !== 'string' || itemData.estimation_task_key.trim() === "") {
                                        console.error(`CRITICAL ERROR DURING SCENARIO LOAD: Item '${itemData.item_name}' (selected for scenario) has an invalid or missing STRING 'estimation_task_key' in its data from llm_estimates1.json: ${JSON.stringify(itemData.estimation_task_key)}. This item should have been filtered out by selectRandomScenarioItems. The forced-choice comparison will fail. Storing key as 'INVALID_AT_SCENARIO_LOAD'.`);
                                        this.currentState.participantResponses[`${trialPrefix}_estimation_task_key`] = "INVALID_AT_SCENARIO_LOAD";
                                    } else {
                                        this.currentState.participantResponses[`${trialPrefix}_estimation_task_key`] = itemData.estimation_task_key;
                                    }
                                    this.renderCurrentScenarioSubStage();
                                } catch (error) {
                                    console.error(`Error loading scenario item ${index} (Name: '${this.currentState.selectedItems[index]?.item_name || 'unknown'}'):`, error);
                                    alert(`An error occurred loading trial ${index + 1}. Check console. Will attempt to skip this item.`);
                                    this.skipScenarioItem();
                                }
                            },
                            renderCurrentScenarioSubStage() {
                                const itemData = this.currentState.currentScenarioItemData;
                                const subStage = this.currentState.scenarioSubStage;
                                const scenarioIndex = this.currentState.scenarioIndex;
                                const trialPrefix = `trial_${scenarioIndex + 1}`;
                                
                                const scenarioContentContainer = document.getElementById('scenario-content');
                                const scenarioQuestionsContainer = document.getElementById('scenario-questions');
                                const nextButton = document.getElementById('scenario-next-button');
                                
                                if (!itemData || !scenarioContentContainer || !scenarioQuestionsContainer || !nextButton) {
                                    console.error("Scenario DOM elements or currentScenarioItemData missing for renderCurrentScenarioSubStage. ItemData:", itemData);
                                    if (!itemData && scenarioIndex >= 0 && scenarioIndex < this.currentState.selectedItems.length) {
                                        console.error("currentScenarioItemData is null, trying to skip this broken item.");
                                        this.skipScenarioItem();
                                    } else if (itemData && (!scenarioContentContainer || !scenarioQuestionsContainer || !nextButton)) {
                                        alert("A critical error occurred rendering the scenario stage: required HTML elements are missing. Check console.");
                                    }
                                    return;
                                }
                                
                                let adminDebugInfoHtml = '';
                                if (this.currentState.isAdmin) {
                                    adminDebugInfoHtml = `
                    <div class="ai-confidence-display">
                        <strong>Admin-Debug:</strong> 
                        Conf. Score=${itemData.llm_confidence_score?.toFixed(3)}, 
                        Level=${itemData.confidence_level}, 
                        Actual=${itemData.actual_value}
                    </div>`;
                                }
                                
                                if (subStage === 'ai_response') {
                                    const itemKeyForIcon = itemData.estimation_task_key;
                                    const icon = APPLIANCE_ICONS[itemKeyForIcon] || APPLIANCE_ICONS['default'];
                                    scenarioContentContainer.innerHTML = `
                    <h3>Trial ${scenarioIndex + 1} of ${this.currentState.selectedItems.length}: ${icon} ${itemData.item_label || itemData.item_name}</h3>
                    <div class="scenario-box">
                        <div class="scenario-prompt">${itemData.prompt}</div>
                         <div class="ai-response-container">
                            <span class="ai-prefix">Energy-AI-Advisor says:</span>
                            <span class="ai-response-estimate">My estimate is: ${itemData.llm_estimate} units</span>
                            <div class="ai-response-explanation">${itemData.llm_explanation}</div>
                            ${adminDebugInfoHtml}
                         </div>
                    </div>
                `;
                                }
                                scenarioQuestionsContainer.innerHTML = ''; 
                                
                                if (subStage === 'ai_response') {
                                    nextButton.textContent = "Rate AI Confidence";
                                } else if (subStage === 'confidence_rating') {
                                    const confidenceQId = `${trialPrefix}_confidence_in_ai`;
                                    const confidenceQHtml = this.createQuestionHtml({
                                        id: confidenceQId, type: 'slider',
                                        text: 'How confident are you that the AI’s estimate shown above is correct for this scenario?',
                                        min: 0, max: 100, step: 10
                                    });
                                    scenarioQuestionsContainer.innerHTML = confidenceQHtml;
                                    this.attachSliderListener(scenarioQuestionsContainer, confidenceQId);
                                    nextButton.textContent = "Proceed to Choice";
                                } else if (subStage === 'forced_choice') {
                                    const estimationKey = itemData.estimation_task_key; 
                                    let userEstimate = 'N/A (Your estimate not found or item not in prior list)';
                                    
                                    if (typeof estimationKey === 'string' && estimationKey.trim() !== "" && estimationKey !== "INVALID_AT_SCENARIO_LOAD") {
                                        if (typeof this.currentState.participantResponses[estimationKey] !== 'undefined' &&
                                        this.currentState.participantResponses[estimationKey] !== null &&
                                        String(this.currentState.participantResponses[estimationKey]).trim() !== '') {
                                            userEstimate = this.currentState.participantResponses[estimationKey];
                                        } else {
                                            console.warn(`Forced choice: User's prior estimate for key '${estimationKey}' (item: ${itemData.item_name}) is undefined, null, or empty in participantResponses. Displaying default 'N/A'. Participant Responses for this key: ${this.currentState.participantResponses[estimationKey]}`);
                                        }
                                    } else {
                                        console.warn(`Forced choice: 'estimation_task_key' is missing or invalid for item '${itemData.item_name}'. User's prior estimate cannot be retrieved. Key was: '${estimationKey}'. This indicates a problem with the item data in 'llm_estimates1.json' or the filtering logic. Ensure 'estimation_task_key' is a valid STRING in the JSON.`);
                                    }
                                    
                                    const itemKeyForIcon = itemData.estimation_task_key;
                                    const iconForChoiceLabel = APPLIANCE_ICONS[itemKeyForIcon] || APPLIANCE_ICONS['default'];

                                    const forcedChoiceQId = `${trialPrefix}_forced_choice_q`;
                                    const forcedChoiceQHtml = this.createQuestionHtml({
                                        type: 'forced-choice-estimates', id: forcedChoiceQId,
                                        text: 'Comparison of Estimates:',
                                        itemLabel: `${iconForChoiceLabel} ${itemData.item_label || itemData.item_name}`,
                                        userEstimate: userEstimate, aiEstimate: itemData.llm_estimate,
                                        userChoiceValue: 'user_estimate', aiChoiceValue: 'ai_estimate'
                                    });
                                    scenarioQuestionsContainer.innerHTML = forcedChoiceQHtml;
                                    nextButton.textContent = (scenarioIndex === this.currentState.selectedItems.length - 1) ? "Finish Interaction Task" : "Next Item";
                                }
                                this.updateAdminBar();
                            },
                            advanceScenarioStage() { 
                                const currentScenarioIndex = this.currentState.scenarioIndex;
                                const currentSubStage = this.currentState.scenarioSubStage;
                                const itemData = this.currentState.currentScenarioItemData;
                                
                                if (!itemData) {
                                    console.error("Cannot advance scenario stage: currentScenarioItemData is null. Attempting to skip.");
                                    this.skipScenarioItem();
                                    return;
                                }
                                const trialPrefix = `trial_${currentScenarioIndex + 1}`;
                                
                                if (currentSubStage === 'confidence_rating') {
                                    const confidenceInput = document.getElementById(`${trialPrefix}_confidence_in_ai`);
                                    if (confidenceInput) {
                                        this.currentState.participantResponses[`${trialPrefix}_confidence_in_ai`] = confidenceInput.value;
                                    } else { console.warn(`Input not found for ${trialPrefix}_confidence_in_ai when saving.`); }
                                } else if (currentSubStage === 'forced_choice') {
                                    const choiceInput = document.querySelector(`input[name="${trialPrefix}_forced_choice_q"]:checked`);
                                    if (choiceInput) {
                                        this.currentState.participantResponses[`${trialPrefix}_forced_choice_selection`] = choiceInput.value;
                                        const estimationKey = itemData.estimation_task_key;
                                        let userEstimateShown = 'N/A (Not found or key issue)';
                                        if (typeof estimationKey === 'string' && estimationKey.trim() !== "" && estimationKey !== "INVALID_AT_SCENARIO_LOAD") {
                                            if (typeof this.currentState.participantResponses[estimationKey] !== 'undefined' && this.currentState.participantResponses[estimationKey] !== null && String(this.currentState.participantResponses[estimationKey]).trim() !== '') {
                                                userEstimateShown = this.currentState.participantResponses[estimationKey];
                                            }
                                        }
                                        this.currentState.participantResponses[`${trialPrefix}_user_estimate_in_choice`] = userEstimateShown;
                                        this.currentState.participantResponses[`${trialPrefix}_ai_estimate_in_choice`] = itemData.llm_estimate;
                                    } else {
                                        console.warn(`No selection made for ${trialPrefix}_forced_choice_q.`);
                                    }
                                }
                                
                                if (currentSubStage === 'ai_response') {
                                    this.currentState.scenarioSubStage = 'confidence_rating';
                                    this.renderCurrentScenarioSubStage();
                                } else if (currentSubStage === 'confidence_rating') {
                                    this.currentState.scenarioSubStage = 'forced_choice';
                                    this.renderCurrentScenarioSubStage();
                                } else if (currentSubStage === 'forced_choice') {
                                    this.currentState.scenarioIndex++;
                                    if (this.currentState.scenarioIndex < this.currentState.selectedItems.length) {
                                        this.loadScenario(this.currentState.scenarioIndex);
                                    } else {
                                        const debriefingIndex = this.currentState.sections.indexOf('debriefing');
                                        if (debriefingIndex !== -1) this.goToSection(debriefingIndex);
                                        else console.error("Debriefing section not found after scenarios completion.");
                                    }
                                }
                            },
                            attachSliderListener(container, sliderId) { 
                                const slider = container.querySelector(`#${sliderId}`);
                                const valueDisplay = container.querySelector(`.${sliderId}-value-display`);
                                if (slider && valueDisplay) {
                                    const updateSliderDisplay = () => {
                                        const percent = ((parseFloat(slider.value) - parseFloat(slider.min)) / (parseFloat(slider.max) - parseFloat(slider.min))) * 100;
                                        valueDisplay.textContent = slider.value + (slider.dataset.unit || '');
                                        slider.style.background = `linear-gradient(to right, var(--theme-primary-hover), var(--theme-primary-hover) ${percent}%, var(--progress-bar-bg) ${percent}%, var(--progress-bar-bg))`;
                                    };
                                    slider.addEventListener('input', updateSliderDisplay);
                                    updateSliderDisplay();
                                }
                            },
                            skipScenarioItem() { 
                                console.warn(`Admin/Error Handler skipping scenario item at index: ${this.currentState.scenarioIndex}`);
                                this.currentState.scenarioIndex++;
                                if (this.currentState.scenarioIndex < this.currentState.selectedItems.length) {
                                    this.loadScenario(this.currentState.scenarioIndex);
                                } else {
                                    const debriefingIndex = this.currentState.sections.indexOf('debriefing');
                                    if (debriefingIndex !== -1) this.goToSection(debriefingIndex);
                                    else console.error("Debriefing section not found after attempting to skip the last scenario item.");
                                }
                            },
                            validateCurrentSection() { return true; },
                            saveCurrentSectionResponses() { 
                                const currentSectionId = this.currentState.sections[this.currentState.sectionIndex];
                                if (['instructions', 'scenario-task', 'debriefing'].includes(currentSectionId)) return;
                                
                                console.log(`Saving responses for section: ${currentSectionId}`);
                                const container = document.getElementById(`section-${currentSectionId}`);
                                if (!container) { console.warn(`Container for section '${currentSectionId}' not found when trying to save responses.`); return; }
                                
                                const inputs = container.querySelectorAll('input, textarea'); 
                                inputs.forEach(input => {
                                    let id = input.name || input.id;
                                    if (!id) return;
                                    
                                    if (input.type === 'radio') {
                                        if (input.checked) this.currentState.participantResponses[id] = input.value;
                                    } else if (input.type === 'checkbox') {
                                        if (id === 'admin-mode-checkbox') return;
                                        this.currentState.participantResponses[id] = input.checked;
                                    } else {
                                        if ((input.type === 'number' || id.startsWith('est_')) && input.value.trim() === '') {
                                            this.currentState.participantResponses[id] = null; 
                                        } else {
                                            this.currentState.participantResponses[id] = input.value.trim();
                                        }
                                    }
                                });
                                console.log("Current participant responses after saving section:", JSON.parse(JSON.stringify(this.currentState.participantResponses)));
                            },
                            nextSection() { 
                                this.saveCurrentSectionResponses();
                                if (this.currentState.sectionIndex < this.currentState.sections.length - 1) {
                                    this.currentState.sectionIndex++;
                                    this.showSection(this.currentState.sections[this.currentState.sectionIndex]);
                                      this.showStatusMessage("Section Complete");
                                } else { console.log("End of experiment sections reached."); }
                            },
                            skipSection(targetSectionId = null) { 
                                const currentSectionIdBeforeSkip = this.currentState.sections[this.currentState.sectionIndex];
                                console.log(`Admin skipping from section: '${currentSectionIdBeforeSkip}' to target: '${targetSectionId}'`);
                                this.saveCurrentSectionResponses();
                                
                                let targetIndex = -1;
                                if (targetSectionId) {
                                    targetIndex = this.currentState.sections.indexOf(targetSectionId);
                                    if (targetIndex === -1) {
                                        console.error(`Skip target section ID '${targetSectionId}' not found in sections array. Cannot skip.`);
                                        return;
                                    }
                                    if (targetSectionId === 'scenario-task' && this.currentState.selectedItems.length === 0) {
                                        this.selectRandomScenarioItems();
                                        if (this.currentState.selectedItems.length < NUM_SCENARIOS_TO_SELECT) {
                                            alert("Skipping to scenarios failed: Could not select enough valid items. Check 'llm_estimates1.json' for STRING 'estimation_task_key' values (e.g., \"est_cfl\") matching estimation table keys AND type 'Energy Used'. Cannot proceed with skip.");
                                            return;
                                        }
                                    }
                                }
                                
                                if (targetIndex !== -1) {
                                    this.goToSection(targetIndex);
                                } else {
                                    console.warn("SkipSection called without a valid targetSectionId. Attempting to go to next section.");
                                    this.nextSection();
                                }
                            },
                            goToSection(index) { 
                                if (index >= 0 && index < this.currentState.sections.length) {
                                    const currentSectionId = this.currentState.sections[this.currentState.sectionIndex];
                                    if (!['instructions', 'scenario-task', 'debriefing'].includes(currentSectionId)) {
                                        this.saveCurrentSectionResponses();
                                    }
                                    this.currentState.sectionIndex = index;
                                    this.showSection(this.currentState.sections[index]);
                                    this.showStatusMessage("Section Jumped");
                                } else { console.warn("Invalid section index for goToSection:", index); }
                            },
                            populateDebriefing() { 
                                const list = document.getElementById('debrief-clarifications');
                                if (!list) { console.error("Debrief clarifications list element not found."); return; }
                                list.innerHTML = '';
                                if (!this.currentState.selectedItems || this.currentState.selectedItems.length === 0) {
                                    list.innerHTML = '<li>No scenario items were completed or selected. This might indicate an issue with the item data in "llm_estimates1.json" (specifically, missing or mismatched STRING "estimation_task_key" values, incorrect "type", or insufficient items of "type": "Energy Used") or the random selection process.</li>';
                                    return;
                                }
                                this.currentState.selectedItems.forEach((selectedInfo, index) => {
                                    if (!selectedInfo || !selectedInfo.item_name) {
                                        list.innerHTML += `<li>Trial ${index + 1}: Error displaying item data.</li>`;
                                        console.error("Error in populateDebriefing: selectedInfo or item_name missing for trial", index + 1, selectedInfo);
                                        return;
                                    }
                                    const itemData = this.getItemDataByName(selectedInfo.item_name);
                                    if (!itemData) {
                                        list.innerHTML += `<li>Trial ${index + 1}: Full data for item '${selectedInfo.item_name}' not found for debriefing.</li>`;
                                        console.error("Error in populateDebriefing: Full itemData not found for", selectedInfo.item_name);
                                        return;
                                    }
                                    const itemKeyForIcon = itemData.estimation_task_key;
                                    const icon = APPLIANCE_ICONS[itemKeyForIcon] || APPLIANCE_ICONS['default'];
                                    const li = document.createElement('li');
                                    const llmConfText = itemData.llm_confidence_level ? `(LLM Confidence Level: ${itemData.confidence_level})` : '';
                                    li.innerHTML = `<strong>Trial ${index + 1}: ${icon} ${itemData.item_label || itemData.item_name} ${llmConfText}</strong><ul><li>Actual energy use: ${itemData.actual_value} units</li><li>AI's estimate: ${itemData.llm_estimate} units</li></ul>`;
                                    list.appendChild(li);
                                });
                            },
                            displayResults() {
                                        // Check if the results textarea exists in the debriefing section
                                        const resultsArea = document.getElementById('final-results');
                                        if (!resultsArea) {
                                            // If it doesn't exist, create it dynamically
                                            const debriefSection = document.getElementById('section-debriefing');
                                            if (debriefSection) {
                                                const resultsHeader = document.createElement('h3');
                                                resultsHeader.textContent = "Study Data Summary (for review)";
                                                debriefSection.insertBefore(resultsHeader, debriefSection.querySelector('.navigation-buttons'));

                                                const newResultsArea = document.createElement('textarea');
                                                newResultsArea.id = 'final-results';
                                                newResultsArea.rows = 15;
                                                newResultsArea.style.width = '100%';
                                                newResultsArea.readOnly = true;
                                                debriefSection.insertBefore(newResultsArea, debriefSection.querySelector('.navigation-buttons'));
                                                this.displayResults(); // Call again now that the element exists
                                            } else {
                                                console.error("Debriefing section not found, cannot create results area.");
                                            }
                                            return; // Exit because the element wasn't there initially
                                        }

                                        // Now proceed with displaying results
                                        try {
                                            const finalData = {
                                                experimentFramework: "Purdue_Short_Version_v1.1_Mod3_Icons", // Updated version with icons
                                                studyTimestamp: new Date().toISOString(),
                                                isAdminAtEnd: this.currentState.isAdmin, // Log admin state
                                                participantResponses: this.currentState.participantResponses
                                            };
                                            resultsArea.value = JSON.stringify(finalData, null, 2);
                                            console.log("--- FINAL PARTICIPANT RESPONSES (Short Version with Icons) ---");
                                            console.log(JSON.stringify(finalData, null, 2));
                                            console.log("--- END OF DUMP ---");
                                        } catch (error) {
                                            console.error("Error stringifying final results:", error);
                                            resultsArea.value = "Error: Could not display results due to a stringification error. Check console.";
                                        }
                                    },
                            updateAdminBar() { 
                                const adminSectionSpan = document.getElementById('admin-current-section');
                                if (adminSectionSpan) {
                                    let sectionName = "Unknown Section";
                                    if (this.currentState.sectionIndex >= 0 && this.currentState.sectionIndex < this.currentState.sections.length) {
                                        sectionName = this.currentState.sections[this.currentState.sectionIndex].replace(/-/g, ' ').replace(/\b\w/g, l => l.toUpperCase());
                                        if (sectionName === "Energy Knowledge") sectionName = "Energy Estimation";
                                    }
                                    
                                    let suffix = "";
                                    if (this.currentState.sections[this.currentState.sectionIndex] === 'scenario-task' &&
                                    this.currentState.scenarioIndex >= 0 &&
                                    this.currentState.selectedItems && this.currentState.selectedItems.length > 0 &&
                                    this.currentState.scenarioIndex < this.currentState.selectedItems.length) {
                                        const subStageDisplay = this.currentState.scenarioSubStage.replace(/_/g, ' ');
                                        suffix = ` (Item ${this.currentState.scenarioIndex + 1} of ${this.currentState.selectedItems.length}, Stage: ${subStageDisplay})`;
                                    }
                                    adminSectionSpan.textContent = sectionName + suffix;
                                }
                            },
                            updateProgressBar() { 
                                const progressBar = document.getElementById('progress-bar');
                                const progressText = document.getElementById('progress-text');
                                if (progressBar && progressText) {
                                    const currentMainSectionIndex = this.currentState.sectionIndex;
                                    const totalMainSections = this.currentState.totalSections;
                                    
                                    let overallProgress = 0;
                                    if (totalMainSections > 1) {
                                        overallProgress = (currentMainSectionIndex / (totalMainSections - 1)) * 100;
                                    }
                                    
                                    if (this.currentState.sections[currentMainSectionIndex] === 'scenario-task' &&
                                    this.currentState.selectedItems && this.currentState.selectedItems.length > 0 &&
                                    totalMainSections > 1) {
                                        const scenarioBaseSectionIndex = this.currentState.sections.indexOf('scenario-task');
                                        const scenarioBaseProgress = (scenarioBaseSectionIndex / (totalMainSections - 1)) * 100;
                                        const scenarioSectionSpan = (1 / (totalMainSections - 1)) * 100;
                                        
                                        let subStageCompletion = 0;
                                        if (this.currentState.scenarioSubStage === 'confidence_rating') subStageCompletion = 1/3;
                                        else if (this.currentState.scenarioSubStage === 'forced_choice') subStageCompletion = 2/3;
                                        
                                        const itemProgress = (this.currentState.scenarioIndex + subStageCompletion) / this.currentState.selectedItems.length;
                                        overallProgress = scenarioBaseProgress + (itemProgress * scenarioSectionSpan);
                                    }
                                    
                                    const displayPercentage = Math.max(0, Math.min(100, overallProgress));
                                    progressBar.style.width = `${displayPercentage}%`;
                                    
                                    let currentSectionDisplayName = "Start";
                                    if (currentMainSectionIndex >= 0 && currentMainSectionIndex < totalMainSections) {
                                        currentSectionDisplayName = this.currentState.sections[currentMainSectionIndex]
                                        .replace(/-/g, ' ').replace(/\b\w/g, l => l.toUpperCase());
                                        if (currentSectionDisplayName === "Energy Knowledge") currentSectionDisplayName = "Energy Estimation";
                                        if (currentSectionDisplayName === "Scenario Task") currentSectionDisplayName = "AI Interaction";
                                    }
                                    
            let progressMessage = "";
            if (currentMainSectionIndex === totalMainSections - 1) {
                progressBar.style.width = "100%";
                progressMessage = "Study Complete";
            } else if (currentMainSectionIndex === 0 && this.currentState.sections[0] === "instructions") {
                progressBar.style.width = "0%";
                progressMessage = `Section: ${currentSectionDisplayName} (1 of ${totalMainSections})`;
            } else {
                progressMessage = `Section: ${currentSectionDisplayName} (${currentMainSectionIndex + 1} of ${totalMainSections})`;
            }
            progressText.textContent = `${progressMessage} - ${displayPercentage.toFixed(0)}%`;

                                    }
                                }
                            }
                        };
                        
                        document.addEventListener('DOMContentLoaded', () => {
                            window.experiment = experiment;
                            experiment.init();
                        });
