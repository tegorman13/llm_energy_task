Brainstorm some questions, or a general approach for measuring
Beliefs about LLM Accuracy/Trustworthiness for Energy Tasks, Perceived LLM accuracy & utility.





# https://chatgpt.com/c/68159039-15bc-8006-ac89-860afbcb0988

**Mental Models of the LLM:** To delve into RQ3, we will employ multiple approaches to gauge participants’ mental models of ChatGPT (the LLM in question). First, we include an **open-ended question** before the scenario task: *“In your own words, how do you think ChatGPT (or similar AI assistants) come up with answers to questions?”* Participants can write a few sentences. This prompt is intentionally broad to let them express their understanding or beliefs (e.g. “It probably searches the internet,” or “It guesses based on patterns,” or “It’s like talking to a knowledgeable person,” etc.). We will later qualitatively code these responses into categories (for example: those who mention that it’s based on data/patterns vs. those who invoke human-like reasoning or other analogies). This qualitative measure provides rich insight beyond numeric scales, capturing lay theories and any misconceptions. Second, we include a set of **belief statements about the LLM** for agreement/disagreement. These items are informed by common lay beliefs observed in prior research and our hypotheses. Examples include: *“ChatGPT always provides factual, correct information,”* *“ChatGPT can sometimes make up answers that sound convincing,”* *“The way ChatGPT works is basically by finding answers that humans have written,”* *“I think ChatGPT understands the meaning of the questions it is asked,”* *“ChatGPT is biased by the data it was trained on,”* etc. Participants rate each on a Likert scale (1=Strongly Disagree to 5=Strongly Agree). This will yield a profile of each participant’s beliefs about the AI. We anticipate identifying certain factors or indices – e.g. **Perceived Accuracy** of the AI (belief in its correctness), **Anthropomorphism** (seeing it as human-like or truly understanding), and **Awareness of Limitations**. For instance, strong agreement that “ChatGPT always provides factual information” would indicate a naive mental model that could lead to overtrust. In contrast, agreement that “it can make up answers” indicates awareness of the hallucination problem, likely leading to more cautious trust. We will examine these beliefs in relation to the trust outcomes. Finally, after the scenario interactions, we will ask a **reflection question**: *“How much do you feel you can explain the way ChatGPT arrived at its answers in the scenarios?”* (scale from “Not at all” to “Completely”). This gauges the participant’s sense of understanding (meta-mental model), which can be compared to their initial open-ended description to see if exposure to the scenarios changed their mental model clarity. In summary, the mental model measurement is **richer than a single self-report** – it includes open-ended qualitative data and multiple quantitative items, ensuring we capture the nuance of lay beliefs about the AI beyond just confidence level. These measures directly address the need for going beyond simplistic self-report, as per our RQ3 improvements.

* **Mental Model Coding Subjectivity:** The open-ended responses for mental models will require qualitative coding, which can introduce subjective interpretation. Different coders might categorize an answer differently. **Mitigation:** We will use at least two independent coders and establish clear coding rules. We’ll calculate inter-rater reliability (e.g. Cohen’s kappa) for the categories to ensure consistency. Any disagreements will be resolved via discussion or a third coder. Since we also have structured belief items, those can quantitatively support what the open-ends suggest (for instance, if a coder labels someone as having an “anthropomorphic” view, that person should also have high agreement on statements like “ChatGPT understands like a human”). Triangulating qualitative and quantitative data will strengthen our interpretation of mental models.





--------

# https://gemini.google.com/app/5d2abc9eec2788f2


### **Mental Models of LLMs**

Users interact with AI systems based on their *mental models*—internal representations of how the system works, its capabilities, and its limitations.49 These models, often implicit and potentially inaccurate, shape expectations, trust, and interaction strategies.52 Understanding lay mental models of LLMs is crucial, particularly regarding beliefs about their knowledge sources (e.g., real-time data access vs. static training data 7), reasoning processes (e.g., deep understanding vs. pattern matching 49), potential for fabrication (hallucinations 6), and ability to personalize information.53 Measuring these models requires moving beyond simple outcome ratings (perceived accuracy/utility) to probe underlying attributional beliefs 49 and assess objective knowledge of key LLM characteristics and limitations.6 Open-ended prompts can also offer insights into users' reasoning styles when thinking about AI.54


* **Mental Models of LLMs:**  
  * *Attributional Belief Scale:* 6 custom Likert items (1-7 Strongly Disagree to Strongly Agree) probing beliefs about LLM data access ("...has real-time access to energy databases"), hallucination ("...might invent plausible but incorrect energy facts"), personalization ("...can infer specific home details for personalized advice"), reasoning ("...genuinely understands energy principles like an expert" vs. "...primarily matches word patterns").49 Score: Average ratings, potentially factor scores after analysis.  
  * *Open-Ended Reasoning Prompt:* "In one or two sentences, please describe how you think an AI chatbot (like ChatGPT or Gemini) comes up with an estimate for how much energy an appliance uses." Responses coded for reasoning style (e.g., database lookup, calculation, pattern matching, anthropomorphic understanding).54  


* **Objective Calibration Task:** Participants view 3-5 pre-generated LLM responses to specific energy-related questions (e.g., estimating savings from an action, explaining a concept), balanced for correctness (some correct, some incorrect). For each response, participants judge: (a) Correctness (True/False/Unsure), and (b) Confidence in their correctness judgment (0-100% slider).10 Score: Accuracy of correctness judgments, Brier score for calibration 45, over/underconfidence index (mean confidence \- mean accuracy).  

2. **Derived Variables:**  
   * *Energy Estimation Bias:* Calculate log10(perceived estimate) and log10(actual value) for each item in the Attari task. For each participant, regress log(perceived) on log(actual); the slope indicates range compression (slope \< 1 indicates compression).2 Calculate mean absolute error or bias scores.  
   * *Objective Calibration:* Calculate accuracy on the LLM judgment task (proportion correct). Calculate Brier scores for each judgment: BS=(Confidence−Outcome)2, where Confidence is the 0-1 scaled confidence rating and Outcome is 1 if the judgment was correct, 0 if incorrect.45 Average Brier scores across items for each participant (lower \= better calibration). Calculate over/underconfidence index (mean confidence \- mean accuracy). Plot calibration curves (proportion correct vs. confidence bins).69  
   * *Reliance Metrics (Descriptive):* Analyze frequencies of accepting correct vs. incorrect advice in the calibration task (implicit reliance) and choices in the scenario task (explicit intention).  
   * *Mental Model Coding:* Develop and apply a coding scheme for the open-ended reasoning prompt responses (inter-rater reliability check).  

# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1

**Improving "Beliefs about LLM Accuracy for Energy Tasks" Questions**

To improve the "Beliefs about LLM Accuracy for Energy Tasks" section and capture nuances relevant to cognitive biases and domain specificity:

*   **Specificity:** Replace general statements (e.g., "LLM answers about energy are accurate") with items targeting specific facets of accuracy and different energy tasks. Examples:
    *   "How accurate do you think current LLMs are at providing factual information about energy principles (e.g., second law of thermodynamics)?" (Factual/Conceptual Accuracy).
    *   "How accurate do you think current LLMs are at estimating the typical energy use of a refrigerator?" (Quantitative Estimation Accuracy - High Consumption Appliance).
    *   "How accurate do you think current LLMs are at estimating the energy use of an LED light bulb?" (Quantitative Estimation Accuracy - Low Consumption Device).
    *   "How accurate do you think current LLMs are at estimating the potential savings from adding attic insulation?" (Quantitative Estimation Accuracy - High-Impact Action).
    *   "How accurate do you think current LLMs are at estimating the potential savings from unplugging electronics that are turned off?" (Quantitative Estimation Accuracy - Low-Impact Action/Phantom Load). Comparing perceived accuracy for high vs. low impact/consumption items allows probing whether human biases (Attari et al., 2010) are projected onto perceived LLM accuracy.
    *   "How accurate do you think current LLMs are at generating a personalized plan to reduce energy consumption in a home?" (Planning Accuracy/Effectiveness).
*   **Include Reverse-Coded Items:** Add items probing recognition of LLM fallibility within the energy domain, such as "LLMs might sometimes confidently invent incorrect numbers or facts about energy that sound plausible". This is crucial for assessing awareness of limitations relevant to AI literacy.
*   **Differentiation:** Ensure items clearly distinguish perceived accuracy from perceived utility or trust. Use distinct Likert scales or anchors (e.g., "Very Inaccurate" to "Very Accurate" for accuracy; "Not at all Useful" to "Extremely Useful" for utility).

------


2. **Mental Models of AI Systems and Trust Calibration**:
Mental models-users' internal representations of how a system operates-significantly impact trust and reliance on AI systems (Buçinca et al., 2021). Recent research has identified multiple dimensions of mental models of AI, including attributional beliefs about system functioning, perceived capabilities, and understanding of failure modes (Liao \& Sundar, 2022). Trust calibration, the alignment between perceived and actual system trustworthiness, is critical for effective human-AI collaboration (Lee \& See, 2004). We incorporate the multidimensional framework of trust calibration (Okamura \& Yamada, 2020) which distinguishes between exo vs. endo, warranted vs. unwarranted, static vs. adaptive, and capabilities vs. process-oriented trust calibration approaches.


**3) Measuring User Mental Models of LLMs**

Assessing users' mental models of how Large Language Models (LLMs) operate is paramount to understanding their expectations, trust calibration, and subsequent reliance behaviors in the context of household energy management (Buçinca et al., 2021; Liao & Sundar, 2022). Given that lay users' understanding of AI mechanisms is often informal, incomplete, and potentially influenced by pre-existing cognitive biases or media portrayals, a robust measurement approach must go beyond simple self-assessments of understanding. To capture the complexity and dimensionality of these internal representations, we employ a multi-method approach comprising structured scale items, objective knowledge probes, and an open-ended qualitative question.

Our measurement strategy is designed to capture several key dimensions of mental models identified in the literature (Liao & Sundar, 2022):
*   **Attributional Beliefs:** Probing users' implicit theories about the LLM's underlying mechanisms and characteristics when providing energy advice. We use a custom scale (Likert-type) assessing agreement with statements about:
    *   *Data Access and Knowledge Base:* Beliefs about whether the LLM has real-time, comprehensive, and up-to-date access to energy data or is limited by its training data. (e.g., "The chatbot has real-time access to comprehensive and up-to-date energy usage databases.")
    *   *Potential for Error and Fabrication:* Awareness of the LLM's fallibility, including the possibility of generating factually incorrect but plausible-sounding information ("hallucinations"). (e.g., "The chatbot might sometimes confidently invent ('hallucinate') numbers or facts about energy that sound plausible but are incorrect.")
    *   *Contextual Understanding and Personalization:* Beliefs about the LLM's ability to genuinely understand individual circumstances (e.g., specific home details, lifestyle) and provide truly personalized and relevant advice, distinguishing it from generic information retrieval. (e.g., "The chatbot can accurately infer details about my specific home situation to give truly personalized advice.")
    *   *Nature of Processing/Reasoning Style:* Beliefs about whether the LLM "thinks" or "understands" energy principles like a human expert (anthropomorphic view) or primarily processes information through pattern matching and statistical association from its training data (mechanistic view). (e.g., "The chatbot genuinely understands energy principles in a way similar to a human expert" vs. "...primarily matches word patterns from its training data without true understanding.") These items aim to position users' models along critical continua related to perceived capability, reliability, and sentience.

*   **Objective LLM Knowledge:** Assessing factual knowledge about how LLMs generally function, particularly aspects relevant to their limitations or capabilities in a domain like energy. This complements self-reported beliefs by providing a measure of verifiable understanding. We include a few multiple-choice or true/false items testing knowledge of concepts such as the typical cut-off date for training data knowledge or the inability of standard LLMs to perform real-time web searches unless explicitly integrated.

*   **Open-Ended Reasoning Style:** Providing a qualitative prompt asking participants to describe, in their own words, how they think an LLM generates a specific type of energy-related output (e.g., estimating appliance energy use). Coding these open-ended responses for themes (e.g., database lookup, calculation, pattern matching, anthropomorphism, "magic") can provide deeper insights into the underlying conceptual models users hold, which may not be fully captured by structured scales. This approach acknowledges that mental models are often tacit and best revealed through explanation or reasoning tasks.

By combining these measurement approaches, we aim to obtain a more comprehensive and nuanced picture of users' mental models of LLMs than would be possible with simple self-report scales alone, addressing a key limitation noted in the evaluation of initial survey drafts. Understanding these models is crucial for interpreting perceptions of accuracy, trust calibration, and reliance behavior (H2c, H3b, H3c), and for designing future interventions to foster more accurate understanding and appropriate reliance on AI tools for energy management.



------

# https://aistudio.google.com/prompts/1M9tcpP-PiC9X3QmK3RCK9lIiGlJr7nLU

**I. Survey Questions & Approaches**

**A. Measuring Mental Models (How users think LLMs work for energy tasks):**

*   **Analogy-Based Likert Scale:**
    > "When thinking about how LLMs (like ChatGPT, Gemini, Claude) answer questions about household energy use, which of the following descriptions best fits your perception? Please rate your agreement with each statement." (Scale: 1=Strongly Disagree to 7=Strongly Agree)
    >
    > *   The LLM acts like a massive **database**, retrieving stored facts about energy.
    > *   The LLM acts like a **calculator**, performing computations to estimate energy use.
    > *   The LLM acts like a **creative assistant**, generating plausible-sounding energy advice even if unsure.
    > *   The LLM acts like a **simulator**, modeling energy dynamics to predict usage.
    > *   The LLM acts like an **expert consultant**, synthesizing information to provide tailored recommendations.
    > *   The LLM primarily **repeats common information** found online about energy saving.

*   **Semantic Differential for Mechanism:**
    > "Please rate your perception of the process LLMs use to generate energy-related answers on the scales below:" (Scale: -3 to +3 for each pair)
    >
    > *   Retrieving Facts `-------` Generating Content
    > *   Calculating `-------` Synthesizing
    > *   Rule-Based `-------` Pattern-Based
    > *   Deterministic `-------` Probabilistic
    > *   Literal `-------` Interpretive

*   **Open-Ended:**
    > "In your own words, how do you think an LLM like ChatGPT comes up with an estimate for how much electricity a specific appliance uses?"

**B. Perceived Accuracy & Trustworthiness (General & Task-Specific):**

*   **Direct Likert - Accuracy:** (Scale: 1=Very Inaccurate to 7=Very Accurate)
    *   "How *accurate* do you believe current LLMs are at providing **factual information** about energy efficiency standards (e.g., ENERGY STAR ratings)?"
    *   "How *accurate* do you believe current LLMs are at **estimating the electricity consumption (in kWh or $) of specific household appliances** (e.g., refrigerators, TVs)?"
    *   "How *accurate* do you believe current LLMs are at **predicting the potential energy savings** from specific actions (e.g., insulating an attic)?"
    *   "How *accurate* do you believe current LLMs are at creating **effective energy conservation plans**?"

*   **Direct Likert - Trustworthiness:** (Scale: 1=Not at all Trustworthy to 7=Very Trustworthy)
    *   "How *trustworthy* do you find the energy consumption estimates provided by LLMs?"
    *   "How *trustworthy* do you find the energy-saving recommendations provided by LLMs?"
    *   "Overall, how much do you *trust* LLMs as a source of information for managing your household energy?"

*   **Comparative Judgments:** (Scale: 1=LLM Much Worse, 4=About the Same, 7=LLM Much Better)
    *   "Compared to a **standard Google search**, how *accurate* is the energy information provided by LLMs?"
    *   "Compared to a **human energy auditor**, how *accurate* are LLM estimations of appliance energy use?"
    *   "Compared to **your own intuition/knowledge**, how *accurate* are LLM energy estimations?"
    *   "For getting quick facts about energy, would you trust an **LLM** or a **dedicated government energy website** (like energy.gov) more?" (Forced choice or preference scale)

*   **Bias/Limitation Awareness (Likert):** (Scale: 1=Strongly Disagree to 7=Strongly Agree)
    *   "LLMs are likely to make errors (hallucinate) when estimating specific energy (kWh) values."
    *   "The energy-saving advice from LLMs might be too generic and not apply well to my specific home."
    *   "LLMs might overestimate the savings from easy actions (like turning off lights) and underestimate savings from harder actions (like insulation), similar to how people often do." (Tests perception of shared bias)
    *   "I would need to double-check any quantitative energy information provided by an LLM."

**C. Perceived Utility (General & Task-Specific):**

*   **Direct Likert - Utility:** (Scale: 1=Not at all Useful to 7=Very Useful)
    *   "How *useful* do you think LLMs are for **learning basic concepts** about household energy use?"
    *   "How *useful* do you think LLMs are for **getting quick estimates** of appliance energy consumption?"
    *   "How *useful* do you think LLMs are for **brainstorming ideas** for saving energy at home?"
    *   "How *useful* do you think LLMs are for creating a **detailed, personalized energy reduction plan**?"

*   **Comparative Judgments:** (Scale: 1=LLM Much Less Useful, 4=Equally Useful, 7=LLM Much More Useful)
    *   "For creating a comprehensive home energy plan, how *useful* is an LLM compared to hiring a professional energy auditor?"
    *   "For understanding your electricity bill, how *useful* is an LLM compared to resources provided by your utility company?"

*   **Scenario-Based Utility:**
    > "Imagine you want to significantly lower your home's heating costs this winter. How helpful do you believe an LLM would be in identifying the **top 3 most effective actions** specifically for your situation (considering your home type, climate, etc.)?" (Scale: 1=Not at all helpful to 7=Extremely helpful)

**II. Pre-Post LLM Interaction Approach**

This approach aims to see how a brief, direct experience changes perceptions.

1.  **Phase 1: Pre-Interaction Survey:**
    *   Administer a subset of the key perception questions brainstormed above (e.g., selected accuracy, utility, trust items for estimation and planning).
    *   Include baseline AI Literacy (MAILS-Short), Energy Literacy (ELQ-Cognitive subset), and Numeracy (BNT/CRT subset).
    *   Include demographics and *prior* LLM usage frequency (general and for energy if any).

2.  **Phase 2: Standardized Interaction Task:**
    *   **Instruction:** "You will now briefly interact with an AI assistant (like ChatGPT). Please ask it the following three questions exactly as written and observe its responses. There's no need to evaluate the responses yet, just familiarize yourself with how it answers energy-related queries."
    *   **Standardized Prompts:**
        *   *Estimation Prompt:* "What is the typical annual electricity consumption (in kWh) of a modern refrigerator in the US?" (Known value, allows for accuracy check)
        *   *Planning/Advice Prompt:* "Suggest 3 ways I can reduce my home's electricity use without spending any money." (Tests common advice generation)
        *   *Factual/Conceptual Prompt:* "Explain how a heat pump works for home heating." (Tests explanation ability)
    *   **Implementation:** Use a specific, consistent LLM backend (e.g., GPT-3.5-Turbo API via a simple interface) to ensure comparability. Show the user the prompts and provide a space to see the LLM's response for each. *Crucially, do not provide feedback on the correctness of the LLM's answers at this stage.*

3.  **Phase 3: Post-Interaction Survey:**
    *   **Re-administer Key Perception Questions:** Ask the *same* accuracy, utility, and trust questions from Phase 1 again.
    *   **Interaction Experience Questions:**
        *   "How *surprising* were the LLM's answers compared to what you expected?" (Scale: 1=Not surprising at all to 7=Very surprising)
        *   "How *helpful* did the LLM's responses seem for the specific questions asked?" (Scale: 1=Not helpful at all to 7=Very helpful)
        *   "Did you notice any potential inaccuracies or strange aspects in the LLM's responses?" (Yes/No/Unsure; If Yes, optional open-ended: "Briefly describe what seemed inaccurate.")
        *   "Overall, did this brief interaction make you feel more or less confident in using LLMs for energy management tasks?" (Scale: 1=Much Less Confident, 4=No Change, 7=Much More Confident)
    *   **(Optional) Open-Ended Reflection:** "How, if at all, did interacting with the AI change your view of its capabilities related to energy?"

**III. Task-Based Measurement Approaches**

These move beyond self-report to assess how users *evaluate* or *use* LLM outputs.

1.  **Output Evaluation Task:**
    *   **Method:** Present participants with several pre-generated LLM responses to specific energy prompts (e.g., estimating energy use of a dryer, explaining phantom load, suggesting insulation types). Include responses that are:
        *   Accurate and helpful.
        *   Plausible-sounding but factually incorrect (e.g., wrong kWh value, misrepresents savings magnitude).
        *   Vague or overly generic.
        *   Containing a clear hallucination (e.g., citing a non-existent energy standard).
    *   **Task:** For each response, ask participants:
        *   "Rate the *accuracy* of this response." (Scale: 1-7)
        *   "Rate the *usefulness* of this response." (Scale: 1-7)
        *   "How much would you *trust* this specific response if making an energy decision?" (Scale: 1-7)
        *   "Do you see any potential errors or problems with this response? If yes, please describe briefly." (Yes/No/Unsure + Open Text)
    *   **Measures:** Ability to correctly identify flawed responses (calibration), correlation between subjective rating and objective quality, types of errors detected.

2.  **Comparative Ranking Task:**
    *   **Method:** For a specific energy question (e.g., "Which saves more energy annually: replacing 5 incandescent bulbs with LEDs or unplugging phone chargers?"), present answers from different sources:
        *   Source A: LLM response (potentially accurate or flawed).
        *   Source B: Response from a reputable energy agency website (e.g., EPA, EnergyStar).
        *   Source C: Response reflecting a common heuristic/misperception (e.g., focusing heavily on charger unplugging).
        *   Source D: (Optional) Another LLM's response.
    *   **Task:**
        *   "Please rank these responses from most accurate (1) to least accurate (X)."
        *   "Which source would you trust the most to base a decision on?"
        *   (Optional) "Why did you rank them this way?"
    *   **Measures:** Ranking patterns (preference for LLM vs. expert vs. heuristic), stated trust preference, justification quality.

3.  **Goal-Oriented Simulation + LLM Use:**
    *   **Method:** Create a simple simulation (e.g., a hypothetical monthly energy bill breakdown). Give participants a goal (e.g., "Reduce this household's simulated annual electricity cost by $100 using feasible actions"). Provide access to an LLM tool within the simulation interface (and maybe a basic search/calculator).
    *   **Task:** Allow participants to use the LLM to ask questions, get estimates, and formulate a plan to meet the goal. Track the questions they ask the LLM.
    *   **Post-Task Questions:**
        *   "How helpful was the LLM in developing your plan?" (Scale: 1-7)
        *   "How accurate did you find the specific information the LLM provided during the task?" (Scale: 1-7)
        *   "How confident are you that your final plan will achieve the $100 savings goal?" (Scale: 1-7)
    *   **Measures:** Interaction patterns (types of queries), perceived helpfulness/accuracy *in context*, confidence calibration (compare subjective confidence with objective plan quality if assessable).





------



# https://chatgpt.com/c/68153970-a720-8006-91c9-c5bc034eba63

Large‐scale language models (LLMs) often *appear* authoritative, yet recent work shows that lay users systematically **overestimate** their accuracy, especially when explanations are lengthy or framed confidently ([Nature][1], [Home][2]).  Building on this evidence—as well as classic findings that people misjudge appliance-level energy use by an order of magnitude ([PNAS][3])—the following sections sketch (a) **survey items** targeting users’ mental models of LLM competence in the household-energy domain, (b) a **pre/post interaction paradigm** to capture calibration shifts, and (c) **task-based behavioural measures** that complement self-report.  Items are phrased so they can be pasted directly into a Qualtrics or LimeSurvey block, using 7-point Likert scales unless otherwise noted.

## 1 Survey prompts for mental-model dimensions

### 1.1 Perceived factual accuracy

1. *“If I asked ChatGPT to estimate the annual electricity consumption (in kWh) of a typical U.S. refrigerator, its answer would be…”*
     1 Completely inaccurate ··· 7 Exactly accurate
2. *“Compared with a typical energy-expert human, ChatGPT’s estimates for common appliances are…”*
     1 Much less accurate ··· 7 Much more accurate
3. *Probability format (100-point slider):* *“Out of 100 questions about appliance energy use, how many will ChatGPT answer correctly within ±20 % of the true value?”*
   Likert and probability ratings in combination enable *calibration-gap* analyses (cf. Steyvers et al., 2024) ([arXiv][4]).

### 1.2 Trustworthiness & utility for planning

4. *“I would rely on ChatGPT to design a personalised energy-saving plan for my home.”*
     1 Strongly disagree ··· 7 Strongly agree
5. *“ChatGPT is able to tailor conservation advice to the constraints of my household (e.g., budget, dwelling type).”*
6. Semantic differential pairs adapted from Shang & Hsieh’s cognitive-vs-affective trust scale ([arXiv][5]):
     Reliable 1 – 7 Unreliable | Objective 1 – 7 Biased | Caring 1 – 7 Indifferent

### 1.3 Comparative judgments

7. *“When discrepancies arise between my own estimate and ChatGPT’s estimate of an appliance’s energy use, I am likely to…”*
     1 Keep my estimate ··· 7 Adopt ChatGPT’s value
8. Rank-ordering task (drag-and-drop): *“Order the following information sources by how much you would trust them for appliance energy facts: (a) government energy-guide label, (b) manufacturer website, (c) ChatGPT, (d) advice from friend who is an engineer.”*

### 1.4 Confidence in detection of LLM error

9. *“How confident are you that you can tell when ChatGPT’s energy advice is wrong?”* (0–100 % slider)
   Captures *metacognitive sensitivity*; large gaps between confidence and actual detection indicate automation bias ([arXiv][6]).

---

## 2 Pre/post LLM-interaction paradigm

1. **Baseline phase**
   *Participants answer 8 open-ended questions modelled on Attari et al. (e.g., “How many kWh does a clothes dryer use per cycle?”).*
2. **LLM exposure**
   *Participants receive the same questions pre-filled with ChatGPT’s answers* (generated via API, stored).
   *Ask them to* **accept**, **edit**, or **reject** each suggestion—mirroring “edit-distance” reliance measures in recent studies ([ResearchGate][7]).
3. **Immediate post-survey**
   Re-administer items 1–9 plus two *affective trust* items to detect shifts.
4. **Delayed follow-up** (optional)
   After 1 week, participants estimate a new set of appliances to assess transfer and durability of calibration.

Dependent variables:

* change in absolute error (human vs LLM vs combined);
* change in subjective accuracy ratings;
* *overreliance index* (accept-rate when LLM is objectively wrong) ([Harvard Scholar][8]);
* metacognitive sensitivity (d′ between confidence and detection).

---

## 3 Behavioural task variants

| Task                         | Core idea                                                                                          | What it diagnoses                                                                              | Implementation tips                                                                           |
| ---------------------------- | -------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| **Forced-choice adoption**   | Show participant’s own estimate *and* ChatGPT’s; force a single final answer                       | Reliance versus self-reliance                                                                  | Vary ground-truth error in LLM answer to probe susceptibility                                 |
| **Source wager**             | Give 10 LLM answers; let users bet 0–100 ¢ on each being correct                                   | Confidence calibration, risk preferences (cf. Buçinca et al., 2021) ([ACM Digital Library][9]) | Convert earnings to bonus to increase engagement                                              |
| **Spot-the-error quiz**      | Mix correct and subtly erroneous LLM statements about energy plans                                 | Error-detection ability; links to automation bias ([Databricks][10])                           | Manipulate explanation length to replicate Steyvers “explanation-length” effect ([Nature][1]) |
| **Sequential planning game** | Participants assemble an energy-saving plan from menu of actions; real-time LLM suggestions appear | Utility perception, actual performance impact                                                  | Provide feedback on projected kWh savings to compute objective benefit                        |
| **Think-aloud protocol**     | Record verbal commentary while using LLM to solve a household-energy scenario                      | Qualitative mental-model richness (cf. generative-AI mental-model interviews) ([arXiv][11])    | Transcribe & code for schemas (e.g., “LLM as calculator vs adviser”)                          |

---

## 4 Design considerations and extensions

* **Explanation framing:** Vary confidence qualifiers (“≈150 kWh ± 25”) to test whether uncertainty disclosure narrows calibration gaps (Kim et al., 2024) ([Nature][1]).
* **Cognitive forcing manipulation:** Insert a prompt that asks participants to list potential errors before deciding, shown to cut overreliance ([ResearchGate][12]).
* **Comparative sources:** Add a *Google Search* condition to benchmark whether LLMs are trusted differently than conventional search results.
* **Energy-footprint feedback:** Present the LLM’s own energy-use per query to test whether environmental cost framing alters use intentions ([World Economic Forum][13]).

These survey items and task paradigms collectively enable a **multi-method assessment** of users’ *mental models, calibration, and behavioural reliance* on LLMs for energy decisions, grounded in current measurement best-practice and recent human–AI interaction findings.


--------


# https://gemini.google.com/app/d8fe23f8f9f0796a

## Brainstorming Survey Questions & Approaches

Here are different ways to probe user beliefs, moving from direct ratings to comparative judgments:

**A. Direct Ratings (Likert Scales, 1-7 or 1-5)**

* *(Anchor scales clearly: e.g., 1=Not at all Accurate/Useful/Trustworthy, 7=Extremely Accurate/Useful/Trustworthy; 1=Strongly Disagree, 7=Strongly Agree)*

    **1. General Capabilities for Energy Tasks:**
    * "How accurate do you believe current LLMs (like ChatGPT, Gemini, Claude) generally are when providing information about household energy use?"
    * "How useful do you think LLMs generally are for helping people manage their household energy consumption?"
    * "How trustworthy do you consider the energy-related advice typically provided by LLMs?"
    * "To what extent do you think LLMs understand the complexities of home energy systems?"
    * "LLMs are capable of providing factually correct answers to specific energy questions (e.g., 'What is the typical wattage of a microwave?')." (Agree/Disagree)
    * "LLMs often 'make up' information (hallucinate) when asked about specific energy data." (Agree/Disagree - reverse coded for accuracy perception)

    **2. Specific Task: Estimating Appliance Energy Use:**
    * "How accurately do you think an LLM could estimate the **yearly energy consumption (in kWh)** of a typical refrigerator?"
    * "How accurate do you think an LLM could be at identifying which of your home appliances use the **most** electricity?"
    * "How useful would an LLM be for helping you figure out the energy cost of running a specific appliance (e.g., a space heater)?"
    * "I would trust an LLM's calculation of how much energy my air conditioner uses." (Agree/Disagree)

    **3. Specific Task: Creating Personalized Conservation Plans:**
    * "How effectively do you think an LLM could create a **personalized** energy-saving plan tailored to your specific home and lifestyle?"
    * "How accurate do you believe the **savings estimates** provided in an LLM-generated energy plan would be?"
    * "How useful would an LLM-generated energy conservation plan be for actually helping you reduce your energy bills?"
    * "How confident are you that an LLM-generated plan would suggest **safe and practical** ways to save energy?"
    * "I would trust an LLM to prioritize the most impactful energy-saving actions for my household." (Agree/Disagree)

**B. Comparative Judgments**

* *(These force a relative assessment, potentially revealing nuances hidden by absolute ratings.)*

    **1. Comparing LLM to Other Sources:**
    * "Compared to information from your **utility company's website**, how accurate do you think energy advice from an LLM would be?" (Scale: Much Less Accurate to Much More Accurate)
    * "Compared to asking a knowledgeable **friend or family member**, how trustworthy would energy-saving tips from an LLM be?" (Scale: Much Less Trustworthy to Much More Trustworthy)
    * "Compared to using a dedicated **online energy calculator**, how useful would an LLM be for estimating appliance energy use?" (Scale: Much Less Useful to Much More Useful)
    * "If you needed to estimate the energy use of a new appliance, which source would you trust most?" (Rank order: LLM, Manufacturer's Website, Energy Expert Blog, Online Calculator, Product Label)
    * "Who would likely provide a more *personalized* energy-saving plan?" (Forced choice: LLM vs. Human Energy Auditor)

    **2. Comparing LLM to Self:**
    * "How much more or less accurate do you think an LLM would be compared to **your own best guess** at estimating your home's total monthly energy use?" (Scale: Much Less Accurate than Me to Much More Accurate than Me)
    * "Who would be better at identifying unusual energy consumption patterns in your home?" (Forced choice: LLM vs. Yourself)

    **3. Comparing Between LLM Tasks:**
    * "Do you think LLMs are generally more accurate at **estimating energy use for a single appliance** OR **creating a comprehensive home energy-saving plan**?" (Forced choice or slider)
    * "Which task would you trust an LLM *more* for?" (Forced choice: Providing factual energy data OR Generating personalized advice)

**C. Measuring Mental Models (Underlying Beliefs/Mechanisms)**

* *(These try to get at *why* users hold certain beliefs.)*
    * "Where do you think LLMs get their information about energy consumption?" (Open-ended or Multiple Choice: Training data, Real-time web search, Specific energy databases, Just guessing/making it up)
    * "Do you believe LLMs can access real-time energy prices from your specific utility provider?" (Yes/No/Unsure)
    * "To what extent do you think an LLM's energy recommendations consider factors like your local climate or the age of your home?" (Scale: Not at all to A great extent)
    * "How likely do you think it is that an LLM might give energy advice that is outdated or incorrect due to its training data?" (Scale: Very Unlikely to Very Likely)
    * (Open-ended) "What are the biggest strengths you see in using an LLM for energy advice?"
    * (Open-ended) "What are your biggest concerns about relying on an LLM for energy advice?"

## Brainstorming Pre-Post Interaction Design

This approach aims to measure baseline beliefs, provide a concrete experience with an LLM on relevant tasks, and then re-measure beliefs to assess calibration shifts.

**Possible Workflow:**

1.  **Pre-Interaction Measurement (Time 1):**
    * Administer key survey questions measuring baseline beliefs about LLM accuracy, utility, and trustworthiness for energy estimation and planning (select core items from brainstorm above).
    * Optionally, administer the Attari-style estimation task for participants' *own* estimates.

2.  **Brief Interaction Phase:**
    * Participants engage in a short, standardized interaction with an LLM (could be a simulated interface within the survey or a brief guided interaction with a live LLM like ChatGPT/Gemini via API or direct link).
    * **Task Examples:**
        * *Estimation Task:* Ask the LLM to estimate the energy use of 2-3 specific appliances (e.g., "Estimate the kWh used by a standard microwave oven in 10 minutes"). *Include one where the LLM might be expected to perform well and one where it might struggle or give a generic answer.*
        * *Planning Task:* Ask the LLM for 2-3 energy-saving tips relevant to a specific situation (e.g., "Suggest 3 ways to reduce heating costs in a small apartment"). *Perhaps include a prompt designed to elicit a potentially generic or even slightly flawed response.*
        * *Fact-Checking Task:* Present a simple energy-related statement and ask the LLM to verify it.
    * **Control:** Crucially, the prompts and expected LLM behavior should be standardized or controlled (using a fixed set of pre-generated responses presented as if from an LLM, or tightly controlled API prompts) to ensure comparable experiences. You might even manipulate the *quality* of the LLM responses shown (e.g., some participants see accurate answers, others see plausible but inaccurate ones).

3.  **Post-Interaction Measurement (Time 2):**
    * Re-administer the *same* key belief questions from Time 1.
    * Add questions about the *specific interaction experience*:
        * "How accurate was the LLM during the task you just completed?"
        * "How helpful was the LLM for the specific questions asked?"
        * "How much did this interaction change your overall view of LLMs for energy tasks?" (Scale: Decreased my confidence significantly to Increased my confidence significantly)
        * "Based on this interaction, how likely would you be to use this LLM again for energy questions?"

**What this design measures:** Changes in self-reported beliefs (accuracy, utility, trust) potentially due to the interaction experience. It helps assess how direct, albeit brief, experience calibrates initial perceptions.

## Brainstorming Task-Based Measures

These move beyond self-report to observe behavior related to evaluating or using LLM outputs.

1.  **LLM Output Evaluation Task:**
    * **Setup:** Present participants with pre-generated LLM responses to specific energy questions or requests (e.g., an estimate for appliance energy use, a list of saving tips). Include a mix of high-quality and low-quality (e.g., inaccurate, generic, unsafe) responses.
    * **Task:** Ask participants to:
        * Rate the perceived accuracy, usefulness, and trustworthiness of *each specific response*.
        * Identify any potential errors or weaknesses in the responses.
        * Indicate whether they would follow the advice given.
    * **Measures:** Accuracy of participant evaluations (did they spot the errors?), correlation between perceived quality and actual quality, willingness to rely on specific outputs.

2.  **Information Source Selection Task:**
    * **Setup:** Pose an energy-related question (e.g., "How much could I save by upgrading my thermostat?"). Offer participants the option to get information from different sources presented side-by-side or sequentially (e.g., "Answer from LLM", "Answer from EnergyStar.gov", "Answer from a basic calculator", "Answer from a simulated 'Energy Expert'").
    * **Task:** Participants choose which source(s) they want to consult or indicate which source's answer they find most credible/useful.
    * **Measures:** Preference for LLM vs. other sources, perceived credibility ranking.

3.  **Estimation Anchoring Task:**
    * **Setup:** Ask participants to provide their own estimate for an appliance's energy use (Attari-style). Then, present them with an estimate supposedly generated by an LLM for the same appliance.
    * **Task:** Allow participants to revise their initial estimate after seeing the LLM's estimate.
    * **Measures:** Degree of adjustment towards the LLM's estimate (quantifies reliance/anchoring). This can be compared across participants based on their general trust levels or literacy scores. You could manipulate the LLM's stated confidence or the plausibility of its estimate.

4.  **"Wizard-of-Oz" Planning Task:**
    * **Setup:** Participants interact with what they believe is an LLM (but is actually controlled or simulated) to create a simple energy-saving plan for a hypothetical scenario.
    * **Task:** Participants ask questions or request specific types of advice. The "LLM" provides responses (potentially manipulated for quality/accuracy).
    * **Measures:** Types of questions asked, reliance on LLM suggestions in the final plan, participant satisfaction with the process, qualitative analysis of the interaction transcript.

**Combining Approaches:**

Often, the most robust approach involves combining methods. For instance:
* Start with survey questions (baseline beliefs).
* Include a task-based measure (e.g., output evaluation or estimation anchoring) to get behavioral data.
* Follow up with post-task survey questions to link behavior back to perceived trust/accuracy.

This triangulation can provide richer insights into the complex interplay between mental models, trust, and reliance on LLMs for energy management tasks.



------

# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1

**1. Measuring Lay Beliefs about LLM Accuracy, Trustworthiness, and Utility for Energy Tasks**

The provided sources consistently highlight that standard, validated scales for measuring perceived LLM accuracy or utility *specifically* for household energy tasks do not currently exist. Therefore, developing custom survey items is necessary to capture these constructs. These items should operationalize the specific energy tasks of interest, such as estimating appliance energy use or creating personalized conservation plans. Drawing inspiration from existing energy perception and AI trust literature can inform question wording and format.

*   **Perceived Factual Accuracy (Non-Numerical):** This dimension assesses beliefs about an LLM's ability to provide correct qualitative or comparative information about energy.
    *   *Approach:* Use Likert-type scales (e.g., 1=Very Inaccurate, 7=Very Accurate or 1=Strongly Disagree, 7=Strongly Agree).
    *   *Example Questions:*
        *   "How accurate do you believe a state-of-the-art AI chatbot (like ChatGPT or Gemini) would be at answering factual questions about energy, such as identifying the most energy-efficient type of light bulb?"
        *   "I am confident that an AI chatbot can accurately explain basic energy concepts (e.g., the difference between energy and power)."
        *   "How reliable do you think an AI chatbot would be at verifying whether a common energy-saving tip is true or false?"
*   **Perceived Estimation Accuracy (Numerical):** This focuses on beliefs about an LLM's quantitative competence in the energy domain, relevant given known human difficulties with energy estimations (Attari et al., 2010).
    *   *Approach:* Use Likert-type scales for perceived accuracy and confidence in numerical outputs. Frame questions around specific tasks and units (e.g., kWh, cost). Borrow the list of appliances from Attari et al. (2010) to ensure relevance to common household items spanning a range of energy uses.
    *   *Example Questions:*
        *   "How accurate do you believe an AI chatbot would be at estimating the *annual electricity consumption* (in kWh) of a typical refrigerator?"
        *   "On a scale of 1 to 7, how confident would you be in an AI chatbot's ability to estimate the *hourly energy use* of a microwave, using a 100-Watt bulb as a reference point?"
        *   "How accurate do you think an AI chatbot would be at calculating the *lifetime operating cost* of a specific appliance?"
*   **Perceived Planning Competence/Utility:** This assesses beliefs about an LLM's capacity for complex synthesis, personalization, and strategic reasoning to create actionable energy-saving plans. Perceived utility relates to the perceived helpfulness of the output for achieving a goal.
    *   *Approach:* Use Likert-type scales for perceived effectiveness, realism, usefulness, and impact. Frame questions around the task of generating a personalized plan.
    *   *Example Questions:*
        *   "How useful do you believe an AI chatbot would be for creating a *personalized* energy-saving plan tailored to your specific household situation?"
        *   "How effective do you think an energy-saving plan generated by an AI chatbot would be at actually reducing your household energy consumption?"
        *   "How realistic or practical do you believe the recommendations in an AI-generated energy-saving plan would typically be?"
        *   "How confident would you be in an AI chatbot's ability to account for important details about my home when generating advice?"
*   **Task-Specific Trust and Intended Reliance:** While perceived accuracy/utility is about the output, task-specific trust and reliance are about the willingness to depend on the AI for that output. This differs from general trust in AI.
    *   *Approach:* Use Likert-type scales (e.g., 1=Do not trust at all, 7=Trust completely; 1=Very Unlikely, 7=Very Likely). Frame items explicitly linking trust/reliance to the specific energy tasks and the AI agent. Adapt items from general trust scales but make them task-specific. The Trust-In-LLMs Index (TILLMI) captures general LLM trust dimensions like reliance, which could be adapted.
    *   *Example Questions:*
        *   "How much would you *trust* an AI chatbot's estimate of your appliance's energy use to be reliable?"
        *   "How likely would you be to *rely* solely on an AI chatbot's suggested energy-saving plan without cross-referencing other sources?"
        *   "How confident would you be in acting on the energy-saving *advice* provided by an AI chatbot?"
*   **Attributional Beliefs (Mental Models of Operation):** To understand *why* users hold certain beliefs about accuracy or trust, probing their underlying assumptions about how LLMs work in the energy context is valuable.
    *   *Approach:* Use Likert-type agreement scales (e.g., 1=Strongly Disagree, 7=Strongly Agree). Items can explore beliefs about data sources, potential for error, and the nature of AI processing.
    *   *Example Questions:*
        *   "AI chatbots have access to comprehensive, up-to-date databases of appliance energy consumption."
        *   "AI chatbots might sometimes make up numbers or facts about energy that sound plausible but are incorrect."
        *   "AI chatbots truly understand energy principles in a way similar to a human expert."
        *   "AI chatbots primarily work by finding patterns in text, rather than having real knowledge about energy."
*   **Comparative Judgments:** Directly asking participants to compare LLMs to other information sources (humans, websites, etc.) can provide insight into their perceived relative capabilities.
    *   *Approach:* Use Likert-type comparison scales (e.g., 1=Much Less Capable, 4=About the Same, 7=Much More Capable) or ranking tasks.
    *   *Example Questions:*
        *   "Compared to finding information on a government energy website (e.g., Energy Star), how capable do you think an AI chatbot is at providing accurate estimates of appliance energy use?"
        *   "Compared to asking an energy efficiency expert, how capable do you think an AI chatbot is at creating a personalized energy-saving plan?"
        *   "Please rank the following sources from 1 (Most Accurate) to 4 (Least Accurate) for getting reliable information about home energy saving: [AI Chatbot, Government Website, Online Forum, Energy Consultant]."

**2. Study Design Variation: Pre-Interaction -> Interaction -> Post-Interaction**

The proposed study design is a cross-sectional online survey. While this allows for assessing correlations between individual differences (literacies, numeracy, general trust) and beliefs/intentions, it doesn't capture how beliefs change based on direct experience with an LLM or allow observation of actual interaction behaviors. A pre-interaction -> interaction -> post-interaction design would offer a richer investigation into the cognitive processes involved in forming and updating mental models and trust in AI.

*   **Pre-Interaction Phase:**
    *   Administer measures of baseline individual differences: objective numeracy (Berlin Numeracy Test), multidimensional energy literacy (e.g., ELQ/ELS short form cognitive, affective, behavioral subscales + Attari estimation/choice tasks for misperceptions), and AI literacy (MAILS short form + potential objective items).
    *   Measure participants' *initial* beliefs about LLM accuracy, utility, and task-specific trust for energy tasks *before* they interact with one. This provides a baseline perception uninfluenced by immediate experience. Use a subset of the custom questions brainstormed above.
*   **Interaction Phase:**
    *   Participants are given access to a live LLM (or a simulated interaction) and instructed to perform a set of defined energy-related tasks (e.g., "Ask the AI how much energy your refrigerator uses per year," "Ask the AI to create a plan to reduce your electricity bill by 15%").
    *   This phase allows for observing user behavior: What questions do they ask? How do they phrase them? Do they ask follow-up questions? Do they try to verify the AI's responses during the interaction (fact-checking behavior)? These behaviors themselves can be operationalized as measures of reliance or critical evaluation.
    *   The LLM's outputs for each participant should be recorded. These outputs could be benchmarked against expert knowledge or actual energy data to assess the *actual* accuracy or quality of the AI's response for each user. This allows researchers to measure the "calibration gap" between perceived and actual accuracy for *each participant*.
*   **Post-Interaction Phase:**
    *   Participants complete the survey section measuring beliefs about LLM accuracy, utility, and task-specific trust *again*. Measuring these constructs after interaction allows for assessing whether and how direct experience with the AI on energy tasks influenced their perceptions.
    *   Include items probing specific aspects of the interaction experience: perceived fluency, helpfulness of the specific answers, satisfaction with the interaction, perceived confidence of the AI, etc.
    *   Measure self-reported willingness to use LLMs for energy decisions in the future and frequency of past use. Direct experience is a strong predictor of future behavior (Chen & Zhao, 2025).
    *   Measure general trust and distrust in AI using scales like the TPA-Revised or Semantic-Differential AI-Trust scales. Examining changes in general trust after specific interactions can be informative.

From a cognitive perspective, this design captures the dynamic process of mental model formation and updating (Norman, 1983). Initial beliefs (pre-interaction) are based on prior knowledge, general AI perceptions, and heuristics. The interaction provides new evidence – the AI's actual performance and interaction style. This evidence is then processed and integrated into the existing mental model, potentially leading to revised beliefs and recalibrated trust (post-interaction). Cognitive biases, such as confirmation bias or the fluency heuristic, might influence how users interpret the AI's output (Fernandes et al., 2024; Horowitz & Kahn, 2023).

**3. Task-Based Ways of Measuring Mental Models and Beliefs**

While self-report surveys are valuable, task-based measures can provide complementary insights into user cognition and behavior regarding LLMs. These approaches often require more complex study setups but can directly reveal how users interact with, evaluate, and rely on AI outputs in realistic scenarios.

*   **Energy Estimation/Evaluation Task (Drawing on Attari et al., 2010):**
    *   *Approach:* Instead of *asking* about perceived accuracy, *present* participants with energy estimates for specific appliances or actions that were supposedly generated by an LLM. These estimates could be systematically varied to be accurate, slightly inaccurate (mirroring common human biases), or wildly incorrect ("hallucinations").
    *   *Measurement:* Ask participants to evaluate the correctness of *each specific estimate*. This directly measures their ability to detect errors in AI output related to energy values, providing a behavioral measure of calibrated accuracy judgment. Compare their evaluations to their own estimation biases measured separately.
*   **Behavioral Choice/Reliance Task (Drawing on Marghetis et al., 2019):**
    *   *Approach:* Present participants with decision scenarios related to energy, such as choosing the more energy-efficient appliance or deciding whether to implement a particular energy-saving action. Provide an LLM recommendation for the choice.
    *   *Measurement:* Observe which choice participants make. If the LLM provides a suboptimal or incorrect recommendation (e.g., recommending a less efficient appliance), observing whether the participant follows it provides a measure of overreliance or automation bias in the energy domain. This taps into the behavioral manifestation of trust and reliance. Buçinca et al. (2021) discuss using such tasks to measure reliance and calibrate trust.
*   **Fact-Checking Task (Drawing on Rheu & Cho, 2025):**
    *   *Approach:* Give participants energy information or estimates from an LLM and instruct them that they have access to external resources (e.g., a database, a simulated search engine) to verify the information.
    *   *Measurement:* Track whether participants choose to verify the information, which resources they use, and whether they successfully identify inaccuracies. This measures critical evaluation and verification behavior related to AI literacy ("Detect AI") and perceived credibility.
*   **Planning Task with Benchmarking:**
    *   *Approach:* Ask participants to use the LLM to generate an energy-saving plan for a hypothetical (or their own) household.
    *   *Measurement:* Evaluate the quality of the generated plan using criteria derived from expert knowledge or heuristics (Kantenbacher & Attari, 2021). Measures could include the inclusion of high-impact actions (efficiency improvements vs. curtailment), personalization based on the provided profile, feasibility, and completeness. User ratings of the plan's quality could also be collected, comparing user perception to objective quality.
*   **Think-Aloud Protocols:**
    *   *Approach:* During any of the above tasks (estimation evaluation, behavioral choice, planning), ask participants to vocalize their thoughts as they interact with the AI or evaluate its output.
    *   *Measurement:* Analyze the verbal protocols to infer participants' mental models of how the LLM works, why they trust or distrust specific outputs, how they attempt to verify information, and what heuristics they use to evaluate the AI's suggestions. This qualitative method provides rich insight into the cognitive processes underlying their beliefs and behaviors.



------

# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1


**Brainstorming Approaches and Question Types for Measuring Lay Beliefs about LLM Accuracy and Trustworthiness for Energy Tasks**

The goal is to elicit participants' *subjective perceptions* about LLMs' competence and reliability specifically within the household energy domain. This can be approached by asking participants to rate their beliefs using Likert-type scales, grounded in hypothetical scenarios or actual LLM outputs.

1.  **Perceived Factual Accuracy (General Energy Domain):**
    *   This dimension assesses beliefs about the LLM's capability to provide correct, non-numerical information related to fundamental energy concepts or common practices. It probes perceived reliability for retrieving established domain knowledge.
    *   **Approach:** Present participants with general energy-related statements or questions that an LLM might answer and ask them to rate their belief in the LLM's accuracy.
    *   **Question Examples (Likert Scale: 1=Very Inaccurate, 7=Very Accurate):**
        *   "How accurate do you believe a state-of-the-art AI chatbot would be at answering a question like: 'Which type of water heater generally uses less energy, tank or tankless?'"
        *   "How accurate do you believe an AI chatbot would be at verifying common energy myths, such as whether turning off lights in an unoccupied room saves energy?"
        *   "How accurate do you believe an AI chatbot would be at explaining the difference between energy and power?" (Drawing on conceptual knowledge items from energy literacy scales).
        *   "How likely is it that an LLM might confidently state something incorrect about a basic energy principle?" (Reverse coded; tapping into awareness of hallucination risk).

2.  **Perceived Estimation Accuracy (Appliance Energy Use):**
    *   This focuses on perceived quantitative competence, directly addressing whether users believe LLMs can provide accurate numerical estimates for appliance energy consumption, a task known to challenge human intuition. Aligning these questions with appliances used in human energy perception research (e.g., Attari et al., 2010) is critical for testing H1.
    *   **Approach:** Present participants with a list of common household appliances (covering a range of energy use) and ask for their perception of an LLM's accuracy in estimating energy consumption metrics (e.g., kWh/year, operating cost).
    *   **Question Examples (Likert Scale: 1=Very Inaccurate, 7=Very Accurate; repeat for several appliances):**
        *   "How accurate do you believe an AI chatbot would be at estimating the annual energy use (e.g., in kWh per year) of a typical refrigerator?"
        *   "How accurate do you believe an AI chatbot would be at estimating the amount of energy used by an electric clothes dryer during one cycle?"
        *   "How accurate do you believe an AI chatbot would be at estimating the energy used by an LED light bulb left on for 8 hours?"
        *   (Optional: For H1 comparison) "To what extent do you believe an AI chatbot's estimates of appliance energy use would match expert estimates?" (Requires presenting expert estimates or having participants make their own estimates first for comparison).

3.  **Perceived Planning Competence & Utility (Personalized Energy Conservation Plans):**
    *   This assesses beliefs about the LLM's capability for more complex tasks involving synthesis, personalization, and strategic recommendation. It probes perceived effectiveness and realism of LLM-generated plans.
    *   **Approach:** Describe the task of creating a personalized energy-saving plan and ask participants to rate their beliefs about an LLM's capability and the resulting plan's utility.
    *   **Question Examples (Likert Scale: 1=Not at all Capable/Useful, 7=Highly Capable/Useful):**
        *   "How capable do you believe an AI chatbot would be at creating a personalized energy-saving plan for a household like yours, based on information you provide?"
        *   "How useful do you believe a personalized energy-saving plan generated by an AI chatbot would be for helping you actually reduce energy use in your home?"
        *   "How realistic do you think the steps recommended in an AI-generated energy-saving plan would be for a typical household?"
        *   "How confident would you be that an AI-generated energy-saving plan would actually lead to noticeable savings?"

4.  **Task-Specific Trust and Intended Reliance:**
    *   These items directly measure trust and reliance intentions tied to the specific energy tasks, distinct from general AI trust. While TILLMI measures general LLM reliance, tailoring items to the energy context is crucial. This aligns with trust calibration theories emphasizing domain and task specificity.
    *   **Approach:** After participants consider perceived accuracy/utility for a task, directly ask about their trust in the LLM's output and their likelihood of relying on it. Wording can be adapted from validated trust dimensions like competence and reliability.
    *   **Question Examples (Likert Scale: 1=Do not trust at all, 7=Trust completely):**
        *   "How much would you trust an AI chatbot's estimate for the energy use of a specific appliance?"
        *   "How much would you trust an energy-saving plan generated by an AI chatbot to be reliable and effective?"
        *   (Likert Scale: 1=Very Unlikely, 7=Very Likely) "How likely would you be to rely on an AI chatbot's energy estimate when making a purchase decision for a new appliance?"
        *   "How likely would you be to try implementing an energy-saving action recommended by an AI chatbot without seeking a second opinion?"
        *   (Adapting TILLMI) "How much would you feel comfortable relying on an AI chatbot for information about reducing your energy bill?"

5.  **Attributional Beliefs / Mental Models:**
    *   These probes help understand *why* users hold their perceptions of accuracy and trust, tapping into their tacit theories about LLM operation. Do they see the LLM as an expert, a database, or a sophisticated pattern-matcher? This informs the mental models underlying trust calibration.
    *   **Approach:** Present statements reflecting potential beliefs about LLM capabilities or limitations in the energy context and ask for agreement ratings.
    *   **Question Examples (Likert Scale: 1=Strongly Disagree, 7=Strongly Agree):**
        *   "The AI chatbot has access to comprehensive, up-to-date databases of appliance energy use."
        *   "The AI chatbot understands energy principles in a way similar to a human expert."
        *   "The AI chatbot's energy advice is based primarily on recognizing patterns in text from the internet, not true understanding."
        *   "The AI chatbot can accurately infer details about my specific home and lifestyle to give truly personalized advice."
        *   "An AI chatbot might sometimes make up numbers or facts about energy use that are incorrect but sound plausible."

6.  **Comparative Judgments (Optional Extension):**
    *   Comparing perceived LLM capability to other information sources (human experts, energy utility websites, general internet search) can provide valuable context.
    *   **Approach:** Ask participants to rank sources or rate LLM capability relative to others.
    *   **Question Example:**
        *   "Compared to getting information from your local energy utility's website, how accurate do you believe an AI chatbot would be at providing energy-saving tips?" (Scale: Much Less Accurate - Much More Accurate).
        *   "If you wanted an accurate estimate of your refrigerator's energy use, which source would you trust the most? (Rank options: AI Chatbot, Energy Utility Website, Appliance Manual, Friend/Family, My Own Knowledge)."

**Brainstorming a Pre-Interaction, Interaction, Post-Interaction Approach**

While the current proposal describes a cross-sectional design, a longitudinal approach involving interaction could provide richer data on how actual exposure shapes perceptions. Here's how a pre-interaction, interaction, post-interaction sequence might work for measuring beliefs:

*   **Phase 1: Pre-Interaction Survey (Baseline Beliefs)**
    *   **Purpose:** Measure participants' initial, baseline beliefs about LLMs' capabilities for energy tasks *before* any direct interaction or exposure to specific outputs in the study context. This captures pre-conceptions based on media coverage, prior experience, or general mental models of AI.
    *   **Measurement:** Administer the custom questions developed in points 1-6 above, phrased hypothetically (e.g., "How accurate do you *believe* an LLM would be...?"). Also collect individual difference measures (Numeracy, Energy Literacy, AI Literacy, General Trust/Distrust) in this phase.

*   **Phase 2: Interaction / Exposure to LLM Outputs**
    *   **Purpose:** Provide participants with a standardized interaction experience or exposure to specific LLM-generated content related to the energy tasks. This provides concrete stimuli upon which they can base their subsequent evaluations.
    *   **Implementation Options:**
        *   **Passive Exposure:** Present participants with screenshots of actual LLM outputs responding to pre-defined energy queries (e.g., an LLM estimating energy use for a specific appliance, an LLM generating a sample energy-saving plan for a hypothetical household). This allows for controlled exposure.
        *   **Active Interaction:** Allow participants to interact with an LLM directly using pre-defined prompts related to energy estimation and planning. This is more ecologically valid but introduces variability in user prompting and LLM responses.
        *   **Guided Evaluation:** Combine exposure with evaluation. For example, show an LLM's estimated kWh for an appliance, then *immediately* ask for perceived accuracy and trust for *that specific estimate* before moving to the next item. This grounds the perception measure in a concrete example.

*   **Phase 3: Post-Interaction Survey (Updated Beliefs and Reliance Measures)**
    *   **Purpose:** Measure participants' beliefs about LLM capabilities *after* exposure to specific outputs or interaction. Compare these beliefs to the baseline measured in Phase 1 to assess changes or recalibration. Also measure willingness/frequency of use and potentially behavioral reliance.
    *   **Measurement:**
        *   **Perceived Accuracy/Utility/Trust (Post-Interaction):** Re-administer the custom belief and trust questions from Phase 1. Wording might shift slightly (e.g., "Based on the output you saw/the interaction you just had, how accurate/useful/trustworthy do you believe AI chatbots are for...?"). Measuring these immediately after evaluating specific outputs in Phase 2 could also serve this purpose.
        *   **Willingness/Frequency of Use:** Administer custom items measuring self-reported intention and past frequency of using LLMs for energy tasks.
        *   **Behavioral Reliance (Optional but valuable):** Include a behavioral task where participants are presented with an energy-related decision (e.g., choosing an appliance, selecting a conservation action) and are given the option to consult or rely on an LLM suggestion. This directly measures whether perceived trust translates into actual reliance behavior. For instance, an approach similar to the explanation-gating task or behavioral choice tasks could be adapted.

This longitudinal design, while more complex than a cross-sectional survey, would allow for analyzing the dynamics of belief formation and trust calibration in response to direct experience with LLM outputs in the energy domain, providing deeper insights into the processes described in the proposal. Regardless of the design choice, careful development and piloting of the custom measures for perceived accuracy, utility, and task-specific trust are essential for capturing the nuances of lay beliefs in this critical domain.




--------


# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1


Drawing upon frameworks from cognitive psychology and research on human-automation interaction and energy literacy, measuring beliefs about Large Language Model (LLM) accuracy and trustworthiness, particularly for domain-specific tasks like energy management, requires a multi-faceted approach. Such measurement should assess not only general perceptions but also task-specific beliefs and potentially shift in beliefs following interaction. This response outlines potential survey questions and a general experimental design, grounded in the provided sources.

**Theoretical Framing**

Perceptions of technology capabilities and trustworthiness are shaped by users' mental models of the system, their prior experiences, and the information presented to them. Mental models, in this context, are internal representations of how an LLM functions and what it is capable of doing. These models influence expectations and guide interactions. Trust in automation is often conceptualized along cognitive and affective dimensions. Cognitive trust is based on rational assessments of competence, reliability, and consistency, often tied to performance metrics like accuracy. Affective trust relates to emotional bonds, comfort, and perceived benevolence or care. For LLMs, which can engage in human-like conversational exchanges, these dimensions are particularly relevant.

Energy literacy research highlights that understanding complex domains involves not just knowledge, but also attitudes, values, self-efficacy (belief in one's ability to influence outcomes), and behavioral intentions. Misperceptions about energy use are common and systematic. Effective conservation often requires accurate knowledge and appropriate heuristics. Applying these concepts to LLMs assisting with energy tasks suggests that perceived accuracy and utility will depend on whether users believe the LLM possesses the necessary "knowledge" (factual accuracy), "reasoning" (ability to process complex information), "understanding" (capacity for personalization), and is "trustworthy" (reliable and safe to rely upon) for this specific domain.

**Survey Questions and Approach**

The proposed measurement strategy involves distinct phases: assessing initial beliefs (pre-interaction), facilitating interaction with an LLM on specific energy tasks, and re-assessing beliefs, perceived accuracy, and utility (post-interaction).

**Phase 1: Pre-Interaction Assessment (Initial Beliefs)**

This phase aims to capture baseline beliefs about LLMs generally, and then specifically for energy tasks, before direct interaction influences perceptions. Scales should employ formats common in the sources, such as Likert-type scales (e.g., 1-5 or 1-7) and potentially semantic differentials.

*   **General Beliefs about LLM Capabilities and Trust:**
    *   Adapt items measuring general perceptions of LLM capabilities. Examples could include:
        *   LLMs are knowledgeable.
        *   LLMs are smart.
        *   LLMs are accurate.
        *   LLMs are reliable.
        *   LLMs are trustworthy.
        *   LLMs are capable of reasoning about complex information.
        *   LLMs are capable of doing computations.
    *   Adapt items from general LLM trust scales like the TILLMI, focusing on cognitive dimensions relevant to information accuracy and reliability:
        *   I can rely on LLMs to provide accurate information.
        *   LLMs perform tasks mostly with competence and precision.
        *   I can rely on LLMs not to make my tasks more difficult by careless work.
        *   I trust the results from LLMs.
    *   Include items on perceived limitations:
        *   LLMs sometimes "hallucinate" or make things up.
        *   It is difficult to know when an LLM's answer is correct.

*   **Beliefs Regarding Task A: Estimating Appliance Energy Use:**
    *   Assess perceived LLM capability for this specific quantitative task:
        *   How capable do you believe LLMs are of accurately estimating the energy use of household appliances? (Scale: 1=Not at all capable to 7=Highly capable)
        *   I would trust an LLM to provide accurate estimates of how much energy different appliances use.
        *   An LLM could help me understand which household appliances use the most energy.
    *   Questions could probe beliefs about LLM knowledge sources for this task:
        *   I believe LLMs have access to up-to-date information about appliance energy consumption.
        *   I believe LLMs use reliable methods to calculate energy estimates.

*   **Beliefs Regarding Task B: Creating Personalized Energy Conservation Plans:**
    *   Assess perceived LLM capability for this more complex, personalized task:
        *   How capable do you believe LLMs are of creating a personalized plan for me to save energy?
        *   I would trust an LLM to give me relevant and effective advice on how to reduce my energy use.
        *   An LLM could understand my personal energy habits and recommend suitable actions.
        *   An LLM could help me identify energy-saving actions that are most impactful for my situation.
        *   I would feel comfortable sharing information about my household's energy use with an LLM. (Relates to affective trust and perceived benevolence/safety).
    *   Include items on the perceived *utility* of such a plan from an LLM:
        *   A personalized energy conservation plan from an LLM would be useful to me.
        *   A plan from an LLM would help me save money on energy bills.
        *   A plan from an LLM would help me reduce my environmental impact.

*   **Comparative Judgments:**
    *   Include items comparing LLMs to other sources for these tasks:
        *   I would trust energy information from an LLM more than information from a standard search engine.
        *   I would trust energy information from an LLM more than advice from a utility company.
        *   I would trust energy information from an LLM more than advice from friends or family.
        *   LLMs are better at estimating appliance energy use than I am.
        *   LLMs could create a better personalized energy plan for me than I could create myself.

**Phase 2: LLM Interaction**

Participants would interact with a generic or specified LLM (e.g., "the AI assistant") on specific energy-related tasks representative of the types of judgments or plans discussed in Phase 1.
*   **Task A Example (Estimation):** Present participants with a list of household appliances and ask them to use the LLM to estimate the energy use of each, perhaps relative to a baseline as in Attari et al. or Marghetis et al.. Participants would input prompts into the LLM and record its responses. This task requires the LLM to provide quantitative or comparative information.
*   **Task B Example (Personalized Plan):** Provide the LLM with a brief description of a hypothetical (or their own, if appropriate for study design) household energy situation (e.g., type of dwelling, climate, typical habits like using a clothes dryer or AC frequently). Ask the LLM to generate a personalized energy conservation plan or recommend the most effective actions for this situation.

During this phase, qualitative data could be collected via talk-aloud protocols, similar to those used in energy heuristic studies, to understand user strategies, challenges, and reactions during the interaction. Behavioral data, such as the prompts used, the duration of interaction, and whether they attempt to verify LLM information (fact-checking behavior), could also be recorded.

**Phase 3: Post-Interaction Assessment (Updated Beliefs, Perceived Accuracy, Utility, Confidence)**

Following interaction, participants complete a second survey. This phase re-assesses beliefs and adds questions specifically about the interaction experience and the LLM's performance on the tasks.

*   **Re-assess General Beliefs:** Re-administer key general capability and trust items from Phase 1 to capture any shifts in perception after direct use.
*   **Perceived LLM Accuracy and Performance (Task Specific):**
    *   Focus on the LLM's output for the specific tasks performed:
        *   How accurate do you believe the LLM's energy estimates for the appliances were? (Scale: 1=Very inaccurate to 7=Very accurate).
        *   How reliable was the information provided by the LLM regarding energy use?.
        *   How helpful was the LLM in estimating appliance energy use?
        *   How accurate do you believe the personalized energy plan created by the LLM was?.
        *   How relevant was the advice provided in the energy conservation plan to the household situation described?
        *   How actionable were the recommendations in the energy conservation plan?
        *   How helpful was the LLM in creating a personalized energy conservation plan?
    *   Include measures of confidence in the LLM's output:
        *   How confident are you that the energy estimates provided by the LLM are correct? (Scale: e.g., 1=Not at all confident to 4=Extremely confident)
        *   How confident are you in the accuracy of the personalized energy conservation plan provided by the LLM?
*   **Perceived LLM Utility:**
    *   Beyond task-specific helpfulness, assess overall utility from the interaction:
        *   Overall, how useful was interacting with the LLM for these energy tasks?
        *   Would you use an LLM again for estimating energy use?
        *   Would you use an LLM again for creating a personalized energy conservation plan? (Relates to intentions to use).
*   **Influence of Interaction:**
    *   Explicitly ask about the impact of the interaction on their beliefs:
        *   Did interacting with the LLM change your overall beliefs about LLMs? (Yes/No, with open-ended explanation)
        *   Did interacting with the LLM change your beliefs about the accuracy of LLMs for energy tasks? (Yes/No, with open-ended explanation)
*   **Comparative Judgments (Post-Interaction):**
    *   Re-administer comparative items or phrase them based on the experience:
        *   After this experience, would you trust energy information from this LLM more than a search engine? More than a human expert?
        *   Based on its performance, how does this LLM compare to other sources of energy information you have used in the past?

**Rationale for the Approach:**

This pre/post design with an intervening interaction phase aligns with cognitive theories on how exposure and experience update internal representations and influence subsequent judgments and behaviors. By measuring beliefs before interaction, we capture initial expectations or mental models. The interaction provides participants with concrete evidence of the LLM's performance on domain-specific tasks. The post-interaction measurement allows us to assess how this experience modifies their initial beliefs, quantify their perception of the LLM's actual accuracy and utility *for the tasks performed*, and measure their confidence in the LLM's output. Comparing pre- and post-scores reveals the impact of direct experience. Including comparative judgments throughout acknowledges that users evaluate new technologies relative to existing alternatives.

The inclusion of specific energy tasks grounds the measurement in concrete, understandable scenarios, reducing ambiguity compared to purely abstract questions about LLM capabilities. Drawing on established energy literacy tasks like appliance estimation provides a basis for evaluating perceived accuracy against objective benchmarks (actual energy consumption). Measuring perceived utility is crucial as it links perceived capability and trust to practical relevance and potential adoption or reliance.

This comprehensive approach, blending general perception scales, task-specific belief items, comparative judgments, and a pre/post interaction design, informed by frameworks from both AI trust and energy literacy research, provides a robust method for investigating human beliefs about LLMs in the context of energy tasks. Further validation and refinement of these measures would be necessary for specific research contexts.





---------


# https://aistudio.google.com/prompts/1d3t7DUnNEXkJLVtXmNma9-p7PnlK4jdA

**General Approach Considerations:**

1.  **Specify the LLM:** Decide whether to ask about a specific LLM (e.g., "ChatGPT," "Gemini"), a general class ("advanced AI assistants like ChatGPT"), or allow participants to think of the one they use most. Using a general class might be best for broader applicability. Let's use "[LLM Name]" as a placeholder.
2.  **Define Terms (Briefly):** Ensure participants understand what you mean by "estimating appliance energy use" (e.g., providing kWh/year or cost) and "personalized conservation plans" (e.g., tailored tips based on home/habits).
3.  **Response Scale:** Use consistent Likert scales (e.g., 1-7) for most belief/attitude items for easier comparison and analysis. Anchors should be clearly labelled (e.g., 1=Very Inaccurate, 7=Very Accurate; 1=Strongly Distrust, 7=Strongly Trust).
4.  **Structure:** It might be clearest to group questions by task (Task A then Task B) or by construct (all Accuracy questions, then all Utility, then all Trust). Grouping by task might flow better.

**I. Measuring Beliefs (Pre-Interaction)**

**A. Task A: Estimating Appliance Energy Use**

*   **Perceived Accuracy:**
    *   Q1a (Overall Accuracy): "How accurate do you believe [LLM Name] generally is at estimating the typical energy consumption (e.g., in kilowatt-hours per year or annual cost) of common household appliances like refrigerators, air conditioners, or televisions?" (1=Very Inaccurate to 7=Very Accurate)
    *   Q2a (Numerical Confidence): "How confident are you that the *specific numbers* (e.g., kWh, dollars) provided by [LLM Name] for appliance energy use are factually correct?" (1=Not at all Confident to 7=Extremely Confident)
    *   Q3a (Error Frequency - Optional %): "If you asked [LLM Name] for the energy use of 10 different appliances, for how many do you think it would provide an estimate that is reasonably close (within ~25%) to the real value?" (Scale: 0 out of 10 to 10 out of 10)
*   **Perceived Utility:**
    *   Q4a: "How useful do you think asking [LLM Name] about an appliance's energy use would be when making a decision, like whether to buy a new appliance or change how you use an existing one?" (1=Not at all Useful to 7=Extremely Useful)
*   **Trustworthiness (Specific to Task A):**
    *   Q5a: "How much would you *trust* [LLM Name] to provide reliable energy consumption figures for appliances?" (1=Distrust Completely to 7=Trust Completely)

**B. Task B: Creating Personalized Energy Conservation Plans**

*   **Perceived Quality/Effectiveness (Instead of pure 'Accuracy'):**
    *   Q1b (Overall Effectiveness): "How effective do you believe [LLM Name] generally is at creating personalized energy-saving plans that would actually help someone reduce their household energy consumption?" (1=Not at all Effective to 7=Extremely Effective)
    *   Q2b (Personalization Quality): "How well do you think [LLM Name] can tailor an energy-saving plan specifically to an individual's home characteristics, existing appliances, and lifestyle habits?" (1=Very Poorly to 7=Very Well)
    *   Q3b (Actionability): "How practical and easy-to-follow do you think the recommendations in an energy plan from [LLM Name] would be?" (1=Very Impractical to 7=Very Practical)
*   **Perceived Utility:**
    *   Q4b: "How useful do you think receiving a personalized energy-saving plan from [LLM Name] would be for guiding your efforts to save energy at home?" (1=Not at all Useful to 7=Extremely Useful)
*   **Trustworthiness (Specific to Task B):**
    *   Q5b (Trust in Advice): "How much would you *trust* the *recommendations and advice* provided in an energy-saving plan generated by [LLM Name]?" (1=Distrust Completely to 7=Trust Completely)
    *   Q6b (Safety/Risk): "How confident are you that following energy-saving advice from [LLM Name] would be safe and wouldn't lead to unexpected problems (e.g., damaging appliances, creating safety hazards)?" (1=Not at all Confident to 7=Extremely Confident)

**C. Comparative Judgments**

*   **Accuracy Comparison (Task A):**
    *   QComp1: "Compared to an official government source like EnergyStar.gov, how accurate do you think [LLM Name] is for *appliance energy estimates*?" (1=Much Less Accurate than EnergyStar, 4=About the Same, 7=Much More Accurate than EnergyStar)
    *   QComp2: "Compared to your *own ability* to estimate appliance energy use, how accurate do you think [LLM Name] is?" (1=Much Less Accurate than Me, 4=About the Same, 7=Much More Accurate than Me)
*   **Effectiveness Comparison (Task B):**
    *   QComp3: "Compared to advice from a professional home energy auditor, how effective do you think a *personalized plan* from [LLM Name] would be?" (1=Much Less Effective than Auditor, 4=About the Same, 7=Much More Effective than Auditor)
*   **Overall Trust Ranking (Optional):**
    *   QRank: "Please rank the following sources from most trustworthy (1) to least trustworthy (5) for providing reliable household energy information and advice: [LLM Name], Professional Energy Auditor, Government Website (e.g., EnergyStar), Friends/Family, Yourself."

**II. Designing a Brief Interaction Task (Between Pre & Post)**

*   **Goal:** Give participants a *concrete, recent experience* with the LLM's capability on these tasks to potentially update their beliefs.
*   **Option 1: Standardized Prompting Task:**
    *   Provide a specific LLM interface (could be a simulated one or direct API access to a model like GPT-3.5/4).
    *   Give participants 2-3 standardized prompts to copy and paste:
        *   *Prompt A (Estimation):* "What is the typical annual energy consumption (in kWh) of a standard-size modern refrigerator?"
        *   *Prompt B (Planning - Simple):* "Give me 3 practical tips to reduce my home heating costs this winter."
        *   *Prompt C (Planning - Personalized Element):* "I live in a 2-bedroom apartment in [Participant's City/Region?] and work from home. Give me 2 personalized tips to save electricity." (Might be too complex/variable). *Alternative simpler prompt:* "How can I save energy using my dishwasher?"
    *   Participants execute the prompts and see the LLM's response.
*   **Option 2: Evaluating Pre-Generated Outputs:**
    *   Show participants example LLM responses to the standardized prompts above. Crucially, you could manipulate the *quality* of these outputs (e.g., one accurate estimate vs. one clearly wrong "hallucinated" estimate; one generic plan vs. one seemingly more specific plan).
    *   Ask participants to rate the quality/accuracy/usefulness of *these specific outputs* they just saw. (e.g., "How accurate was the refrigerator estimate you just read?")
    *   *Benefit:* Controls the stimulus, allows testing reactions to good vs. bad AI performance. *Drawback:* Less ecologically valid than direct interaction.
*   **Option 3: Minimal Guided Interaction:**
    *   Ask participants to open *their preferred* LLM in another window.
    *   Instruct them to ask it one question about appliance energy use (they choose the appliance) and one question about energy saving (they choose the topic).
    *   *Benefit:* High ecological validity. *Drawback:* High variability in prompts, LLMs used, and quality of responses received, making analysis harder.

**Recommendation for Interaction:** Option 1 (Standardized Prompting) offers a good balance between control and participant engagement. Option 2 is methodologically cleanest if you want to test reactions to specific types of AI errors/successes.

**III. Measuring Beliefs (Post-Interaction)**

*   **Re-administer Core Belief Questions:** Ask the *exact same* questions Q1a-Q5a and Q1b-Q6b again.
*   **Add Interaction Experience Questions:**
    *   QExp1: "How easy or difficult was it to get the energy information you asked for from the LLM during the interaction?" (1=Very Difficult to 7=Very Easy)
    *   QExp2: "Overall, how satisfied were you with the quality of the responses provided by the LLM during the interaction?" (1=Very Dissatisfied to 7=Very Satisfied)
    *   QExp3 (If using Option 2): "Did the LLM responses you reviewed seem generally accurate/helpful?" (Yes/No/Unsure, or Likert)
    *   QExp4 (Optional - Belief Update): "Did interacting with the LLM change your general perception of its capabilities for energy tasks?" (Significantly More Negative, Slightly More Negative, No Change, Slightly More Positive, Significantly More Positive)

This approach provides baseline beliefs, comparative judgments, a potential mechanism for belief updating via interaction, and post-interaction beliefs, allowing you to thoroughly investigate your research questions. Remember to pilot test these questions for clarity and flow!

--------


# https://gemini.google.com/app/d8fe23f8f9f0796a

**General Approach Considerations:**

1.  **Specificity:** Clearly define "LLM" (e.g., "leading LLMs like ChatGPT, Gemini, Claude") and the tasks (Estimation vs. Planning).
2.  **Dimensions:** Measure distinct facets:
    * **Accuracy:** Perceived correctness, precision, likelihood of errors/hallucinations.
    * **Trustworthiness:** Reliability, competence, integrity (lack of bias), perhaps safety (for planning).
    * **Utility:** Usefulness, helpfulness, actionability, personalization quality, ease of understanding.
3.  **Response Scales:** Primarily use Likert scales (e.g., 7-point from "Very Inaccurate" to "Very Accurate" or "Strongly Disagree" to "Strongly Agree") for comparability. Consider semantic differentials for some trust aspects.
4.  **Benchmarking:** Use comparative judgments to anchor perceptions against known entities (self, experts, other tools).
5.  **Pilot Testing:** Essential for refining custom questions for clarity, relevance, and variance.

---

**Brainstorming Custom Questions:**

**A. Beliefs Regarding Task A: Estimating Appliance Energy Use**

*(Focus: Accuracy, Trustworthiness, Utility for quantitative estimation)*

* **Accuracy:**
    1.  "How **accurate** do you believe a leading LLM (like ChatGPT or Gemini) would be at estimating the annual electricity usage (in kWh or dollars) of common household appliances (e.g., refrigerator, air conditioner, television)?" *(Scale: 1=Very Inaccurate to 7=Very Accurate)*
    2.  "How likely do you think it is that an LLM would provide a **significantly wrong** estimate for appliance energy use (e.g., off by more than 50%)?" *(Scale: 1=Very Unlikely to 7=Very Likely)*
    3.  *(Probing Bias Perception):* "Do you think an LLM would be more likely to **underestimate** or **overestimate** the energy use of high-consumption appliances (like electric heating)?" *(Options: Underestimate, Overestimate, Equally Likely, Unsure)* - Connects to Attari et al. biases.
    4.  "How **precise** do you expect an LLM's energy estimate to be?" *(Scale: 1=Very Vague/Imprecise to 7=Very Specific/Precise)*
* **Trustworthiness:**
    5.  "How **competent** do you believe LLMs are at performing the calculations needed for energy estimation?" *(Scale: 1=Not at all Competent to 7=Very Competent)*
    6.  "How **reliable** would you expect an LLM to be if you asked it for the energy use of the *same* appliance multiple times?" *(Scale: 1=Very Unreliable/Inconsistent to 7=Very Reliable/Consistent)*
    7.  "How much would you **trust** an LLM to provide energy estimates that are free from hidden biases (e.g., favouring certain brands or energy sources)?" *(Scale: 1=Distrust Completely to 7=Trust Completely)*
* **Utility:**
    8.  "How **useful** would asking an LLM be for quickly comparing the potential energy costs of different appliance models you are considering buying?" *(Scale: 1=Not at all Useful to 7=Very Useful)*
    9.  "How helpful do you think an LLM would be in identifying the **top 3 energy-consuming appliances** in a typical home?" *(Scale: 1=Not at all Helpful to 7=Very Helpful)*
* **Comparative Judgments (Task A):**
    10. "Compared to your **own best guess**, how accurate do you think an LLM's estimate of appliance energy use would be?" *(Scale: 1=Much Less Accurate than Mine to 7=Much More Accurate than Mine)*
    11. "Compared to information found on the **manufacturer's website** or an **EnergyStar label**, how accurate do you think an LLM's estimate would be?" *(Scale: 1=Much Less Accurate to 7=Much More Accurate)*
    12. "Who would you trust more for an accurate energy estimate of a *specific, complex* appliance (e.g., a multi-zone heat pump): an **LLM** or a **human energy expert/technician**?" *(Options: LLM, Human Expert, Equally Trustworthy, Unsure)*

**B. Beliefs Regarding Task B: Creating Personalized Energy Conservation Plans**

*(Focus: Effectiveness, Safety, Personalization, Trustworthiness, Utility for qualitative advice)*

* **Accuracy/Effectiveness/Safety:**
    13. "How **effective** do you believe a personalized energy-saving plan generated by an LLM would be in significantly reducing your household's actual energy consumption?" *(Scale: 1=Not at all Effective to 7=Very Effective)*
    14. "How **personalized** do you think an LLM-generated plan could be to your specific home, lifestyle, and budget?" *(Scale: 1=Very Generic to 7=Very Personalized)*
    15. "How likely do you think it is that an LLM might suggest energy-saving actions that are **impractical or unsuitable** for your situation?" *(Scale: 1=Very Unlikely to 7=Very Likely)*
    16. "How concerned would you be that an LLM might suggest energy-saving actions that could be **unsafe** (e.g., improper appliance modifications)?" *(Scale: 1=Not at all Concerned to 7=Very Concerned)*
* **Trustworthiness:**
    17. "How much would you **trust** an LLM to generate an energy-saving plan that is genuinely in your best interest (e.g., maximizing savings and comfort)?" *(Scale: 1=Distrust Completely to 7=Trust Completely)*
    18. "How **competent** do you believe LLMs are at understanding the complexities of home energy systems and human behavior needed to create a good plan?" *(Scale: 1=Not at all Competent to 7=Very Competent)*
    19. "How reliable do you think the **reasoning or justification** provided by an LLM for its energy-saving suggestions would be?" *(Scale: 1=Very Unreliable to 7=Very Reliable)*
* **Utility:**
    20. "How **useful** do you think an LLM would be for generating creative or novel ideas for saving energy?" *(Scale: 1=Not at all Useful to 7=Very Useful)*
    21. "How helpful would an LLM be in creating an energy-saving plan that is **easy to understand and follow**?" *(Scale: 1=Not at all Helpful to 7=Very Helpful)*
* **Comparative Judgments (Task B):**
    22. "Compared to a generic checklist of energy-saving tips from a reputable website (like Energy.gov), how much **more effective** do you think a plan generated by an LLM would be?" *(Scale: 1=Much Less Effective to 7=Much More Effective)*
    23. "Who would you trust more to create a *safe and effective* long-term energy reduction plan for your home: an **LLM** or a **certified home energy auditor**?" *(Options: LLM, Auditor, Equally Trustworthy, Unsure)*
    24. "How useful would an LLM be for creating an energy plan compared to using a specialized **online energy audit tool or calculator**?" *(Scale: 1=Much Less Useful to 7=Much More Useful)*

---

**C. Pre/Post Interaction Measurement Approach**

This approach aims to measure *calibration* – does brief experience improve the alignment between perceived and actual (or at least experienced) LLM capabilities?

* **Phase 1: Pre-Interaction Survey**
    * Administer the full set of custom questions brainstormed above (Sections A & B).
    * Administer relevant individual difference measures (AI Literacy, Energy Literacy, Numeracy, General Trust).
* **Phase 2: Brief Interaction Task**
    * **Setup:** Provide participants access to a specific LLM (could be a live API call within the survey platform like Qualtrics, or a simulation using pre-recorded interactions). Standardize the LLM and prompts.
    * **Task Design:**
        * Give 1-2 standardized energy estimation prompts (Task A). *Example:* "Using typical US averages, estimate the annual kWh consumption of a 50-inch LED TV." (Use a common appliance where ground truth is findable but not obvious).
        * Give 1-2 standardized energy planning prompts (Task B). *Example:* "Provide three actionable, low-cost tips for reducing electricity usage in a small apartment during the summer."
        * *Optional:* Include a prompt designed to potentially elicit a plausible error or a very generic response to gauge participant detection/reaction.
    * **Interaction:** Participants enter the prompts and view the LLM's response(s). Limit time (e.g., 2-3 minutes per prompt).
* **Phase 3: Post-Interaction Survey**
    * **Re-administer Beliefs:** Ask the *same* core accuracy, trustworthiness, and utility questions from Phase 1 (Sections A & B).
    * **Add Experience Evaluation:**
        * "Based on the interaction you just had, how **accurate** did you find the LLM's energy estimate(s)?" *(Scale: 1=Very Inaccurate to 7=Very Accurate)*
        * "Based on the interaction, how **useful** were the energy-saving tips provided by the LLM?" *(Scale: 1=Not at all Useful to 7=Very Useful)*
        * "Did the interaction change your overall perception of LLMs' capabilities for energy tasks? If yes, how?" *(Options: More Positive, More Negative, No Change, Unsure + Open Textbox)*
        * "How easy or difficult was it to get the information you needed from the LLM during the interaction?" *(Scale: 1=Very Difficult to 7=Very Easy)*
* **Analysis:**
    * Compare pre- vs. post-interaction scores on belief/trust/utility measures using paired t-tests or mixed models.
    * Examine if the *magnitude or direction* of change differs based on AI Literacy, Energy Literacy, or Numeracy scores (interaction effects). Does higher literacy lead to more "correction" after seeing the LLM perform?
    * Correlate the *subjective evaluation* of the interaction (e.g., perceived accuracy/utility of the *specific* interaction) with the post-interaction general belief scores.

**Considerations for Pre/Post:**

* **Feasibility:** Requires integration with an LLM API or careful simulation design. Increases survey time and complexity.
* **Control:** Using *canned* (pre-determined) LLM responses ensures consistency across participants and allows for controlled insertion of errors, but is less ecologically valid than live interaction. Live interaction introduces variability.
* **Briefness:** The interaction must be short. A single good or bad experience might disproportionately sway post-interaction ratings (recency bias). Acknowledge this limitation.

This combination of specific, task-oriented questions, comparative judgments, and potentially a pre/post interaction design should provide rich data to address your research questions about lay perceptions of LLMs for energy management. Remember to pilot these custom questions thoroughly.

---------

# https://gemini.google.com/app/d8fe23f8f9f0796a


**General Approach Considerations:**

1.  **Context Setting:** Begin by clearly defining what you mean by "Large Language Models (LLMs)" and provide common examples (e.g., ChatGPT, Gemini, Claude). Frame the subsequent questions specifically within the context of *household energy management*.
2.  **Task Differentiation:** Explicitly separate questions related to:
    * **Task A: Estimating Energy Use:** (e.g., appliance kWh, cost estimations) - Focuses on factual accuracy, quantitative precision.
    * **Task B: Creating Personalized Conservation Plans:** (e.g., generating actionable steps, tailored advice) - Focuses on effectiveness, relevance, safety, personalization, and potentially more holistic trustworthiness.
3.  **Use Validated Scale Formats:** Employ standard Likert-type scales (e.g., 5-point or 7-point) with clear anchors for agreement, accuracy, likelihood, trustworthiness, utility, etc.
4.  **Include Nuance:** Allow for uncertainty ("Don't Know") and potentially measure confidence in ratings.
5.  **Pilot Testing:** Crucially, any custom items should be pilot tested for clarity, comprehension, and variance with a sample similar to your target population.

**Brainstorming Measurement Constructs and Question Types:**

Here are different ways to probe the constructs, moving from general to specific:

**I. Perceived Capabilities / Accuracy:** (What do people think LLMs *can do* and how *correctly*?)

* **Direct Accuracy Ratings (Likert Scale):**
    * *Task A (Estimation):* "How accurate do you believe a typical LLM (like ChatGPT or Gemini) would be at estimating the annual electricity consumption (in kWh) of a standard household appliance (e.g., a refrigerator)?" (Scale: 1=Very Inaccurate to 7=Very Accurate)
    * *Task B (Planning):* "How accurate do you believe the *potential savings estimates* within an energy-saving plan generated by an LLM would be?" (Scale: 1=Very Inaccurate to 7=Very Accurate)
    * *Comparative Accuracy:* "Compared to information from a utility company website, how accurate do you think an LLM's energy estimation for an appliance would be?" (Scale: Much Less Accurate, Less Accurate, About the Same, More Accurate, Much More Accurate)
* **Beliefs about Overcoming Human Bias (Comparative/Multiple Choice):**
    * "It's known that people often misjudge which home activities use the most energy. Do you think LLMs are generally:" (Options: Better than humans at this / Worse than humans / About the same as humans / Don't Know)
* **Capability Checklist (Yes/No/Don't Know or Likert):**
    * "Please indicate how capable you believe current LLMs are at performing the following energy-related tasks:"
        * "Calculating the approximate kWh usage of a specific appliance model." (Scale: Not at all Capable to Very Capable)
        * "Identifying 'phantom loads' (energy used by devices when off)." (Scale: Not at all Capable to Very Capable)
        * "Providing energy-saving tips tailored to your climate zone." (Scale: Not at all Capable to Very Capable)
        * "Comparing the energy efficiency of two different appliance models." (Scale: Not at all Capable to Very Capable)
* **Perceived Likelihood of Errors (Likert Scale):**
    * "How likely do you think it is that an LLM might provide factually incorrect information about energy consumption?" (Scale: 1=Very Unlikely to 7=Very Likely)

**II. Perceived Trustworthiness:** (How much do people *believe they can rely* on LLMs for these tasks?)

* **Direct Trustworthiness Ratings (Likert Scale):**
    * *Task A (Estimation):* "How trustworthy would you consider an LLM's estimate of how much energy a specific appliance uses?" (Scale: 1=Very Untrustworthy to 7=Very Trustworthy)
    * *Task B (Planning):* "How trustworthy would you consider a personalized energy-saving plan created entirely by an LLM?" (Scale: 1=Very Untrustworthy to 7=Very Trustworthy)
* **Reliability/Dependability Ratings (Likert Scale):**
    * "How reliable do you think LLMs are for providing consistent energy advice?" (Scale: 1=Very Unreliable to 7=Very Reliable)
    * "How much would you depend on an LLM to give you correct information about energy savings?" (Scale: 1=Not at all Dependent to 7=Very Dependent)
* **Items Based on Trust Dimensions (e.g., from TPA, Lee & See):**
    * *Competence:* "How competent do you believe LLMs are at handling energy-related calculations?" (Scale: Not at all Competent to Very Competent)
    * *Integrity/Objectivity:* "To what extent do you believe energy advice from an LLM would be unbiased and objective?" (Scale: Not at all Objective to Very Objective)
    * *Benevolence (esp. for Planning):* "To what extent do you believe an LLM-generated energy plan would prioritize your household's best interests (e.g., safety, cost-effectiveness)?" (Scale: Not at all to A Very Large Extent)
* **Confidence in Reliance (Likert Scale):**
    * "How confident would you feel acting upon energy-saving recommendations provided solely by an LLM?" (Scale: 1=Not at all Confident to 7=Very Confident)

**III. Perceived Utility / Usefulness:** (How *helpful* do people think LLMs are for energy goals?)

* **Direct Utility Ratings (Likert Scale):**
    * *General:* "Overall, how useful do you think LLMs could be for helping households manage their energy consumption?" (Scale: 1=Not at all Useful to 7=Very Useful)
    * *Task A (Estimation):* "How helpful do you think an LLM would be for understanding where energy is being used in your home?" (Scale: 1=Not at all Helpful to 7=Very Helpful)
    * *Task B (Planning):* "How helpful do you think an LLM would be in creating practical steps you could take to save energy?" (Scale: 1=Not at all Helpful to 7=Very Helpful)
* **Perceived Value Proposition (Likert Scale):**
    * "To what extent do you think using an LLM could help you save money on your energy bills?" (Scale: Not at all to A Very Large Extent)
    * "To what extent do you think using an LLM could make it easier to understand complex energy information?" (Scale: Not at all to A Very Large Extent)
* **Comparative Utility:** "Compared to searching online yourself, how useful would an LLM be for finding tailored energy-saving advice?" (Scale: Much Less Useful, Less Useful, About the Same, More Useful, Much More Useful)

**Structuring the Survey Section:**

You could structure this section as follows:

1.  **Introduction:** Define LLMs, state context (household energy).
2.  **Block 1: Perceptions of LLMs for Energy *Estimation***
    * Rate Accuracy for estimation tasks.
    * Rate Trustworthiness/Reliability for estimation tasks.
    * Rate Utility/Helpfulness for estimation tasks.
    * Maybe include specific capability questions (e.g., calculate kWh).
3.  **Block 2: Perceptions of LLMs for Energy *Planning***
    * Rate Accuracy/Effectiveness for planning tasks.
    * Rate Trustworthiness/Safety/Personalization for planning tasks.
    * Rate Utility/Helpfulness for planning tasks.
    * Maybe include specific capability questions (e.g., tailor advice).
4.  **Block 3: Overall/Comparative Beliefs**
    * Comparative accuracy (LLM vs. Human/Other).
    * Likelihood of errors/misinformation.
    * Overall usefulness for energy management.

This approach allows you to capture nuanced beliefs about different aspects (Accuracy, Trust, Utility) across the two primary task types identified in your proposal, providing rich data to test your hypotheses. Remember to clearly anchor your scales and consider the cognitive load on participants.



# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1

Drawing upon principles from cognitive psychology and the study of human-automation interaction, the measurement of lay beliefs regarding the accuracy and trustworthiness of Large Language Models (LLMs) for energy-related tasks necessitates a multi-faceted approach. This is critical because users' perceptions of a system's capabilities, particularly in domains where they may already hold inaccurate mental models like household energy use, significantly influence their trust and subsequent reliance decisions. Achieving calibrated trust, where a user's trust level aligns with the system's actual performance, is paramount for effective and safe interaction, especially in complex or quantitatively nuanced domains. Miscalibrated trust, whether over-trust or under-trust, can lead to suboptimal outcomes.

A foundational approach for measuring psychological constructs such as beliefs and trust involves the use of self-report questionnaires and rating scales. While self-report has limitations, it is a traditional and widely used method for capturing attitudes and beliefs, offering ease of integration into study designs. Complex constructs like trust are best captured using multi-item scales rather than single items, though the psychometric quality of such scales requires scrutiny, particularly when adapted for novel contexts like AI.

To comprehensively assess lay beliefs about LLM accuracy and trustworthiness in the energy domain, measurement should target distinct dimensions of perceived capability and the resulting trust/reliance intentions, grounded in specific task types. This aligns with theoretical models suggesting that trust is influenced by perceived system characteristics such as performance, process, and purpose. In the context of LLMs for energy tasks, relevant dimensions include:

1.  **Perceived Factual Accuracy:** This dimension assesses users' beliefs about an LLM's ability to provide correct, non-numerical information about energy principles and conservation practices. This taps into the perceived reliability of the LLM as a source of established domain knowledge. Questions could utilize Likert-type scales (e.g., 1=Very Inaccurate, 7=Very Accurate), asking participants to rate their confidence in a state-of-the-art LLM to answer qualitative questions, such as identifying energy-efficient appliance types or verifying common energy myths. This probes perceived validity and reliability in information retrieval.

    *   *Example Question Approach:* Present participants with hypothetical factual energy questions (e.g., "Which type of insulation is generally most effective in cold climates?", "Is it true that leaving electronics plugged in when off still uses a significant amount of energy?") and ask them to rate how accurate they believe an LLM's answer would typically be for such questions using a Likert scale.

2.  **Perceived Estimation Accuracy:** Given that household energy management often involves quantitative judgments, measuring perceived accuracy for numerical tasks is crucial. This probes beliefs about the LLM's quantitative competence. Drawing inspiration from energy perception research that asks users to estimate appliance usage, the approach here is to ask users to rate how accurately they believe an LLM could perform these estimations. Items could ask participants to rate their belief in an LLM's accuracy for estimating metrics like annual kilowatt-hours (kWh) or operating costs for specific household appliances across a range of energy uses (e.g., LED bulb, refrigerator, electric clothes dryer), perhaps using a 100-Watt bulb as a conceptual reference point. Rating perceived accuracy on a Likert scale (e.g., 1=Very Inaccurate, 7=Very Accurate) allows for assessing whether users project known human estimation biases onto the AI or expect superior performance.

    *   *Example Question Approach:* Provide a list of common household appliances (e.g., refrigerator, oven, laptop) and ask participants to rate, for each appliance, how accurate they believe an LLM would be at estimating its typical energy consumption (e.g., annual kWh or monthly cost) on a 7-point Likert scale from 'Very Inaccurate' to 'Very Accurate'. This mirrors the structure of the Attari et al. (2010) survey but shifts the focus from the user's estimate to their perception of the LLM's capability.

3.  **Perceived Planning Competence:** Moving beyond simple information retrieval or estimation, this dimension assesses beliefs about an LLM's capability for more complex, personalized, and strategic tasks, such as generating an energy-saving plan tailored to a specific household. This taps into perceived effectiveness and realism for synthesizing information and applying it to a unique context. Participants could rate (on Likert scales) the perceived effectiveness, realism, and likely impact of an LLM in creating a *personalized* plan to meet a specific reduction goal. This probes beliefs about the AI's ability to handle contextual factors and provide actionable, high-impact recommendations.

    *   *Example Question Approach:* Describe a hypothetical scenario where a household wants to reduce energy use by 15%. Ask participants to rate how effective, realistic, and likely to succeed they believe a *personalized energy-saving plan* generated by an LLM for this household would be, using separate Likert scales (e.g., 1=Not at all Effective, 7=Very Effective; 1=Not at all Realistic, 7=Very Realistic).

4.  **Task-Specific Trust and Intended Reliance:** Directly assessing trust and reliance intentions specifically tied to the outputs generated for the tasks above is crucial. Trust is theorized to influence reliance decisions. Using Likert scales (e.g., 1=Do not trust at all, 7=Trust completely), items can probe trust in the factual accuracy of energy information, trust in the reliability of energy estimations, and trust in the effectiveness of personalized plans provided by the LLM. Additionally, items assessing reliance propensity (e.g., "How likely would you be to act on this specific advice/plan without seeking a second opinion?") capture the behavioral intention component linked to trust. Differentiating trust and reliance intentions across these functions (informant, calculator, advisor) allows for a granular understanding of user perceptions.

    *   *Example Question Approach:* Following the questions on perceived accuracy/competence for factual information, estimation, and planning, ask participants: "How much would you trust the factual accuracy of the energy information provided by an LLM?", "How much would you trust the reliability of an LLM's energy consumption estimates?", and "How much would you trust an LLM-generated energy-saving plan to be effective and reliable?". Use a 7-point Likert scale for each (e.g., 1=Do not trust at all, 7=Trust completely). Also include items like "How likely are you to rely solely on an LLM's energy consumption estimate when making a decision?".

5.  **Attributional Beliefs and Mental Models:** To understand *why* users hold certain accuracy and trust perceptions, it is beneficial to probe their underlying assumptions about how LLMs operate in this domain. Lay users' mental models of complex systems like LLMs are often incomplete or inaccurate and are influenced by pre-existing (mis)conceptions, including those about the domain itself (energy). Questions using agreement scales (e.g., 1=Strongly Disagree, 7=Strongly Agree) can tap into these mental models. Items could explore beliefs about the LLM's data access (e.g., "The chatbot has real-time access to energy usage data"), potential for error (e.g., "The chatbot might invent numbers about energy use"), contextual understanding (e.g., "The chatbot can give truly personalized advice"), and the nature of its processing (e.g., "The chatbot understands energy principles like a human expert"). These items help classify users' models along continua like expert-like vs. statistical or omniscient vs. fallible.

    *   *Example Question Approach:* Present participants with statements about how LLMs might work in the context of providing energy information or plans. Ask them to rate their agreement on a 7-point Likert scale (e.g., 1=Strongly Disagree, 7=Strongly Agree). Examples: "LLMs get their energy information from real-time, up-to-date databases," "LLMs can sometimes make up numbers or facts about energy consumption," "An LLM can understand the unique specifics of my home to give personalized energy advice," "LLMs understand energy concepts like a human expert, not just by finding patterns in text.".

6.  **Perceived Utility and Usefulness:** Aligned with technology acceptance models, beliefs about the usefulness of a technology predict attitudes and intentions. Assessing the perceived utility of LLMs specifically for energy-related tasks (e.g., getting quick information, estimating costs, finding saving tips) captures a key motivational factor for engagement. Likert scales can measure the extent to which users believe LLMs would be beneficial or helpful for managing household energy.

    *   *Example Question Approach:* Ask participants to rate the usefulness of LLMs for various energy tasks on a Likert scale (e.g., 1=Not at all Useful, 7=Very Useful). Examples: "How useful would an LLM be for quickly finding information about energy-efficient appliances?", "How useful would an LLM be for helping you estimate your household's energy costs?", "How useful would an LLM be for getting ideas on how to save energy at home?".

7.  **Perceived Reliability and Competence (General):** While task-specific trust captures beliefs for particular applications, general perceptions of an LLM's reliability, competence, expertise, and trustworthiness also play a role and can influence reliance decisions. Measures like semantic differential scales or Likert items can capture these broader perceptions. This aligns with the reliability/competence construct in trust models like the Trust in Automation (TiA) Questionnaire.

    *   *Example Question Approach:* Adapt items from validated scales or use semantic differentials. Examples from sources include semantic differential items like "Not Credible - Credible", "Unreliable - Reliable", "Not Expert - Expert", "Not trustworthy - Trustworthy". Or use Likert items like "LLMs perform tasks mostly with competence and precision".

**General Measurement Approach Synthesis:**

A quantitative survey design employing multi-item scales across these dimensions is a suitable approach. Participants would first complete measures of individual differences (numeracy, energy literacy, AI literacy). Subsequently, they would be presented with descriptions or hypothetical outputs related to the different energy tasks (factual query, estimation, planning) and provide their ratings on the perceived accuracy, competence, utility, trust, and reliance intentions for each. This task-specific approach is valuable because trust and perceived capability can be context- and task-dependent. The order of presenting task types could be counterbalanced to mitigate order effects. Finally, participants would complete measures of general trust and distrust in AI.

Crucially, developing these measures requires adherence to psychometric principles, including item generation, pilot testing, and validation. Content validity should be established by ensuring items adequately cover the relevant aspects of perceived LLM capabilities for energy tasks. Construct validity can be explored through techniques like factor analysis to confirm that proposed dimensions (e.g., perceived factual accuracy vs. perceived estimation accuracy) are empirically distinguishable. Reliability, typically assessed using internal consistency measures like Cronbach's alpha, should be evaluated for each scale.

In summary, measuring lay beliefs about LLM accuracy and trustworthiness for energy tasks requires a nuanced approach that moves beyond generic questions about "AI" or "trust." By assessing perceived capabilities (factual, estimation, planning), task-specific trust and reliance, and underlying mental models, researchers can gain insight into how users evaluate LLMs in this critical domain. Grounding these measures in cognitive theories of misperception, mental models, and calibrated trust, and employing rigorous psychometric validation, will provide robust data to understand user behavior and inform the design of LLM interfaces and educational interventions aimed at fostering appropriate reliance.





# https://aistudio.google.com/prompts/1d3t7DUnNEXkJLVtXmNma9-p7PnlK4jdA



**General Approach:**

1.  **Set the Context:** Briefly introduce the idea of using advanced AI chatbots (like ChatGPT, Gemini, Claude, etc.) for getting information and advice about home energy use. Ensure participants understand what type of AI you're referring to.
2.  **Define the Tasks Clearly:** Separate questions for the distinct tasks mentioned in your proposal:
    *   **Task A: Estimating Appliance Energy Use:** Focus on quantitative accuracy and reliability for specific numerical data points (e.g., kWh consumption of a device).
    *   **Task B: Creating Personalized Conservation Plans:** Focus on the AI's ability to synthesize information, understand context, provide relevant/effective advice, and tailor recommendations.
3.  **Use Likert Scales:** Employ standard 5-point or 7-point Likert scales for rating agreement, likelihood, accuracy, usefulness, confidence, or trust. Clearly label the scale anchors (e.g., 1 = Very Inaccurate, 7 = Very Accurate).
4.  **Measure Multiple Facets:** For each task, probe different aspects of belief:
    *   **Perceived Accuracy:** How factually correct or error-free do they think the output will be?
    *   **Perceived Utility/Usefulness:** How helpful or beneficial do they think the output will be for their goals (saving energy, making decisions)?
    *   **Task-Specific Trustworthiness:** How much confidence or reliance would they place in the LLM *for this specific task*? (This often incorporates accuracy, reliability, and perhaps even perceived intent/bias).
5.  **Consider Comparative Judgments (Optional):** You could ask participants to compare the LLM's perceived accuracy/utility to other sources (e.g., "Compared to information from my utility company...", "Compared to doing my own online research...").
6.  **Include "Don't Know/Not Sure" Option:** Since this is an emerging area, allow participants to indicate if they lack a firm belief.

**Specific Question Examples:**

*Introductory Text Example:* "The next questions ask about your beliefs regarding the capabilities of advanced AI chatbots (like ChatGPT, Gemini, Claude, etc.) when used for tasks related to managing household energy consumption."

**I. Beliefs Regarding Task A: Estimating Appliance Energy Use**

*(Using a 7-point scale where appropriate, e.g., 1 = Not at all [Accurate/Useful/Confident/Trustworthy], 7 = Extremely [Accurate/Useful/Confident/Trustworthy])*

*   **Perceived Accuracy:**
    1.  "How accurate do you believe an AI chatbot would be at estimating the typical yearly energy consumption (in kWh) of a specific household appliance (like a refrigerator or washing machine)?"
    2.  "How likely do you think it is that an AI chatbot would provide a *factually incorrect* energy estimate for a common appliance?" (Reverse coded: 1=Very Likely, 7=Very Unlikely)
    3.  "How confident are you that the *numerical energy figures* (e.g., kWh, cost) provided by an AI chatbot for appliances would be reliable?"
*   **Perceived Utility:**
    4.  "How useful do you think an AI chatbot's energy estimate for an appliance would be in helping you decide whether to replace it?"
    5.  "How helpful do you think an AI chatbot could be in comparing the energy use of two different appliance models?"
*   **Task-Specific Trustworthiness:**
    6.  "How much would you *trust* an energy consumption estimate for an appliance if it came from an AI chatbot?"
    7.  "If an AI chatbot gave you an energy estimate for an appliance that seemed surprisingly high or low, how likely would you be to double-check it with another source?" (Reverse coded anchors: 1=Very Likely to Double-Check, 7=Very Unlikely to Double-Check - *lower score indicates less blind trust*)

**II. Beliefs Regarding Task B: Creating Personalized Energy Conservation Plans**

*(Using a 7-point scale where appropriate, e.g., 1 = Not at all [Effective/Useful/Confident/Trustworthy/Tailored], 7 = Extremely [Effective/Useful/Confident/Trustworthy/Tailored])*

*   **Perceived Accuracy/Effectiveness:**
    8.  "How effective do you believe a personalized energy-saving plan created by an AI chatbot would actually be at helping *your household* reduce its energy consumption?"
    9.  "How accurate do you think the *energy-saving claims* (e.g., 'Doing X will save Y kWh/year') within an AI-generated plan would be?"
    10. "How well do you think an AI chatbot could understand the unique characteristics of *your home and lifestyle* to create a truly personalized plan?"
*   **Perceived Utility:**
    11. "How useful do you believe a personalized energy-saving plan generated by an AI chatbot would be overall?"
    12. "How helpful do you think such a plan would be for identifying energy-saving opportunities you hadn't thought of before?"
*   **Task-Specific Trustworthiness:**
    13. "How much would you *trust* the *overall recommendations* in a personalized energy-saving plan generated by an AI chatbot?"
    14. "How confident would you be in *following the specific actions* suggested in an AI-generated energy plan?"
    15. "How concerned would you be that an AI chatbot might suggest energy-saving actions that are impractical or unsuitable for your situation?" (Reverse coded anchors: 1=Very Concerned, 7=Not at all Concerned)

**Optional additions:**

*   **Open-Ended Follow-up:** "What are your biggest concerns, if any, about relying on an AI chatbot for information or advice about home energy use?"
*   **Direct Comparison:** "Overall, for getting reliable energy-saving advice, who would you trust more: an advanced AI chatbot or a human energy expert?" (Categorical or scale).

**Key Considerations:**

*   **Pilot Testing:** Crucial to test these questions for clarity, interpretation, and variance before full deployment.
*   **LLM Familiarity:** You might want to include a brief measure of how familiar participants are with using LLMs in general, as this could influence their beliefs.
*   **Order:** Consider randomizing the order of Task A and Task B questions, or at least the order of items within each block.

----------



# https://chatgpt.com/c/681454bc-8954-8006-8380-9ac992a44223




**Synopsis**
To capture nuanced beliefs about LLM accuracy and utility in household-energy contexts, pair *task-specific* multidimensional items (accuracy, bias, utility, trust) with a brief pre-/post-interaction protocol.  Items should request both absolute and comparative judgments, enabling calibration analyses and mediation tests (H2–H4).  A within-subjects “answer → LLM → re-answer” design additionally yields behavioural calibration indices (e.g., reliance, confidence shift).  Below, I outline (a) guiding principles, (b) an item bank for Tasks A & B, (c) comparative-judgment formats, and (d) a concrete pre-/post-interaction procedure.

---

## 1  Design principles

1. **Multidimensionality.** Measure *perceived point-accuracy*, *directional bias*, *confidence/uncertainty*, *usefulness*, and *trustworthiness* separately; factor analyses show these dissociate for LLMs (De Duro et al., 2025) ([arXiv][1]).
2. **Absolute + relative framing.** Comparative prompts (“vs. self”, “vs. expert”) attenuate acquiescence and map directly onto calibration-gap models (Buçinca et al., 2021).
3. **Predictive validity.** Align items with behavioural endpoints—willingness to adopt, reliance after seeing conflicting advice—shown to mediate usage (Sebastiano et al., 2025; UTAUT derivatives) ([PMC][2]).
4. **7-point labelled Likert or bipolar semantic-differential** scales; they maximise variance without overtaxing respondents.
5. **Ground-truth anchoring for accuracy.** Wherever possible, later score perceived accuracy against appliance kWh norms (Attari et al., 2010).

---

## 2  Item bank (draft stems)

### 2.1 Task A – Estimating appliance energy use

| Dimension          | Example stem                                                                                                    | Response anchor                                            |
| ------------------ | --------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------- |
| Absolute accuracy  | “If ChatGPT estimated a refrigerator’s annual electricity use, how accurate do you think that number would be?” | 1 = Extremely inaccurate … 7 = Extremely accurate          |
| Directional bias   | “ChatGPT is likely to **over-estimate / under-estimate** high-consumption appliances.”                          | 1 = Strongly under-estimates … 7 = Strongly over-estimates |
| Numeric confidence | “How certain are you that ChatGPT’s kWh figures fall within ±10 % of the true value?”                           | 1 = Not at all certain … 7 = Extremely certain             |
| Comparative skill  | “Compared *with your own best guess*, ChatGPT’s estimates are…”                                                 | −3 = Much worse … +3 = Much better                         |
| Utility            | “Using ChatGPT would *save me time* when checking appliance energy data.”                                       | 1 = Strongly disagree … 7 = Strongly agree                 |
| Trustworthiness    | “I would rely on ChatGPT’s appliance estimates without double-checking another source.”                         | 1 = Never … 7 = Always                                     |

### 2.2 Task B – Creating personalised conservation plans

| Dimension              | Example stem                                                                                         | Response anchor                            |
| ---------------------- | ---------------------------------------------------------------------------------------------------- | ------------------------------------------ |
| Plan comprehensiveness | “ChatGPT would cover *all major* energy-saving actions relevant to my home.”                         | 1 = Very incomplete … 7 = Very complete    |
| Personalisation        | “Advice from ChatGPT would reflect *my household’s specific circumstances* (size, income, climate).” | 1 = Not at all … 7 = Extremely             |
| Feasibility            | “ChatGPT’s recommendations would be *realistic for me to implement this year*.”                      | 1 = Very unrealistic … 7 = Very realistic  |
| Projected savings      | “Following ChatGPT’s plan would *meaningfully reduce* my electricity bill.”                          | 1 = Strongly disagree … 7 = Strongly agree |
| Comparative quality    | “Compared to a certified energy auditor’s plan, ChatGPT’s plan would be…”                            | −3 = Much worse … +3 = Much better         |
| Affective trust        | “I would feel comfortable letting ChatGPT *prioritise* which actions I take first.”                  | 1 = Not comfortable … 7 = Very comfortable |

*(tables render in pandoc markdown)*

---

## 3  Comparative-judgment blocks

1. **Self-versus-LLM:** “Who is more accurate at estimating appliance energy use—*you* or *ChatGPT*?” (11-point slider: −5 = ‘Definitely me’ … +5 = ‘Definitely ChatGPT’).
2. **LLM-versus-expert:** “Relative to EnergyStar.gov guidelines, ChatGPT’s advice is…” (−3 to +3).
3. **Confidence adjustment:** “After seeing ChatGPT’s answer, how much has your confidence in *your own* estimate changed?” (−3 = Much lower … +3 = Much higher).
4. **Source-switch intention:** “If ChatGPT disagreed with your initial estimate by >25 %, which would you act on?” (Radio: Keep mine / Split difference / Accept ChatGPT / Seek third source).  Responses yield reliance vs. resistance metrics (Lee & See, 2004; trust-calibration literature) ([ACM Digital Library][3]).

---

## 4  Pre-/post interaction protocol

1. **Baseline phase**

   * *Self-estimates*: Participants provide kWh guesses for a standard 10-appliance list (Attari et al.) and outline two conservation actions they would prioritise.
   * *Belief battery*: Complete Task A & B items + comparative blocks.
   * *Prediction of LLM accuracy*: “How many of your 10 estimates do you think ChatGPT will get within 25 %?” (0–10).

2. **LLM exposure**

   * Auto-fetch participants’ appliance list and queries; pipe them into an embedded LLM (ChatGPT API).
   * Show responses **with uncertainty cues** (e.g., “≈ 450 kWh ± 50”). Prior studies show hedges improve calibration when domain knowledge is high (Kim et al., 2023) ([NSF Pubs][4]).

3. **Immediate post-phase**

   * *Re-estimate & rate*: Participants can revise any kWh guesses; then re-answer the belief battery (randomised order).
   * *Behavioural reliance*: Record (a) which LLM estimates they copy, (b) magnitude of adjustments.

4. **Delayed post (optional 1-week)**

   * Retest beliefs and ask whether they actually tried any ChatGPT recommendations—capturing H3 behavioural follow-through (Formative JMIR protocol) ([JFR - JMIR Formative Research][5]).

### Derived metrics

| Construct                | Operationalisation                                                                   |
| ------------------------ | ------------------------------------------------------------------------------------ |
| **Accuracy calibration** | abs(self-error\_pre) − abs(self-error\_post); positive = reliance improved estimates |
| **Trust shift**          | Δ mean TILLMI score (post − pre)                                                     |
| **Over-reliance**        | Accepted inaccurate LLM estimate (>25 % from truth) / total estimates                |
| **Utility expectancy**   | Δ perceived utility score predicts Δ intention in SEM (UTAUT paths)                  |

Mixed-effects models can test whether numeracy, MAILS facets, and energy literacy moderate these deltas, directly addressing H2b–H2c.

---

## 5  Extensions & manipulations

* **Uncertainty expression experiment**: randomise “± error margins” vs. none; track moderation by numeracy (Combining-uncertainty study) ([NSF Pubs][4]).
* **Explanation-length gating**: vary verbosity; longer explanations inflate misplaced confidence (Buçinca et al., 2021; Guardian 2025 rollback) ([The Guardian][6]).
* **Skill-threshold trigger**: show participants a performance badge (“ChatGPT is 82 % accurate on U.S. appliance data”) to test how performance cues update trust (LLNL trust-safety review) ([Lawrence Livermore National Laboratory][7]).

---

## 6  Select empirical precedents

* Medical-domain experiments measuring repeated-query accuracy perceptions (Zhu et al., 2024) ([PMC][8]).
* Global student surveys on ChatGPT perceived usefulness ﻿(Ferri et al., 2025) ([PMC][9]).
* Reliability judgments in Turing-test format (Italian Sociological Review) ([italiansociologicalreview.com][10]).
* Large-scale trust & usage surveys (Express Legal Funding, 2025) ([Express Legal Funding][11]).
* AI-acceptance meta-models (Sciencedirect review) ([ScienceDirect][12]).
* UTAUT-based ChatGPT adoption studies (ScienceDirect Open Access) ([ScienceDirect][13]).

---



-------

# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1

Drawing upon established principles in cognitive psychology and the measurement frameworks presented in the provided sources, we can conceptualize an approach to measure beliefs about Large Language Model (LLM) accuracy and trustworthiness in the context of energy-related tasks. This involves assessing perceived capabilities, evaluating subjective accuracy and utility, considering comparative judgments, and potentially employing a longitudinal design to observe changes in beliefs following interaction.

Cognitive science research highlights that individuals form mental models of how systems operate, which influences their expectations, trust, and interaction behaviors. These mental models are updated based on experience and new information (e.g., Kantenbacher & Attari, 2021, demonstrated how experts use heuristics for energy judgments, and Marghetis et al., 2019, showed how simple interventions could correct novice misperceptions about energy use, suggesting updating of mental models). Similarly, people attribute various capacities to LLMs, influenced by how these models are portrayed. Measuring beliefs about LLM capabilities and trustworthiness for specific domains, such as energy tasks, requires instruments sensitive to these cognitive dimensions.

Existing frameworks for assessing trust in automation emphasize cognitive trust (based on rational judgments of competence and reliability) and affective trust (based on emotional bonds). Applied to LLMs, cognitive trust relates to perceptions of accuracy, consistency, and reliability. Energy literacy research, likewise, recognizes that understanding and engaging with energy issues involves not just knowledge (cognitive) but also attitudes (affective, including self-efficacy) and behaviors. Therefore, measuring beliefs about LLMs for energy tasks should integrate elements from both domains, assessing perceived factual knowledge alongside judgments of reliability and utility for practical application.

**Measurement of Beliefs about LLM Accuracy/Trustworthiness for Energy Tasks**

To measure beliefs about LLM accuracy and trustworthiness specifically for energy-related tasks, a combination of Likert scales, semantic differential scales, and scenario-based questions can be employed, drawing on items and formats used in studies on AI perception and energy literacy.

1.  **Perceived Ability to Answer Factual Questions (Energy Domain):** This taps into the "knowledgeable," "smart," "clever," and "expert" dimensions identified in LLM perception studies. Questions can be framed around specific energy topics, adapting the format used for mental capacity attribution:
    *   "On a scale of 1 (not at all capable) to 7 (highly capable), how capable do you believe LLMs are of answering factual questions about different energy sources (e.g., coal, solar, wind)?"
    *   "On a scale of 1 to 7, how capable do you believe LLMs are of explaining complex energy concepts (e.g., the difference between power and energy, energy efficiency)?"
    *   "On a scale of 1 to 7, how capable do you believe LLMs are of providing accurate statistics about national energy consumption or production?"
    *   Semantic differential scales could also assess this: "How expert do you perceive LLMs to be on energy topics?" (e.g., Not expert to Expert).

2.  **Perceived LLM Accuracy & Utility (Energy Tasks):** This focuses on the practical application of LLMs for energy management. Utility relates to perceived usefulness. Accuracy is a core component of cognitive trust.
    *   *General Accuracy/Reliability for Energy:*
        *   "On a scale of 1 (Strongly disagree) to 7 (Strongly agree), I believe the information about energy conservation provided by LLMs is generally accurate."
        *   "On a scale of 1 to 7, I trust the energy-saving tips and advice I might get from an LLM." (This draws on the trust concept measured by Duro et al., 2025 and Canfield et al., 2017).
    *   *Accuracy/Utility for Estimating Appliance Energy Use:*
        *   "On a scale of 1 to 7, I believe LLMs can accurately estimate the amount of energy used by typical household appliances."
        *   "On a scale of 1 to 7, How useful would an LLM be for getting quick estimates of appliance energy consumption?"
    *   *Accuracy/Utility for Creating Personalized Energy Conservation Plans:* LLMs' capabilities in data analysis, text generation, and interaction suggest potential for personalized recommendations.
        *   "On a scale of 1 to 7, I believe LLMs could create a personalized energy conservation plan tailored to my specific home and habits."
        *   "On a scale of 1 to 7, How useful would an LLM be for helping me create a plan to reduce my household energy consumption?"
        *   "On a scale of 1 to 7, I would trust a personalized energy conservation plan generated by an LLM."

3.  **Estimating Appliance Energy Use (Scenario-Based Perception):** Rather than asking participants to estimate energy use themselves (as in Attari et al., 2010, or Marghetis et al., 2019), present them with hypothetical LLM responses containing energy estimates. Ask participants to evaluate the *LLM's* performance or the *response's* credibility.
    *   *Example Scenario:* "Imagine you asked an LLM: 'How much energy does a typical refrigerator use in a year?' and it responded with [LLM Answer, e.g., 'A typical full-size refrigerator uses about 364 kWh per year']."
    *   *Questions:*
        *   "On a scale of 1 (Not at all confident) to 7 (Extremely confident), how confident are you that this LLM estimate is correct?" (Drawing on confidence measures).
        *   "On a scale of 1 to 7, how credible do you find this specific estimate?"
        *   (If multiple options are presented) "Which of these LLM responses do you find most credible/accurate?"
    *   Compare these perceptions to actual energy data (e.g., Attari et al., 2010, provide benchmark values) or expert judgments to understand the "calibration gap" between perceived and actual accuracy, similar to the confidence gap explored by Steyvers et al. (2025).

4.  **Creating Personalized Energy Conservation Plans (Scenario-Based Evaluation):** Present participants with a sample personalized plan generated by an LLM for a hypothetical user (or perhaps based on input they provide).
    *   *Example Scenario:* "Based on information about [hypothetical user's situation, e.g., 'living in a small apartment, primarily heating with electricity, often leaves lights on'], an LLM generated the following conservation tips: [List of tips]."
    *   *Questions:*
        *   "On a scale of 1 to 7, how useful do you think these tips would be for this person?"
        *   "On a scale of 1 to 7, how feasible do you think it would be for this person to implement these tips?"
        *   "On a scale of 1 to 7, how well-tailored do you think this plan is to the person's situation?" (Related to personalization discussed by Li et al., 2025)
        *   "On a scale of 1 to 7, how likely would you be to follow advice like this if it were generated for you?" (Relates to trust intentions or behavioral intentions).

5.  **Comparative Judgments:** Directly ask participants to compare LLMs to other common sources of energy information or advice. This addresses the item used by Duro et al. (2025) regarding trusting LLMs more than people and aligns with the comparison of LLM outputs to human perception in Steyvers et al. (2025).
    *   "On a scale from 1 (Much less accurate) to 7 (Much more accurate), how does the accuracy of energy use estimates from an LLM compare to those from an energy efficiency website (e.g., EPA Energy Star)?"
    *   "On a scale from 1 (Much less trustworthy) to 7 (Much more trustworthy), how trustworthy is energy-saving advice from an LLM compared to advice from a local energy utility company?"
    *   "If you needed personalized advice on how to save energy, who would you trust more to provide reliable recommendations?" (Forced choice or a rating scale comparing options like "Energy Expert," "LLM," "Government Website," "Utility Company").

**Experimental Approach: Measure -> Interact -> Measure**

A promising approach for examining how interaction shapes beliefs is a pre- and post-interaction design, similar to intervention studies in energy literacy that measure changes in understanding or judgment after providing information or studies assessing the impact of LLM outputs on user confidence.

*   **Phase 1: Baseline Measurement (Pre-interaction)**
    *   Administer a survey assessing initial beliefs about LLMs' capabilities, accuracy, and trustworthiness for energy tasks, using the questions brainstormed above. This establishes a baseline perception *before* direct experience within the study.
    *   Include control variables such as basic energy literacy knowledge (e.g., adapting multiple-choice questions from DeWaters & Powers, 2011, or Canfield et al., 2017, for an adult population if necessary, focusing on core concepts or appliance usage), prior experience with LLMs, demographics (age, education, technical training, income), and possibly general attitudes towards technology or environmental issues (e.g., the NEP scale or climate change beliefs). Assessing numeracy could also be relevant, given the quantitative nature of energy estimation tasks.

*   **Phase 2: Interaction/Scenario Exposure**
    *   Participants interact with scenarios involving an LLM providing energy-related information or assistance. This interaction phase is key to manipulating the input participants receive from the LLM.
    *   *Experimental Manipulation:* Vary the quality, accuracy, explanation style, or confidence expression of the LLM's response across different conditions. For instance, one group might see LLM responses that are highly accurate and well-explained, another might see responses containing common energy misperceptions (e.g., overestimating low-energy uses, underestimating high-energy uses), and another might see responses with varying levels of expressed uncertainty.
    *   *Tasks:* Present scenarios requiring the LLM to perform tasks like:
        *   Providing energy use estimates for a list of appliances.
        *   Generating personalized energy-saving tips based on a brief description of a household.
        *   Explaining an energy concept (e.g., "Explain how a heat pump saves energy compared to a furnace").
    *   *Immediate Post-Scenario Questions:* After exposure to the LLM's response in each scenario, ask participants to rate:
        *   Their confidence in the specific information provided by the LLM.
        *   The perceived accuracy and usefulness of the LLM's response *for that specific task*.
        *   Their likelihood of using or acting on that specific information.
        *   (Optional) Ask participants to perform a related task (e.g., a behavioral choice task adapted from Marghetis et al., 2019) based on the information provided by the LLM to see if the LLM influenced their judgments or choices.

*   **Phase 3: Post-interaction Measurement**
    *   Re-administer a subset of the general belief, capability, and trustworthiness questions from Phase 1. The goal is to assess whether the interaction experience in Phase 2 led to changes in overall perceptions of LLMs for energy tasks.
    *   Include questions about fact-checking behavior specifically regarding LLM-provided energy information, as trust and reliance can influence verification habits.
    *   Collect qualitative feedback (open-ended questions) about their experience with the LLM in the energy scenarios, including what aspects influenced their trust or perception of accuracy.

This multi-phase approach allows for the examination of baseline beliefs, the immediate impact of specific LLM outputs within a context, and the potential carry-over effects of interaction on general perceptions of LLM capabilities and trustworthiness for a critical domain like energy conservation. Grounding the measures in established psychometric scales and task-based assessments from both AI perception and energy literacy literature enhances the validity and interpretability of the findings.



----------

# https://chatgpt.com/g/g-p-680c9643408c8191a128bbb19854ccee-ai-brainstorm/c/68146ceb-4704-8006-a124-477c514e309a

### 1  Conceptual dimensions to tap

To test **H2b–H4** you need measures that (a) dissociate *task-specific accuracy beliefs* from *generalised trust*, (b) capture *utility* expectations, and (c) allow *calibration* analyses before and after first-hand exposure. I suggest structuring the battery around four tightly focused constructs:

| Construct                                    | Definition (energy domain)                                                                                                                                         | Why it matters for hypotheses                                                                            |
| -------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------- |
| **Perceived numerical accuracy**             | Subjective probability that an LLM’s appliance-level kWh estimate (Task A) or projected annual savings (Task B) falls within a specified error band (e.g., ±20 %). | Direct antecedent of calibrated trust (Lee & See, 2004) and behavioural reliance (Buçinca et al., 2021). |
| **Perceived diagnostic utility**             | Judged usefulness of the LLM’s output for making *better* or *easier* decisions (time saved, effort saved, insight gained).                                        | Drives intention to adopt beyond mere accuracy (Chen & Zhao, 2025).                                      |
| **Task-specific trust / reliance intention** | Willingness to base a real decision on the LLM’s answer, or to override one’s own judgment.                                                                        | Proximal mediator between beliefs and use (Shang et al., 2025).                                          |
| **Comparative credibility**                  | Relative standing of the LLM versus alternative sources (own intuition, Google search, Energy Star calculator, professional auditor).                              | Tests whether literacy moderates *source substitution* rather than absolute trust.                       |

---

### 2  Item prototypes (pre-interaction block)

> **Response format.** Use 0–100 sliders for probability items (fine-grained) and 7-point Likert agreements for attitudinal items; follow each probability question with a *credence confidence* slider (0–100) to compute meta-confidence.

| Construct         | Sample stem                                                                                                                                                   | Notes                                                                  |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| Accuracy (Task A) | “If ChatGPT estimated how many **kWh your refrigerator uses in a week**, what is the chance its answer would be **within ±20 %** of the true value? \_\_%”    | Repeat for 6–8 appliances; randomise order.                            |
| Accuracy (Task B) | “An LLM claims you could save **\$150 per year** by changing appliance X. What is the chance this savings figure is within ±20 % of reality? \_\_%”           | Anchor with plausible numbers to reduce scale-misuse.                  |
| Utility           | “Consulting ChatGPT when planning how to lower my electricity bill would save me considerable *time and effort*.” (1 = strongly disagree, 7 = strongly agree) | Create 3–4 items (information richness, convenience, personalisation). |
| Trust / reliance  | “I would feel comfortable **acting on** ChatGPT’s recommendation for replacing light-bulbs without additional verification.”                                  | Two facets: comfort + action willingness.                              |
| Comparative       | “Compared with the *Google ‘People also ask’ snippet*, ChatGPT is… (1 = much less accurate, 7 = much more accurate).”                                         | Repeat for each alternative source.                                    |

Add an open-ended prompt—“*In one sentence, why do you (not) trust ChatGPT for appliance energy questions?*”—to capture explanatory rationales for later qualitative coding (Illusion-of-Explanatory-Depth diagnostics).

---

### 3  Brief LLM-exposure protocol

| Stage                    | Description                                                                                                                                               | Key logged variables                          |
| ------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------- |
| **Baseline estimates**   | Participants supply their own kWh guesses for the same 6–8 appliances (Attari et al., 2010 paradigm). Confidence captured per guess.                      | Raw error, absolute error, over/under bias.   |
| **LLM interaction**      | a) Scripted API call returns ChatGPT’s estimates; b) participants can ask *one follow-up* per appliance (manipulates sense of conversational competence). | Message count, dwell time, follow-up content. |
| **Immediate evaluation** | For each LLM estimate, record perceived accuracy (0–100 %) and willingness to rely.                                                                       | Post-interaction trust shift.                 |

For Task B, show a **personalised plan** (ChatGPT prompt seeded with household size, region). Ask participants to rate: (a) financial feasibility, (b) behavioural feasibility, (c) clarity, (d) expected savings accuracy.

---

### 4  Post-interaction measures

1. **Expectation-violation item**: “ChatGPT’s performance was (1 = far worse than I expected, 7 = far better).”
2. Re-administer *utility* and *trust / reliance* items to compute within-subject change scores.
3. **Behavioural intention** scale (3 items, e.g., “I intend to consult ChatGPT the next time I receive my electricity bill”).

---

### 5  Comparative judgment variants (optional)

| Variant                           | Implementation                                                                                                          | Advantage                                                           |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------- |
| **Best–Worst Scaling (BWS)**      | Present four information sources; ask which you would *most* and *least* trust for a given appliance. Repeat six times. | Produces individual-level scale values with minimal bias.           |
| **Probability distribution draw** | Ask respondents to sketch a 90 % CI for the LLM’s refrigerator kWh estimate using a draggable density bar.              | Enables fine-grained calibration analysis (Fernandes et al., 2024). |

---

### 6  Analytic leverage

* Compute **calibration curves**: plot judged accuracy probability vs. actual absolute error of LLM (where ground truth is available from DOE databases).
* Test **H2b–H2c** by modelling pre-interaction accuracy beliefs as a function of cognitive/AI literacy × numeracy; include interaction terms for *Understand × Apply* facets of MAILS.
* **H3**: Use post-interaction trust/reliance as mediator between perceived accuracy utility and intention to adopt (SEM).
* **H4**: Insert general AI trust (TPA) as higher-level mediator and examine moderated-mediation with literacy variables.

---

### 7  Implementation cautions

* **Anchoring bias**: Present baseline self-estimates *before* revealing any LLM output.
* **Effort vs. fatigue**: Limit appliance set to 6–8; pilot shows \~4 min interaction time with one follow-up each.
* **Memory contamination**: Separate Task A and Task B by an unrelated filler (e.g., short numeracy puzzle) to reduce carry-over.

These question templates and procedural steps give you a **pre/post, multi-method battery** that captures expectations, perceived diagnostic value, and real-time calibration shifts—providing direct leverage on your stated hypotheses while remaining survey-feasible (≈18 min total).
