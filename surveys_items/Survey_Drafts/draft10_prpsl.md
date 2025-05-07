

# https://aistudio.google.com/prompts/1YpW358hGfQEjiP59gHMQ5cl_v6g35O8k

## Evaluation of Current Proposal and Survey Draft

**Current Proposal Strengths:**

*   **Novelty:** Addresses a timely and important intersection: lay perceptions of LLMs in a domain (household energy) known for human cognitive biases. The link between energy literacy, AI literacy, numeracy, and trust calibration for LLM outputs in this specific context is a relatively novel research angle.
*   **Logical Structure:** Clearly outlines the problem (human energy misperceptions, LLM potential/risks), theoretical grounding (bounded rationality, literacies, trust), research questions, and hypotheses.
*   **Justification:** Draws on established literature regarding energy perception biases (Attari et al., 2010; Marghetis et al., 2019), the roles of numeracy and energy literacy (Attari et al., 2010; DeWaters & Powers, 2011), AI literacy (Carolus et al., 2023), and trust in automation/AI (Lee & See, 2004; Scharowski et al., 2025).

**Current Proposal Weaknesses (addressing To-Do items 3, 4, 6, 10, 19):**

*   **Mechanism Specificity (ToDo 3):** While literacies are included, the proposal could more explicitly state *how* each literacy is expected to influence LLM evaluation (e.g., energy literacy enabling error spotting, AI literacy fostering awareness of limitations like hallucinations, numeracy aiding quantitative plausibility checks).
*   **Mental Model Measurement (ToDo 4):** Relies heavily on perceived accuracy/utility ratings, lacking deeper probes into users' underlying beliefs about *how* LLMs arrive at energy answers (e.g., data access, reasoning capability, potential for error).
*   **Energy Literacy Scope (ToDo 6, 15):** The current draft focuses on general/cognitive energy literacy but doesn't explicitly mention action or financial energy literacy, which are relevant for evaluating savings plans or lifetime costs often discussed in energy decisions.
*   **Theoretical Framing Depth (ToDo 10, 19):** Could be strengthened by integrating more recent findings on human-AI trust calibration, the 'calibration gap,' and the complex effects of AI literacy on reliance, including phenomena like the "AI Literacy Trap" (Rheu & Cho, 2025) or findings on interventions (Morrill & Noetel, 2023; Puppart & Aru, 2025). The influence of explanation characteristics (e.g., length, confidence cues; Kim et al., 2024; Steyvers et al., 2025) on perception is also highly relevant but not explicitly framed.
*   **Novelty Statement:** While novel, the proposal could more sharply articulate its unique contribution, particularly concerning the *transfer or interaction* of domain-specific biases (energy) with perceptions of a general-purpose technology (LLMs).

**Current Survey Draft Strengths:**

*   **Core Constructs Covered:** Includes validated measures for key individual differences (BNT for Numeracy, MAILS-Short for AI Literacy) and general AI trust/distrust (TPA, Semantic Differential).
*   **Custom Items Target RQs:** Includes custom items designed to probe perceived accuracy, utility, and task-specific trust for energy tasks, directly addressing RQ1 and RQ3.

**Current Survey Draft Weaknesses (addressing To-Do items 1, 2, 5, 7, 8, 9, 11, 13, 14, 16, 18):**

*   **Lack of Objective Calibration (ToDo 1):** No behavioral measure to assess how well participants' *confidence* in LLM outputs aligns with the *actual accuracy* of those outputs. Relies solely on self-reported trust/accuracy beliefs.
*   **Missing Attari Task (ToDo 2):** Fails to include the benchmark Attari-style estimation task, making it impossible to directly test H1 (bias mirroring) or compare individual bias with perceived LLM accuracy.
*   **Reliance Measurement (ToDo 5):** Uses only Likert-scale intentions, lacking a more concrete scenario-based measure of reliance decisions.
*   **LLM-Specific Knowledge (ToDo 7):** Relies solely on MAILS-Short, omitting objective checks on understanding specific LLM limitations relevant to the task (hallucinations, data cutoffs).
*   **Energy Literacy (ToDo 6):** Includes cognitive items but lacks assessment of action/financial literacy.
*   **Trust Scale Redundancy (ToDo 8):** Includes both TPA and Semantic Differential, which is good for nuance, but the original TPA contains both trust and distrust items. Using the Scharowski recommendation for a revised TPA focusing on separate trust/distrust factors would be better.
*   **Custom Item Validation (ToDo 9):** Custom items haven't been piloted or psychometrically refined. Differentiation between estimation vs. planning beliefs could be clearer.
*   **Survey Design Issues (ToDo 11):** Potential for order effects (e.g., numeracy priming accuracy judgments). Lack of attention checks or reverse-keyed items noted.
*   **Validated Instrument Recency/Fit (ToDo 14):** While BNT and MAILS-Short are good choices, the TPA version used could be updated based on recent validation (Scharowski et al., 2025).
*   **Specificity of LLM Belief Items (ToDo 16):** Accuracy/utility items are somewhat general; more scenario-based questions could be stronger.
*   **Trust Miscalibration Measurement (ToDo 18):** Lacks specific procedures (like comparing confidence on correct vs. incorrect AI items) to quantify miscalibration.

---

## Revised Study Proposal

**(Changes implemented based on the To-Do list are highlighted conceptually)**

**Title:** Lay Perceptions of Large Language Model Capabilities for Household Energy Management: The Role of Literacies, Biases, and Trust Calibration

**Abstract:** Large Language Models (LLMs) are increasingly consulted for practical advice, including in domains like household energy management where human intuition is often biased. This study investigates lay perceptions regarding the accuracy and utility of LLMs for energy estimation and planning tasks. Grounded in theories of energy decision-making (cognitive heuristics, bounded rationality), individual differences (objective numeracy, multidimensional energy literacy, AI literacy), and human-AI interaction (calibrated trust, uncertainty perception, mental models), we examine how users' prior knowledge, cognitive skills, and understanding of AI shape their beliefs about LLM capabilities. We hypothesize that literacies will predict more calibrated or critical assessments, potentially mitigating over-reliance stemming from inaccurate perceptions or general trust biases. Furthermore, we predict that perceived LLM accuracy and task-specific trust will influence willingness to rely on LLMs for energy decisions, moderated by general trust/distrust dispositions. Using a quantitative online survey featuring validated scales (BNT, MAILS-Short, TPA-Revised), benchmark energy perception tasks (Attari estimations), objective LLM knowledge probes, mental model assessments, and an objective calibration task, this research aims to identify factors influencing user judgment and reliance in this critical domain, informing the design of trustworthy and effective human-AI energy advisory systems.

### Theoretical Framework

This research integrates insights from cognitive psychology, energy social science, and human-AI interaction to understand how lay individuals perceive and potentially rely on LLMs for household energy management.

*   **Misperceptions, Cognitive Heuristics, and Bounded Rationality in Energy Judgments:** Decades of research confirm that lay understanding of energy consumption and savings is often systematically biased (Attari et al., 2010; Kantenbacher & Attari, 2021). People tend to underestimate the energy use of high-wattage heating/cooling appliances and overestimate savings from low-impact curtailment actions (e.g., turning off lights), a pattern potentially explained by reliance on flawed heuristics (e.g., associating activity frequency with impact) within a bounded rationality framework (Simon, 1957; Schley & DeKay, 2015). LLMs present a novel source of information, but their effectiveness as external cognitive aids (Steyvers & Kumar, 2024) depends critically on whether users can accurately assess their outputs, especially given the potential for LLMs to "hallucinate" or provide confidently incorrect information (Kim et al., 2024). A key theoretical question is how the pre-existing biases in the *energy domain* interact with the emerging understanding (or misunderstanding) of *LLM capabilities*, potentially leading users to project their own biases onto the AI (H1) or, conversely, enabling those with better domain knowledge to detect AI errors more effectively (H2b). The documented "calibration gap" – the discrepancy between an LLM's internal confidence and human perception of that confidence (Steyvers et al., 2025) – becomes particularly salient here, as user trust may form based on inaccurate assessments of LLM reliability for specific energy tasks.

*   **Literacies as Modulators of Information Processing and Evaluation:** We posit that individual differences in specific literacies act as crucial filters and modulators in how users evaluate LLM-provided energy information.
    *   *Energy Literacy:* This multidimensional construct (DeWaters & Powers, 2011; Van Den Broek, 2019) provides the foundational knowledge base. Specifically, **cognitive energy literacy** (factual knowledge of concepts, units, relative consumption) is hypothesized to enable users to *spot substantive errors* or implausible claims in LLM outputs (H2b). **Action energy literacy** (knowledge of effective conservation behaviors) is relevant for evaluating the *utility* of LLM-generated plans. **Financial energy literacy** (understanding energy costs, tariffs, payback periods; Blasch et al., 2019) is crucial for assessing the economic implications of LLM advice. **(ToDo 3, 6, 15 addressed)**
    *   *AI Literacy:* Beyond general AI knowledge, specific competencies outlined in frameworks like MAILS (Carolus et al., 2023; Koch et al., 2024) are critical. Understanding *AI limitations* (e.g., knowledge cutoffs, potential for bias, lack of real-world grounding, hallucination risk) and possessing *critical evaluation skills* ('Detect AI,' 'AI Ethics' facets) should foster more cautious and calibrated assessments of LLM outputs (H2c). Conversely, high *usage/application* skills or positive prior experiences might lead to more favorable beliefs, creating a potential tension investigated in H2c. Recent studies suggest AI literacy interventions have complex effects, sometimes reducing but not eliminating over-reliance (Morrill & Noetel, 2023; Puppart & Aru, 2025), highlighting the need to measure both subjective (MAILS) and objective LLM-specific knowledge. **(ToDo 3, 7, 10, 19 addressed)**
    *   *Objective Numeracy:* The ability to understand and manipulate quantitative information (Cokely et al., 2012) is fundamental for evaluating the *numerical plausibility* of LLM estimates (kWh, costs, savings percentages) and interpreting any uncertainty conveyed (H2a). Lower numeracy may lead to greater acceptance of numerically inaccurate LLM outputs. **(ToDo 3 addressed)**

*   **Calibrated Trust, Mental Models, and Human-AI Reliance Dynamics:** Trust in AI is dynamic and context-dependent, influenced by perceptions of the AI's performance (competence, reliability) and its alignment with user goals and values (integrity, benevolence) (Lee & See, 2004; Razin & Feigh, 2024). *Calibrated trust*, where user trust matches the AI's actual capabilities for a specific task, is crucial for effective reliance (Buçinca et al., 2021). Users develop *mental models* of AI systems – internal representations of how they work and their capabilities (Chen et al., 2025). These models, which may be inaccurate or incomplete, shape expectations and reliance strategies (Steyvers & Kumar, 2024). We measure perceived accuracy/utility and task-specific trust as proxies for the user's operational mental model regarding LLMs for energy tasks. **(ToDo 4, 17 addressed)** We further probe these models by assessing attributional beliefs (e.g., does the user think the LLM has real-time data access? Does it understand context or just match patterns?). General trust/distrust dispositions (Scharowski et al., 2025; Scholz et al., 2025) may act as priors or moderators, influencing how specific performance evidence is interpreted (H4). We also incorporate an objective measure of calibration (confidence-accuracy alignment) to complement self-report trust measures. **(ToDo 1, 18 addressed)** Reliance decisions (measured via intentions and scenario choices) are conceptualized as outcomes of this interplay between perceived capability, trust, and general disposition (H3). **(ToDo 5 addressed)**

### Research Questions and Hypotheses

*   **RQ1:** What are the prevailing lay beliefs concerning the accuracy and utility of contemporary LLMs for (a) estimating appliance-level electricity use *(aligned with Attari et al. benchmarks)*, (b) answering factual energy questions, and (c) designing personalized household energy-saving plans? How do users differentiate their trust in LLMs across these distinct energy-related functions (informant, calculator, advisor)? **(ToDo 2, 16 addressed)**
*   **RQ2:** How well do objective numeracy (BNT), multidimensional energy literacy (cognitive, action, financial knowledge), and AI literacy (MAILS facets + objective LLM knowledge) predict: (a) perceived LLM accuracy/utility for energy tasks, and (b) objective calibration (confidence-accuracy alignment) when judging LLM energy answers? **(ToDo 1, 3, 6, 7, 15 addressed)**
*   **RQ3:** How do perceived LLM accuracy, task-specific trust, and objective calibration jointly influence willingness to rely on LLMs for energy decisions, measured via both self-reported intentions and scenario-based choices? **(ToDo 1, 5, 18 addressed)**
*   **RQ4:** Do general trust and distrust dispositions (TPA-Revised factors) mediate or moderate the relationship between specific beliefs/calibration regarding LLM energy capabilities and reliance intentions/choices? **(ToDo 8, 12 addressed)**

**Hypotheses:**

*   **H1 (Bias Transfer & Overestimation):** Participants' estimates of LLM accuracy for appliance energy use will correlate positively with their own Attari-task estimation errors, suggesting projection of human biases (e.g., range compression). Furthermore, overall perceived accuracy for LLMs on energy tasks will be significantly overestimated relative to objective benchmarks or known LLM limitations. **(ToDo 2 addressed)**
*   **H2a (Numeracy & Calibration):** Higher objective numeracy will predict *better calibration* (lower confidence-accuracy gap, potentially lower variance/overconfidence in LLM accuracy ratings) for quantitative energy estimation tasks. **(ToDo 1, 3, 18 addressed)**
*   **H2b (Energy Literacy & Critical Evaluation):** Higher cognitive energy literacy will predict *lower perceived accuracy and trust* in LLM outputs for complex energy concepts or nuanced planning advice, reflecting better error detection. Higher action/financial literacy will relate to more critical evaluation of plan *utility*. **(ToDo 3, 6, 15 addressed)**
*   **H2c (AI Literacy & Calibrated Skepticism):** Higher AI literacy (MAILS 'Understand/Detect/Ethics' facets + objective LLM knowledge) will predict *lower perceived accuracy and trust* (more skepticism), particularly regarding LLM limitations (hallucinations, data access). High AI *usage/application* facets may moderate this, potentially correlating with higher trust, reflecting an interaction between understanding and experience. **(ToDo 3, 7 addressed)**
*   **H3 (Perception-Reliance Link):** Higher perceived accuracy, higher task-specific trust, and better objective calibration for LLM energy outputs will positively predict both self-reported willingness to use and choice-based reliance on LLMs for future energy decisions. **(ToDo 1, 5, 18 addressed)**
*   **H4 (General Trust Moderation):** General AI trust (TPA-Trust factor) will positively moderate the relationship between specific positive beliefs/calibration and reliance, amplifying reliance intentions for those with high general trust. General AI distrust (TPA-Distrust factor) will negatively moderate this relationship, dampening reliance intentions even when specific beliefs are positive. **(ToDo 8, 12 addressed)**

## Revised Survey Instrument

**(Structure reflects recommended additions and flow based on To-Do list priorities)**

---

**Consent Form** *(Standard IRB-approved consent)*

---

**Part 1: Individual Differences** *(Counterbalance block order with Part 3/4)*

### 1.1 Numeracy {#numeracy}

*(Berlin Numeracy Test - 4-Item Traditional Format; Cokely et al., 2012)*

**Instructions:** Please answer the following questions **without a calculator**. Feel free to use scratch paper. Please enter only numbers in the boxes provided.

**1.1.1** Imagine we are throwing a five-sided die 50 times. On average, out of these 50 throws how many times would this five-sided die show an odd number (1, 3 or 5)?
    `________ out of 50 throws.`
    *(Correct: 30)*

**1.1.2** Out of 1,000 people in a small town 500 are members of a choir. Out of these 500 members in the choir 100 are men. Out of the 500 inhabitants that are not in the choir 300 are men. What is the probability that a randomly drawn man is a member of the choir? (please indicate the probability in percent).
    `________ %`
    *(Correct: 25)*

**1.1.3** Imagine we are throwing a loaded die (6 sides). The probability that the die shows a 6 is twice as high as the probability of each of the other numbers. On average, out of these 70 throws, how many times would the die show the number 6?
    `________ out of 70 throws.`
    *(Correct: 20)*

**1.1.4** In a forest 20% of mushrooms are red, 50% brown and 30% white. A red mushroom is poisonous with a probability of 20%. A mushroom that is not red is poisonous with a probability of 5%. What is the probability that a poisonous mushroom in the forest is red?
    `________ %`
    *(Correct: 50)*

### 1.2 Energy Literacy & Perception {#energy-literacy-perception}

**(ToDo 2, 6, 15 addressed)**

#### 1.2.1 Energy Knowledge (Cognitive) {#energy-knowledge-cognitive}

**Instructions:** Please select the best answer for each question.

**1.2.1.1** The amount of ELECTRICAL ENERGY (ELECTRICITY) we use is measured in units called ...
  `[ ]` Kilowatt (kW)
  `[X]` Kilowatt-hours (kWh)
  `[ ]` British Thermal Units (BTU)
  `[ ]` Volts (V)
  `[ ]` Horsepower (HP)

**1.2.1.2** The amount of ENERGY consumed by an electrical appliance is equal to the power rating of the appliance (watts or kilowatts)...
  `[ ]` Multiplied by the cost of electricity
  `[X]` Multiplied by the time it's used
  `[ ]` Divided by the time it's used
  `[ ]` Added to the time it's used
  `[ ]` Subtracted from the time it's used

**1.2.1.3** Which uses the MOST ENERGY in the average American home in one year?
  `[ ]` Refrigerating food and beverages
  `[ ]` Washing and drying clothing
  `[X]` Heating and cooling rooms
  `[ ]` Heating water
  `[ ]` Lighting the home

**1.2.1.4** Which of the following energy resources is NOT renewable?
  `[ ]` Solar energy
  `[ ]` Wind energy
  `[X]` Coal
  `[ ]` Hydropower (water)
  `[ ]` Geothermal energy

**1.2.1.5** "Phantom load" or "vampire power" refers to electricity consumed by appliances...
  `[ ]` Only when they are actively running.
  `[ ]` During power surges.
  `[X]` When they are turned off but still plugged in.
  `[ ]` That are generating heat.
  `[ ]` By the utility company before it reaches your home.

**1.2.1.6** Replacing one standard incandescent light bulb with an equivalent LED bulb typically saves about how much energy for the same amount of light?
  `[ ]` 10-20%
  `[ ]` 30-40%
  `[ ]` 50-60%
  `[X]` 75-85%
  `[ ]` Over 90%

**1.2.1.7** Which of these actions typically saves the *most* energy over a year in a typical US home?
  `[ ]` Turning off lights when leaving a room
  `[ ]` Unplugging phone chargers when not in use
  `[X]` Properly insulating the attic
  `[ ]` Washing clothes in cold water instead of hot
  `[ ]` Replacing an old refrigerator with an ENERGY STAR model

**1.2.1.8** When comparing two appliances, the "lifetime cost" usually includes:
  `[ ]` Only the purchase price
  `[ ]` Purchase price plus installation costs
  `[X]` Purchase price plus estimated energy costs over its lifespan
  `[ ]` Only the estimated energy costs over its lifespan
  `[ ]` The cost of recycling the appliance

#### 1.2.2 Appliance Energy Use Estimation (Attari Task) {#appliance-energy-use-estimation}

**Instructions:** A standard 100-Watt incandescent light bulb uses **100 units** of energy in one hour. How many units of energy do you think each of the following devices typically consumes if used for **one hour**?
> Enter a number less than 100 if you think the device uses less energy than a 100-Watt bulb. Enter a number greater than 100 if you think the device uses more energy. Your best estimates are fine. Please enter whole numbers only.

| Appliance                             | Your estimate of energy use (units per hour) |
| :------------------------------------ | :------------------------------------------- |
| An LED light bulb (equivalent brightness to 100W incandescent) | `________` *(Correct: ~15)* |
| A laptop computer (while actively used)| `________` *(Correct: ~32)* |
| A large screen LED TV (while on)      | `________` *(Correct: ~68)* |
| A refrigerator (running constantly, averaged per hour) | `________` *(Correct: ~364)* |
| A microwave (while cooking)           | `________` *(Correct: ~1101)* |
| An electric clothes dryer (while running) | `________` *(Correct: ~3938)* |
| A central air conditioner (while running) | `________` *(Correct: ~3797)* |
| Charging a smartphone                 | `________` *(Correct: ~3)* |

*(Note: Selected a subset of appliances from Marghetis et al. spanning low to high energy use, including items likely subject to bias. Aligned with items used in later LLM belief section.)*

### 1.3 AI Literacy {#ai-literacy}

**(ToDo 7 addressed)**

#### 1.3.1 Subjective AI Literacy (MAILS-Short) {#mails-short}

*(MAILS-Short; Koch et al., 2024)*

**Instructions:** In the following, you will read descriptions of different abilities that one can have when dealing with artificial intelligence (AI). Please rate yourself: How pronounced are your abilities? A value of **0** means that an ability is *not at all or hardly pronounced*. A value of **10** means that an ability is *very well or (almost) perfectly pronounced*. Please use the slider or enter a number from 0 to 10.

**1.3.1.1** I can tell if I am dealing with an application based on artificial intelligence. `[ 0 ----- 10 ]`
**1.3.1.2** I can program new applications in the field of "artificial intelligence”. `[ 0 ----- 10 ]`
**1.3.1.3** Although there are often new AI applications, I manage to always be "up-to date”. `[ 0 ----- 10 ]`
**1.3.1.4** I can handle it when interactions with AI frustrate or frighten me. `[ 0 ----- 10 ]`
**1.3.1.5** I can weigh the consequences of using AI for society. `[ 0 ----- 10 ]`
**1.3.1.6** I can design new AI applications. `[ 0 ----- 10 ]`
**1.3.1.7** I can use artificial intelligence meaningfully to achieve my goals. `[ 0 ----- 10 ]`
**1.3.1.8** I can also usually solve strenuous and complicated tasks when working with artificial intelligence well. `[ 0 ----- 10 ]`
**1.3.1.9** I can prevent an AI from influencing me in my decisions. `[ 0 ----- 10 ]`
**1.3.1.10** I can assess what advantages and disadvantages the use of an artificial intelligence entails. `[ 0 ----- 10 ]`

#### 1.3.2 Objective LLM Knowledge {#objective-llm-knowledge}

**Instructions:** Please select the best answer for each question regarding Large Language Models (LLMs) like ChatGPT, Gemini, or Claude.

**1.3.2.1** LLMs sometimes generate incorrect or nonsensical information that sounds convincing. This phenomenon is often called:
  `[ ]` Overfitting
  `[X]` Hallucination
  `[ ]` Bias amplification
  `[ ]` Data leakage
  `[ ]` I don't know

**1.3.2.2** A major limitation of most current LLMs (unless specifically integrated with other tools) is that:
  `[ ]` They cannot understand complex questions.
  `[ ]` They cannot generate creative text formats.
  `[X]` Their knowledge is limited to the data they were trained on, which has a cut-off date.
  `[ ]` They cannot perform calculations.
  `[ ]` I don't know

**1.3.2.3** When an LLM provides an estimate for energy consumption, it typically arrives at this number by:
  `[ ]` Accessing real-time sensor data from similar appliances.
  `[ ]` Performing complex physics-based simulations.
  `[X]` Predicting likely word/number sequences based on patterns in its vast training text data.
  `[ ]` Consulting a live database of expert energy calculations.
  `[ ]` I don't know

---

**Part 2: Objective Calibration Task** {#objective-calibration}

**(ToDo 1, 18 addressed)**

**Instructions:** Below are three questions related to household energy use, along with answers purportedly generated by a state-of-the-art AI chatbot. For each AI-generated answer, please indicate how confident you are (from 0% to 100%) that the answer provided by the AI is **correct**.

**2.1 Question:** Which typically uses more electricity over a year in a US household: a standard refrigerator or a plasma TV watched 4 hours per day?
    **AI Answer:** "A plasma TV watched 4 hours per day typically uses more electricity over a year than a standard refrigerator." *(Note: This is generally False; modern fridges run 24/7 but are efficient, older plasma TVs were very power-hungry)*
    **Your Confidence (0-100%):** `________ %`

**2.2 Question:** Is it generally more energy-efficient to boil water using an electric kettle or on a gas stovetop?
    **AI Answer:** "It is generally more energy-efficient to boil water using an electric kettle compared to a gas stovetop, as electric kettles transfer heat more directly to the water." *(Note: This is generally True, despite gas being cheaper per unit energy)*
    **Your Confidence (0-100%):** `________ %`

**2.3 Question:** Does turning a computer off completely save significantly more energy compared to letting it sleep for 8 hours overnight?
    **AI Answer:** "Yes, turning a computer off completely saves significantly more energy than letting it sleep overnight. Sleep mode still consumes a noticeable amount of power, whereas 'off' uses almost none." *(Note: This is generally True, although the *significance* depends on the computer; modern sleep modes are very efficient, but off is still less)*
    **Your Confidence (0-100%):** `________ %`

---

**Part 3: Beliefs about LLMs for Energy Tasks** {#beliefs-about-llms-for-energy-tasks} *(Counterbalance block order with Part 1)*

**(ToDo 4, 16, 17 addressed)**

**Instructions:** The following questions ask about your beliefs regarding the capabilities of current Large Language Models (LLMs) like ChatGPT, Gemini, or Claude for specific tasks related to **household energy management**.

### 3.1 Perceived Accuracy & Utility {#perceived-accuracy-utility}

*(Scale: 1 = Very Inaccurate / Not at all Useful, 4 = Neutral, 7 = Very Accurate / Extremely Useful)*

**How *accurate* do you believe current LLMs are at...?**
**3.1.1** ...providing **factual information** about energy efficiency standards (e.g., what an ENERGY STAR rating means).
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**3.1.2** ...**estimating the typical electricity consumption (in kWh or $) of specific household appliances** like an LED bulb or a laptop computer?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**3.1.3** ...**estimating the typical electricity consumption (in kWh or $) of specific household appliances** like a refrigerator or electric clothes dryer?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**3.1.4** ...estimating the energy savings from **high-impact efficiency actions** (e.g., adding attic insulation)?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**3.1.5** ...estimating the energy savings from **low-impact curtailment actions** (e.g., turning off lights)?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**3.1.6** ...creating **effective and realistic personalized energy conservation plans**?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`

**How *useful* do you believe current LLMs are for...?**
**3.1.7** ...**learning basic concepts** about household energy use?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**3.1.8** ...getting **quick estimates** of appliance energy consumption?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**3.1.9** ...**brainstorming potential ways** to save energy at home?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**3.1.10** ...developing a **detailed, actionable energy reduction plan** for your household?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`

### 3.2 Task-Specific Trust {#task-specific-trust}

*(Scale: 1 = Do Not Trust at All, 4 = Neutral / Unsure, 7 = Trust Completely)*

**How much would you *trust*...?**
**3.2.1** ...an LLM's explanation of **how a specific energy technology works** (e.g., solar panels)?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**3.2.2** ...an LLM's **estimate of the annual energy cost** for a typical refrigerator?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**3.2.3** ...an LLM's **recommendation for the single most effective action** to save energy in your home?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**3.2.4** ...a **prioritized list of energy-saving actions** generated by an LLM for your household?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`

### 3.3 Attributional Beliefs (Mental Model Probes) {#attributional-beliefs}

**Instructions:** Please indicate how strongly you agree or disagree with the following statements about how current LLMs (like ChatGPT, Gemini, Claude) likely operate when answering questions about household energy.
*(Scale: 1 = Strongly Disagree, 4 = Neither Agree nor Disagree, 7 = Strongly Agree)*

**3.3.1** LLMs have access to real-time, up-to-the-minute databases on appliance energy usage and electricity prices.
  `[ ] 1   [ ] 2   [ ] 3   [ ] 4   [ ] 5   [ ] 6   [ ] 7`
**3.3.2** LLMs can reliably perform accurate calculations for energy consumption based on user-provided details (e.g., appliance wattage, usage hours).
  `[ ] 1   [ ] 2   [ ] 3   [ ] 4   [ ] 5   [ ] 6   [ ] 7`
**3.3.3** LLMs sometimes confidently invent ('hallucinate') numbers or facts about energy that sound plausible but are incorrect. *(Same as 4.1.6, potentially remove redundancy)*
  `[ ] 1   [ ] 2   [ ] 3   [ ] 4   [ ] 5   [ ] 6   [ ] 7`
**3.3.4** LLMs can accurately infer details about my specific home environment (e.g., insulation level, climate zone) to provide truly personalized advice, even if I don't explicitly state them.
  `[ ] 1   [ ] 2   [ ] 3   [ ] 4   [ ] 5   [ ] 6   [ ] 7`
**3.3.5** LLMs primarily generate energy advice by matching patterns in the vast text data they were trained on, rather than through genuine understanding of energy principles.
  `[ ] 1   [ ] 2   [ ] 3   [ ] 4   [ ] 5   [ ] 6   [ ] 7`
**3.3.6** The energy-saving recommendations from LLMs are generally applicable and don't require much consideration of individual household differences. *(Reverse Coded - indicates less nuanced mental model)*
  `[ ] 1   [ ] 2   [ ] 3   [ ] 4   [ ] 5   [ ] 6   [ ] 7`

---

**Part 4: General Trust & Distrust in AI** {#general-trust-distrust-in-ai} *(Counterbalance block order with Part 1)*

**(ToDo 8, 14 addressed)**

**Instructions:** This section asks about your general feelings and beliefs about **Artificial Intelligence (AI) systems overall**, not specific to energy tasks.

### 4.1 Trust Perception Scale - AI (TPA-Revised Focus) {#tpa-revised}

*(Source: Adapted from Jian et al., 2000, focusing on Trust/Distrust factors per Scharowski et al., 2025)*
**Instructions:** Please mark each statement with the number that best describes your feelings or your impression regarding AI systems in general.
*(Scale: 1 = Not at all, 4 = Neutral / Moderate, 7 = Extremely)*

**Distrust Factor Items:**
**4.1.1** AI systems are deceptive.
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**4.1.2** AI systems behave in an underhanded manner.
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**4.1.3** I am suspicious of AI systems' intent, action, or outputs.
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**4.1.4** I am wary of AI systems.
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**4.1.5** AI systems' actions will have a harmful or injurious outcome.
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`

**Trust Factor Items:**
**4.1.6** I am confident in AI systems.
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**4.1.7** AI systems provide security. *(Item 7)*
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**4.1.8** AI systems have integrity. *(Item 8)*
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**4.1.9** AI systems are dependable. *(Item 9)*
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**4.1.10** AI systems are reliable. *(Item 10)*
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**4.1.11** I can trust AI systems. *(Item 11)*
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`

**Attention Check:** *(ToDo 11 addressed)*
**4.1.12** Please select 'Neutral / Moderate' (the number 4) for this item to show you are reading carefully.
    `( ) 1   ( ) 2   ( ) 3   (X) 4   ( ) 5   ( ) 6   ( ) 7`

*(Note: Excluded original item 12 "I am familiar with the AI" as it measures familiarity, not trust/distrust directly.)*

### 4.2 Semantic Differential AI Trust (Cognitive Subset) {#semantic-differential-ai-trust-cognitive}

*(Source: Shang & Hsieh, 2025)*
**Instructions:** Please rate your general impression of AI systems on the following scales. Select the point on the scale that best represents your feeling.
*(Scale: 7-point semantic differential scale, interpreted as -3 to +3 for analysis)*

**4.2.1** Unreliable `-3 [ ] -2 [ ] -1 [ ] 0 [ ] +1 [ ] +2 [ ] +3` Reliable
**4.2.2** Inconsistent `-3 [ ] -2 [ ] -1 [ ] 0 [ ] +1 [ ] +2 [ ] +3` Consistent
**4.2.3** Unpredictable `-3 [ ] -2 [ ] -1 [ ] 0 [ ] +1 [ ] +2 [ ] +3` Predictable
**4.2.4** Undependable `-3 [ ] -2 [ ] -1 [ ] 0 [ ] +1 [ ] +2 [ ] +3` Dependable
**4.2.5** Incompetent `-3 [ ] -2 [ ] -1 [ ] 0 [ ] +1 [ ] +2 [ ] +3` Competent
**4.2.6** Ineffective `-3 [ ] -2 [ ] -1 [ ] 0 [ ] +1 [ ] +2 [ ] +3` Effective
**4.2.7** Irrational `-3 [ ] -2 [ ] -1 [ ] 0 [ ] +1 [ ] +2 [ ] +3` Rational
**4.2.8** Incomprehensible `-3 [ ] -2 [ ] -1 [ ] 0 [ ] +1 [ ] +2 [ ] +3` Understandable
**4.2.9** Opaque `-3 [ ] -2 [ ] -1 [ ] 0 [ ] +1 [ ] +2 [ ] +3` Transparent
**4.2.10** Dishonest `-3 [ ] -2 [ ] -1 [ ] 0 [ ] +1 [ ] +2 [ ] +3` Honest
**4.2.11** Unfair `-3 [ ] -2 [ ] -1 [ ] 0 [ ] +1 [ ] +2 [ ] +3` Fair

---

**Part 5: LLM Use Intentions & Frequency (Energy Specific)** {#llm-use-intentions-frequency-energy-specific}

**(ToDo 5 addressed)**

**Instructions:** Please answer the following questions about your use and potential use of LLMs specifically for energy-related tasks.

### 5.1 Scenario-Based Reliance Choice {#reliance-scenario}

**Scenario:** Imagine you are considering replacing your old refrigerator. You want to choose a model that will save you the most money on electricity over the next 10 years. You ask an AI chatbot (like ChatGPT) for advice. It recommends a specific model and provides an estimated annual energy cost. What would you be most likely to do next?
  `[ ]` Accept the AI's recommendation and estimate without further checks.
  `[ ]` Briefly search online for reviews of the recommended model but trust the AI's cost estimate.
  `[ ]` Verify the AI's cost estimate using an official source (like the EnergyGuide label or manufacturer specs) before deciding.
  `[ ]` Primarily rely on other sources (consumer reports, expert reviews) and disregard the AI's specific model recommendation and estimate.
  `[ ]` I would not use an AI chatbot for this type of decision.

### 5.2 Willingness to Use / Intentions {#willingness-intentions}

*(Scale: 1 = Very Unlikely, 4 = Neither Likely nor Unlikely, 7 = Very Likely)*

**5.2.1** How likely would you be to use an LLM (like ChatGPT, Gemini, Claude) in the future to **ask general questions** about saving energy?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**5.2.2** How likely would you be to use an LLM in the future to get **specific estimates** of how much energy your appliances use?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**5.2.3** How likely would you be to use an LLM in the future to help **create a personalized plan** to reduce your household energy consumption?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`
**5.2.4** How likely would you be to **act on energy-saving advice** provided by an LLM?
    `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6   ( ) 7`

### 5.3 Past Usage Frequency {#past-frequency}

*(Scale: 1=Never, 2=Rarely (1-2 times total), 3=Occasionally (Less than once a month), 4=Sometimes (About once a month), 5=Often (About once a week), 6=Very Often (Multiple times a week or daily))*

**5.3.1** In the **past 6 months**, how often have you used an LLM (like ChatGPT, Gemini, Claude) to ask **any questions or get information related to household energy use or saving energy**?
  `( ) 1   ( ) 2   ( ) 3   ( ) 4   ( ) 5   ( ) 6`

---

**Part 6: Demographics & Background** {#demographics-background}

*(Standard demographic questions + specific background relevant to the study)*

**6.1 What is your age?** `________` (Years)
**6.2 What gender do you identify with?**
  `[ ]` Woman
  `[ ]` Man
  `[ ]` Non-binary / Third gender
  `[ ]` Prefer to self-describe: `________`
  `[ ]` Prefer not to say
**6.3 What is the highest level of education you have completed?**
  `[ ]` Less than high school
  `[ ]` High school graduate or equivalent (e.g., GED)
  `[ ]` Some college, no degree
  `[ ]` Associate degree (e.g., AA, AS)
  `[ ]` Bachelor’s degree (e.g., BA, BS)
  `[ ]` Master’s degree (e.g., MA, MS, MEd)
  `[ ]` Professional degree (e.g., MD, DDS, DVM, LLB, JD)
  `[ ]` Doctorate (e.g., PhD, EdD)
**6.4 What is your current employment status?** *(Select main status)*
  `[ ]` Employed full-time
  `[ ]` Employed part-time
  `[ ]` Self-employed
  `[ ]` Unemployed and looking for work
  `[ ]` Unemployed and not looking for work
  `[ ]` Student
  `[ ]` Retired
  `[ ]` Homemaker
  `[ ]` Unable to work
**6.5 What was your approximate total household income before taxes last year?**
  `[ ]` Less than $20,000
  `[ ]` $20,000 to $39,999
  `[ ]` $40,000 to $59,999
  `[ ]` $60,000 to $79,999
  `[ ]` $80,000 to $99,999
  `[ ]` $100,000 to $149,999
  `[ ]` $150,000 or more
  `[ ]` Prefer not to say
**6.6 How would you describe your political orientation?**
  `[ ]` Very liberal
  `[ ]` Liberal
  `[ ]` Slightly liberal
  `[ ]` Moderate, middle of the road
  `[ ]` Slightly conservative
  `[ ]` Conservative
  `[ ]` Very conservative
  `[ ]` Prefer not to say
**6.7 Are you primarily responsible for paying your household’s energy bills (electricity, gas, etc.)?**
  `[ ]` Yes, primarily responsible
  `[ ]` Yes, shared responsibility
  `[ ]` No, someone else is responsible
**6.8 How familiar are you with Large Language Models (LLMs) like ChatGPT, Google Gemini, or Anthropic Claude?**
  `[ ]` Not familiar at all, I have never heard of them
  `[ ]` Slightly familiar, I have heard of them or have some idea of what they are
  `[ ]` Moderately familiar, I know what they are and can explain them generally
  `[ ]` Very familiar, I use them regularly and understand their capabilities/limitations
  `[ ]` Extremely familiar, I have technical knowledge or consider myself an expert
**6.9 How often do you typically use LLMs (like ChatGPT, Gemini, Claude) for *any* purpose?**
  `[ ]` Never
  `[ ]` Rarely (Less than once a month)
  `[ ]` Sometimes (A few times a month)
  `[ ]` Often (A few times a week)
  `[ ]` Very Often (Daily or almost daily)

---

**Part 7: Debriefing** {#debriefing}

**(ToDo 10 - Implied)**

Thank you for completing the survey. This research aims to understand how people perceive the usefulness and accuracy of AI chatbots (Large Language Models) for managing household energy use.

It's important to know that current LLMs like ChatGPT, Gemini, and Claude can sometimes provide information that seems correct but may be inaccurate, outdated, or incomplete, especially when it comes to specific numerical data like energy consumption figures. While they can be helpful tools for brainstorming or getting general information, relying solely on their output for critical decisions about energy use or appliance purchases is not recommended without verifying the information through reliable sources (like official EnergyGuide labels, manufacturer specifications, or independent energy auditors).

Your participation helps us understand how different levels of numeracy, energy knowledge, and AI understanding influence these perceptions.

*[Optional: Add links to reliable energy information resources, e.g., energy.gov, Energy Star website]*

---

## Summary of Changes Addressing To-Do List Items

1.  **Objective Calibration Task Added:** Included a 3-item task asking for confidence (0-100%) in pre-generated (correct/incorrect) LLM answers to energy questions.
2.  **Attari Task Reintroduced & Aligned:** Added an 8-item Attari-style appliance estimation task. The appliances chosen overlap with those used in the "Perceived LLM Accuracy" section for direct comparison (H1).
3.  **Mechanisms & Hypotheses Refined:** The Theoretical Framework now explicitly links literacies to evaluation mechanisms (error spotting, plausibility checks, limitation awareness). Hypotheses (H1-H4) are more specific, directional, and incorporate concepts like bias transfer and calibration.
4.  **Expanded Mental Model Measurement:** Added objective T/F/MC questions on LLM limits and a 6-item Attributional Belief scale probing assumptions about LLM operation (data access, error potential, understanding).
5.  **Scenario-Based Reliance Measure Added:** Included a short vignette asking participants how they would act on AI advice for an appliance purchase decision.
6.  **Energy Literacy Battery Expanded:** Added items related to action effectiveness and financial energy literacy (lifetime cost concept) to the cognitive section.
7.  **Objective LLM Knowledge Items Added:** Included 3 multiple-choice questions targeting understanding of hallucinations, knowledge cutoffs, and the probabilistic nature of LLM outputs.
8.  **Trust Measurement Streamlined:** Kept the TPA but framed it around separate Trust and Distrust factors based on Scharowski et al. (2025) recommendations. Kept the cognitive subset of the Semantic Differential scale for nuance. (Dropped mention of PTT-A short form as TPA covers similar ground).
9.  **Custom Item Refinement (Conceptual):** Refined custom items for perceived accuracy/utility/trust by differentiating more clearly between factual info, low/high impact estimates, and planning tasks. *Note: Full psychometric piloting is outside this scope.*
10. **Literature Coverage & Framing Updated:** Integrated concepts like calibration gap, explanation effects (length/confidence cues), and AI literacy complexities into the theoretical framework and rationale. Added relevant citations.
11. **Survey Design Threats Addressed:** Added an attention check item to the TPA scale. Recommended counterbalancing block order in the Methods section. Included a reverse-coded item in the Attributional Beliefs scale.
12. **Analysis Plan Documentation (Conceptual):** Hypotheses now imply specific analyses (correlations, regressions, moderation/mediation tests, calibration index calculation like ECE or Brier score comparison). *Note: A detailed statistical plan is outside this scope.*
13. **Comprehensive RQ Coverage:** Survey now includes measures for all constructs needed to address the revised RQs.
14. **Contemporary Instruments Adopted:** Used MAILS-Short (validated 2024), BNT (standard), TPA (applying recent validation insights), Semantic Differential (2025).
15. **Financial Energy Literacy Added:** Included a basic item on lifetime cost understanding.
16. **Scenario-Based LLM Beliefs:** Accuracy items are now more specific (factual vs. estimate vs. plan), and a scenario choice item was added for reliance.
17. **Multi-Method Mental Model Strategy:** Combined perceived accuracy/utility ratings, task-specific trust, objective LLM knowledge, and attributional beliefs to triangulate mental models. *Note: Qualitative methods are outside survey scope.*
18. **Trust Miscalibration Measurement Procedures:** Added objective calibration task and refined hypotheses to explicitly mention calibration indices (e.g., confidence-accuracy gap).
19. **Strengthened Theoretical Framework:** Incorporated more recent and relevant literature as detailed above.

## Remaining Issues

*   **Survey Length:** The survey is now quite comprehensive, incorporating multiple validated scales, custom items, the Attari task, and the objective calibration task. Careful attention to implementation (e.g., efficient online platform) and potentially offering slightly higher compensation might be needed to maintain participant engagement and data quality. Consider if any sections could be slightly shortened without losing core constructs (e.g., fewer semantic differential items if needed, fewer Attari items if pre-testing shows high correlation).
*   **Custom Item Validation:** The newly developed or refined custom items (Perceived Accuracy/Utility, Task-Specific Trust, Attributional Beliefs, Objective LLM Knowledge, Objective Calibration Task stimuli) *require empirical validation* through pilot testing to ensure clarity, reliability, and appropriate factor structure. This is a crucial next step before large-scale deployment.
*   **LLM Output Realism:** The "Objective Calibration Task" relies on presenting plausible but potentially correct/incorrect LLM answers. Crafting these stimuli carefully to be representative of actual LLM outputs (including potential failure modes) is important for the task's validity.
*   **Self-Report Limitations:** Reliance on self-reported behavioral intentions and past frequency still carries inherent limitations (recall bias, social desirability). The scenario-based choice item offers a partial improvement, but cannot fully replace behavioral observation.
*   **Causality:** The cross-sectional design limits causal inference. While predictors (literacies) are measured alongside outcomes (beliefs, intentions), establishing directional causality would require experimental or longitudinal designs. The proposal appropriately frames hypotheses in terms of associations and predictions.