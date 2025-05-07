// --- Data Simulation ---

const householdProfiles = [
    {
        id: 1,
        name: "Midwest Homeowner",
        description: "You own a 1800 sq ft single-family house in Indiana (4 occupants). It has a gas furnace (10 yrs old), central AC (8 yrs old), electric water heater (5 yrs old), standard refrigerator, washer/dryer.",
        baselineCost: 160, // $/month
        baselineKWh: 1000, // kWh/month electricity (approx)
        baselineTherms: 50 // therms/month gas (approx)
    },
    {
        id: 2,
        name: "Southern Apartment Renter",
        description: "You rent an 800 sq ft apartment in Texas (1 occupant). It has central AC (building system), electric heat (rarely used), an older refrigerator, and standard lighting/electronics. Water heating is electric (included in rent potentially).",
        baselineCost: 80, // $/month electricity
        baselineKWh: 600 // kWh/month electricity
    },
     {
        id: 3,
        name: "Older Large House",
        description: "You own a 2500 sq ft older house (built 1960s) in a moderate climate (e.g., Virginia) with 3 occupants. It has an oil furnace, window AC units, an electric water heater, two refrigerators (one old), and drafty windows.",
        baselineCost: 220, // $/month combined
        baselineKWh: 1200, // kWh/month electricity (approx)
        baselineOil: 60 // gallons/month oil (approx)
    }
];

const savingsGoal = {
    type: '%', // Can be '%', '$', 'kWh'
    value: 15,
    unit: '%'
};

// Pre-generated AI Responses (Replace with more varied examples as needed)
const preGeneratedResponses = {
    generatorPlans: {
        1: `Based on your Midwest Homeowner profile and a 15% savings goal (~$24/month), here's a draft plan:
1.  **Programmable Thermostat:** Set back 5-8°F overnight and when away. (Est. Savings: $10-$15/month).
2.  **Wash Laundry in Cold Water:** Use cold water for most loads. (Est. Savings: $3-$5/month).
3.  **LED Lighting Upgrade:** Replace the 5 most-used incandescent bulbs with LEDs. (Est. Savings: $2-$4/month).
4.  **Reduce Shower Time:** Shorten showers by 2 minutes each. (Est. Savings: $3-$6/month, depends on water heater).
5.  **Air Seal Leaks:** Check for drafts around windows/doors and seal with caulk/weatherstripping. (Est. Savings: $2-$5/month).
*Total Estimated Savings: ~$20-$35/month*`,
        2: `For your Southern Apartment and a 15% savings goal (~$12/month):
1.  **AC Thermostat Adjustment:** Increase setting by 2-3°F (e.g., 75°F to 78°F). (Est. Savings: $5-$8/month).
2.  **Use Fans for Cooling:** Rely more on ceiling or portable fans instead of AC when possible. (Synergistic with #1).
3.  **Unplug Electronics:** Ensure TVs, game consoles, chargers are unplugged or on power strips turned off when not in use. (Est. Savings: $1-$3/month).
4.  **Shorter Showers / Less Hot Water:** Reduce hot water usage. (Est. Savings: $2-$4/month).
*Total Estimated Savings: ~$8-$17/month*`,
        3: `For the Older Large House and a 15% savings goal (~$33/month):
1.  **Heating Oil Tune-up & Thermostat:** Get furnace serviced annually. Use programmable thermostat for setbacks. (Est. Savings: $10-$20/month oil).
2.  **Address Second Refrigerator:** If the older fridge isn't essential, unplug it. (Est. Savings: $5-$10/month electricity).
3.  **Window AC Management:** Use window units only in occupied rooms. Clean filters regularly. (Est. Savings: $5-$10/month electricity).
4.  **Insulate Water Heater Tank:** If accessible, add an insulation blanket. (Est. Savings: $2-$4/month electricity).
5.  **Draft Sealing:** Address drafty windows with film or heavy curtains. Seal gaps. (Est. Savings: $5-$10/month combined).
*Total Estimated Savings: ~$27-$54/month*`
    },
    criticCritiques: {
        genericLowImpact: `Thanks for your draft! It includes several common actions like managing lights and electronics. While helpful, these typically offer relatively small savings compared to the goal. Your plan might fall short. Consider adding at least one action targeting a major energy user like heating, cooling, or water heating for a bigger impact. For example, adjusting the thermostat or improving insulation often yields significant savings.`,
        genericGoodStart: `This is a good starting point! You've identified some useful actions. To ensure you reach the 15% target, double-check your savings estimates against typical values. Also, consider if there are any other major energy areas (like water heating or major appliances) you could address to make the plan even stronger.`
    },
    collaboratorDialogues: [ // Example sequence for a simple chat
        { sender: 'ai', text: "Hi! I'm here to help you brainstorm a plan to save 15% on energy costs. What areas of energy use are you thinking about first?" },
        // User might type: "Maybe heating?"
        { sender: 'ai', text: "Okay, heating is often a big one! For your profile, adjusting the thermostat is usually effective. Setting it back 5-8°F when sleeping or away can save around 5-10% on heating costs alone. Does that sound feasible?" },
        // User might type: "Yes, what else?"
        { sender: 'ai', text: "Great. Another major area is often water heating. Simple things like washing laundry in cold water or taking slightly shorter showers can add up. Would you like estimated savings for those?" }
        // ... dialogue continues
    ],
    genericExpertFeedback: `Expert Tip: Remember that heating, cooling, and water heating typically account for the largest shares of household energy use. Actions targeting these systems often provide the biggest savings. Also, consider improvements to insulation or appliance efficiency for long-term gains. Ensure your plan addresses at least one major energy user.`,
    heuristicFeedbacks: {
        curtailmentBias: `Feedback: I notice your plan focuses heavily on 'turning things off' or using things less (curtailment). This is a common approach (sometimes called 'curtailment bias'), but often efficiency improvements save more energy in the long run. For example, replacing old bulbs with LEDs saves energy every time they're on. Consider adding one efficiency action alongside your curtailment steps.`,
        visibilityBias: `Feedback: It looks like your plan emphasizes frequently seen items like lights and small electronics. It's easy to focus on these (a common 'visibility bias'), but they usually make up a small fraction of total energy use compared to less visible systems like your furnace, AC, or water heater. Targeting one of those larger systems might be needed to reach your goal.`,
        heatingCoolingNeglect: `Feedback: Your plan includes good ideas for appliances/lighting, but doesn't seem to address heating or cooling. Many people overlook HVAC (sometimes called 'heating/cooling neglect'), but it's often the single biggest energy consumer. Even small adjustments to thermostat settings, filter changes, or sealing drafts around vents can make a big difference. Could you add an action related to HVAC?`,
        // Add more heuristic feedback examples here
        defaultTargeted: `Feedback: Looking at your plan and justifications, one common area people sometimes overlook is differentiating between high-impact and low-impact actions. Make sure your plan includes actions that target the biggest energy users in your home profile (like heating, cooling, water heating, or major appliances) to maximize savings.` // Fallback
    }
};

let currentProfile;
let currentDialogueTurn = 0; // For collaborator demo

// --- Tab Handling ---
function openTab(tabId) {
    // Hide all tab content
    document.querySelectorAll('.tab-content').forEach(content => {
        content.style.display = 'none';
        content.classList.remove('active');
    });
    // Deactivate all tab buttons
    document.querySelectorAll('.tab-button').forEach(button => {
        button.classList.remove('active');
    });

    // Show the selected tab content
    document.getElementById(tabId).style.display = 'block';
    document.getElementById(tabId).classList.add('active');

    // Activate the clicked button
    // Find button whose onclick corresponds to the tabId
    document.querySelectorAll('.tab-button').forEach(button => {
        if (button.getAttribute('onclick') === `openTab('${tabId}')`) {
            button.classList.add('active');
        }
    });

    // Initialize demos if they are opened for the first time or re-selected
    if (tabId === 'tab-task1') {
        loadTask1Demo(); // Load default or last selected state
    } else if (tabId === 'tab-task2') {
        loadTask2Demo(); // Load default or last selected state
    }
}

// --- Task 1: LLM Roles Demo Logic ---
function loadTask1Demo() {
    // Select a random profile if none selected or explicitly reloading
    currentProfile = householdProfiles[Math.floor(Math.random() * householdProfiles.length)];

    // Display profile and goal
    document.getElementById('task1-profile').innerHTML = `<strong>Profile: ${currentProfile.name}</strong><br>${currentProfile.description}`;
    let goalValue = savingsGoal.value;
    let goalUnit = savingsGoal.unit;
    let goalCostEquivalent = Math.round(currentProfile.baselineCost * (savingsGoal.value / 100)); // Example calculation
    document.getElementById('task1-goal').innerHTML = `<strong>Your Goal:</strong> Reduce total energy costs by <strong>${goalValue}${goalUnit}</strong> (approx. $${goalCostEquivalent}/month).`;

    // Reset output message
    document.getElementById('task-output').textContent = '';

    // Setup based on dropdown selection
    const selectedCondition = document.getElementById('task1-condition').value;
    setupTask1Condition(selectedCondition);
}

function setupTask1Condition(condition) {
    // Hide all condition-specific UIs
    document.querySelectorAll('#task1-workspace .condition-ui').forEach(ui => ui.style.display = 'none');

    // Show the selected UI
    const uiToShow = document.getElementById(`task1-${condition}-ui`);
    if (uiToShow) {
        uiToShow.style.display = 'block';
    } else {
        console.error("UI element not found for condition:", condition);
        return; // Exit if UI element doesn't exist
    }


    // Condition-specific setup
    if (condition === 'generator') {
        document.getElementById('task1-generator-plan').value = preGeneratedResponses.generatorPlans[currentProfile.id] || "Error: No pre-generated plan for this profile.";
    } else if (condition === 'critic') {
        // Reset critic state
        document.getElementById('task1-critic-draft').value = '';
        document.getElementById('task1-critic-feedback-area').style.display = 'none';
        document.getElementById('task1-critic-feedback-text').textContent = '';
        document.getElementById('task1-critic-revision').value = '';
        document.getElementById('task1-critic-submit-draft').disabled = false;
    } else if (condition === 'collaborator') {
        // Reset collaborator state
        document.getElementById('task1-collaborator-chatlog').innerHTML = '';
        currentDialogueTurn = 0;
        addChatMessage('ai', preGeneratedResponses.collaboratorDialogues[currentDialogueTurn].text);
        currentDialogueTurn++;
         document.getElementById('task1-collaborator-input').value = '';
         document.getElementById('task1-collaborator-finalplan').value = '';
    } else if (condition === 'control') {
         document.getElementById('task1-control-plan').value = '';
    }
}

function getCriticFeedback() {
    const draftPlan = document.getElementById('task1-critic-draft').value;
    if (!draftPlan.trim()) {
        alert("Please enter your draft plan first.");
        return;
    }
    // Simulate getting feedback (use a pre-generated one)
    // Simple logic: if plan is short, give low impact critique, else good start critique
    const critique = draftPlan.length < 100 ? preGeneratedResponses.criticCritiques.genericLowImpact : preGeneratedResponses.criticCritiques.genericGoodStart;

    document.getElementById('task1-critic-feedback-text').textContent = critique;
    document.getElementById('task1-critic-revision').value = draftPlan; // Pre-fill revision area
    document.getElementById('task1-critic-feedback-area').style.display = 'block';
    document.getElementById('task1-critic-submit-draft').disabled = true; // Prevent submitting again
}

function sendChatMessage() {
    const userInput = document.getElementById('task1-collaborator-input').value;
    if (!userInput.trim()) return;

    addChatMessage('user', userInput);
    document.getElementById('task1-collaborator-input').value = '';

    // Simulate AI response based on turn
    if (currentDialogueTurn < preGeneratedResponses.collaboratorDialogues.length) {
        setTimeout(() => { // Add slight delay for realism
             addChatMessage('ai', preGeneratedResponses.collaboratorDialogues[currentDialogueTurn].text);
             currentDialogueTurn++;
        }, 500);
    } else {
         setTimeout(() => {
            addChatMessage('ai', "I think we've covered the main points. Feel free to compile your final plan below when you're ready.");
         }, 500);
    }
}

function addChatMessage(sender, text) {
    const chatlog = document.getElementById('task1-collaborator-chatlog');
    const messageDiv = document.createElement('div');
    messageDiv.classList.add('chat-message', sender);
    messageDiv.textContent = text;
    chatlog.appendChild(messageDiv);
    chatlog.scrollTop = chatlog.scrollHeight; // Auto-scroll
}


// --- Task 2: Heuristic Feedback Demo Logic ---
function loadTask2Demo() {
    currentProfile = householdProfiles[Math.floor(Math.random() * householdProfiles.length)];

    document.getElementById('task2-profile').innerHTML = `<strong>Profile: ${currentProfile.name}</strong><br>${currentProfile.description}`;
    let goalValue = savingsGoal.value;
    let goalUnit = savingsGoal.unit;
    let goalCostEquivalent = Math.round(currentProfile.baselineCost * (savingsGoal.value / 100)); // Example calculation
    document.getElementById('task2-goal').innerHTML = `<strong>Your Goal:</strong> Reduce total energy costs by <strong>${goalValue}${goalUnit}</strong> (approx. $${goalCostEquivalent}/month).`;

    // Reset state
    document.getElementById('task2-draft-plan-justifications').value = '';
    document.getElementById('task2-feedback-area').style.display = 'none';
    document.getElementById('task2-feedback-text').textContent = '';
    document.getElementById('task2-revision').value = '';
    document.getElementById('task2-submit-draft').disabled = false;
     document.getElementById('task2-output').textContent = '';

    // No immediate condition setup needed, happens after draft submission
}

function getHeuristicFeedback() {
    const draftPlanJust = document.getElementById('task2-draft-plan-justifications').value;
     if (!draftPlanJust.trim()) {
        alert("Please enter your draft plan and justifications first.");
        return;
    }

    const selectedCondition = document.getElementById('task2-condition').value;
    let feedbackText = '';

    if (selectedCondition === 'control') {
        feedbackText = "Thank you for your draft. Please take a moment to review your plan and justifications, then enter any revisions below.";
    } else if (selectedCondition === 'generic') {
        feedbackText = preGeneratedResponses.genericExpertFeedback;
    } else if (selectedCondition === 'targeted') {
        // --- SIMULATE HEURISTIC INFERENCE ---
        // In a real study, this involves LLM analysis.
        // For demo: Simple keyword check or random selection.
        let inferredHeuristic = 'defaultTargeted'; // Fallback
        const lowerCasePlan = draftPlanJust.toLowerCase();
        if (lowerCasePlan.includes('light') || lowerCasePlan.includes('charger') || lowerCasePlan.includes('unplug')) {
            inferredHeuristic = 'visibilityBias';
        } else if (lowerCasePlan.includes('turn off') && !lowerCasePlan.includes('thermostat') && !lowerCasePlan.includes('efficiency')) {
             inferredHeuristic = 'curtailmentBias';
        } else if (!lowerCasePlan.includes('heat') && !lowerCasePlan.includes('cool') && !lowerCasePlan.includes('thermostat') && !lowerCasePlan.includes('furnace') && !lowerCasePlan.includes('ac ')) {
            inferredHeuristic = 'heatingCoolingNeglect';
        }
        // Add more inference rules or random selection if needed

        feedbackText = preGeneratedResponses.heuristicFeedbacks[inferredHeuristic] || preGeneratedResponses.heuristicFeedbacks.defaultTargeted;
         // Add a note about which heuristic was inferred for demo purposes
         feedbackText = `[Demo Note: Inferring '${inferredHeuristic}']\n\n` + feedbackText;

    }

    document.getElementById('task2-feedback-text').innerHTML = feedbackText.replace(/\n/g, '<br>'); // Use innerHTML to render line breaks
    document.getElementById('task2-revision').value = draftPlanJust; // Pre-fill revision area
    document.getElementById('task2-feedback-area').style.display = 'block';
    document.getElementById('task2-submit-draft').disabled = true;
}

// --- General Functions ---
function submitPlan(taskPrefix) {
    let planData;
    if (taskPrefix === 'task1-control') planData = document.getElementById('task1-control-plan').value;
    else if (taskPrefix === 'task1-generator') planData = document.getElementById('task1-generator-plan').value;
    else if (taskPrefix === 'task1-critic') planData = document.getElementById('task1-critic-revision').value;
     else if (taskPrefix === 'task1-collaborator') planData = document.getElementById('task1-collaborator-finalplan').value;
    else if (taskPrefix === 'task2') planData = document.getElementById('task2-revision').value;

    if (planData && planData.trim()) {
        console.log(`--- ${taskPrefix} Final Plan Submitted ---`);
        console.log(planData);
         const outputEl = document.getElementById(taskPrefix.startsWith('task1') ? 'task-output' : 'task2-output');
         if(outputEl) outputEl.textContent = `Plan submitted successfully for ${taskPrefix}! (Check console for plan text)`;
         alert(`Plan submitted for ${taskPrefix}! (See browser console for plan text). In a real experiment, data would be saved.`);

    } else {
        alert("Please ensure your final plan is entered before submitting.");
    }
}

function showActionDatabase() {
     document.getElementById('action-db-popup').style.display = 'block';
}

function hideActionDatabase() {
     document.getElementById('action-db-popup').style.display = 'none';
}

// --- Initialization ---
function initDemo() {
    // Set initial active tab
    openTab('tab-task1');
     // Add listener to condition dropdowns to reload demo when changed
    document.getElementById('task1-condition').addEventListener('change', loadTask1Demo);
    document.getElementById('task2-condition').addEventListener('change', loadTask2Demo);


}

// Run initialization when the page loads
window.onload = initDemo;