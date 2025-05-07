
# Proposal: Calibrating Trust in an LLM Energy Advisor: The Impact of Linguistic Uncertainty


**Research Questions:**

* **RQ1 (Reliance):** How does the linguistic expression of uncertainty (hedging vs. confident language) in an LLM energy advisor’s output affect users’ reliance on its advice (e.g., agreement rate, appropriate reliance)?
* **RQ2 (Trust & Confidence):** How does the linguistic expression of uncertainty in the LLM’s output influence users’ subjective trust in the advisor and confidence in its recommendations?
* **RQ3 (Calibration):** Does the linguistic expression of uncertainty in the LLM’s output improve users’ calibration, i.e. the alignment between their confidence in the advice (or their own final decisions) and the objective accuracy of those decisions?
* **RQ4 (Individual Differences & Knowledge):** How do individual differences – such as propensity to trust technology, AI literacy, **energy knowledge/literacy** (both factual and perceived), and numeracy – moderate the effects of linguistic uncertainty on reliance, trust, and calibration? Additionally, to what extent do users’ baseline energy knowledge or estimation accuracy predict their trust calibration and reliance on the AI’s advice?

**Hypotheses:**

* **H1 (Reliance):** Uncertainty expressions (hedging) will decrease overall reliance on the LLM advisor compared to confident expressions, particularly by reducing over-reliance on incorrect advice, thus improving appropriate reliance.
* **H2 (Trust & Confidence):** Uncertainty expressions will lead to lower subjective trust in the LLM advisor and lower confidence in its answers compared to confident expressions.
* **H3 (Calibration):** Uncertainty expressions will improve calibration, meaning users’ confidence will more closely correspond to actual accuracy of decisions, compared to confident expressions.
* **H4 (Moderation):** The effects in H1–H3 will be moderated by individual differences:

  * **H4a (PTT):** Individuals lower in Propensity to Trust Technology (PTT-A) will show a stronger reduction in reliance/trust in response to uncertainty cues than those with high PTT-A.
  * **H4b (Literacy – AI & Energy):** Individuals with higher AI literacy and **greater energy domain knowledge** (e.g., higher scores on energy knowledge tests or more accurate appliance use estimates) will better interpret the LLM’s uncertainty cues, leading to more appropriate reliance adjustments and better calibration than those with lower literacy. In other words, knowledgeable users are expected to accept correct advice and question incorrect advice more effectively.
  * **H4c (Numeracy):** Individuals with higher numeracy will exhibit better calibration – particularly in interpreting quantitative aspects of the LLM’s advice – than those with lower numeracy.

*Rationale:* Users with stronger domain knowledge or relevant literacies are expected to more accurately assess the correctness of the AI’s advice and calibrate their trust accordingly. For example, a user who knows typical appliance energy usage (high energy literacy) may be quicker to detect an incorrect recommendation from the AI and trust it only when warranted. This study will examine both the moderating effect of these individual differences on the uncertainty manipulation (H4a–c) and the direct relationship between users’ energy knowledge (estimation accuracy) and their trust calibration outcomes (RQ4).

## **II. Introduction: Literature Review and Research Justification**

Household energy decision-making is prone to significant *knowledge gaps and cognitive biases*. Consumers often hold systematic misperceptions about the energy usage of appliances and the effectiveness of conservation actions (Attari et al., 2010). Notably, many people **underestimate the energy consumed by high-use appliances and overestimate that of low-use devices**, a phenomenon sometimes termed “compression bias”. For example, turning off lights (a low-impact action) is frequently believed to save more energy than it actually does, while major uses like heating/cooling or water heating are underappreciated in their impact. Such miscalibrated mental models of energy use can hinder effective energy-saving decisions. Attari et al. (2010) found that for a sample of common activities, participants, on average, underestimated energy use by a factor of nearly 3, with particularly large underestimates for the highest-energy activities. Similarly, more recent work (Marghetis et al., 2019) corroborates that people struggle to quantify home energy use, and that simple heuristic interventions can partially correct these misperceptions. This gap between perceived and actual energy use highlights an opportunity and a challenge: an AI advisor could educate users to make better choices, but users’ preconceptions might also affect whether they trust or follow the AI’s guidance.

At the same time, Large Language Models (LLMs) like GPT-4 have emerged as accessible tools for personalized advice in domains such as energy conservation. LLMs can synthesize vast information and provide recommendations in human-like language. However, LLMs often **communicate with high confidence regardless of accuracy**, potentially leading users to be over-influenced by incorrect information (“AI hallucinations”). Effective human-LLM collaboration requires users to develop accurate *mental models* of the AI’s knowledge limits and to appropriately calibrate their trust (Lee & See, 2004). Over-trusting an LLM’s confident but wrong advice can lead to misuse (e.g., following a costly but ineffective energy tip), whereas under-trusting even correct advice leads to disuse of a beneficial recommendation. Prior research suggests that **communicating uncertainty** in AI outputs can aid trust calibration. For instance, using verbal hedges (“I’m not sure, but…”) tends to reduce over-reliance on incorrect answers compared to unwaveringly confident statements. By indicating doubt, the AI might prompt users to think critically or seek confirmation. Yet, the effectiveness of uncertainty cues may depend on user factors – some users might interpret hedging as a sign of honesty and become appropriately cautious, while others might simply lose trust across the board.

In sum, this study integrates two key threads: (1) **Energy literacy and misperceptions** – measuring how well users understand household energy use (both objectively and subjectively) and examining how this knowledge base influences their interaction with the AI; and (2) **Uncertainty communication in AI** – manipulating the LLM advisor’s language (hedging vs. confident) to observe effects on user trust, reliance, and decision accuracy. By doing so, we aim to understand not only *whether* uncertainty expressions improve trust calibration on average, but *for whom* and *under what conditions*. We anticipate that users with higher energy knowledge (or those who are made aware of their knowledge gaps) will calibrate their trust in the AI more effectively – accepting correct advice and skeptically evaluating incorrect or implausible advice. The findings will have implications for designing AI advisors that adapt to users’ knowledge levels, and for user education or onboarding procedures (e.g., brief training or feedback) that could enhance trust calibration.

## **III. Method - Calibrating Trust in an LLM Energy Advisor: The Impact of Linguistic Uncertaintyl**

### **Participants and Design** (Unchanged)

*(The participant recruitment, sample size considerations, and overall experimental design structure remain as previously described. The focus here is on the updated measures and procedure.)*

### **Measures and Procedure**

The study consists of two phases: **(1) a pre-task survey battery** measuring individual differences and baseline energy knowledge, and **(2) an interactive task phase** where participants engage with the AI energy advisor to make decisions. All participants complete Phase 1 first, which includes the newly added energy estimation task and knowledge questions, and then proceed to Phase 2 where the uncertainty manipulation is introduced in the AI’s responses.

### Preparation of LLM Generated tips (using Steyvers et al. 2025 approach)

We use atwo-stage computational approach to first elicit numerical estimates of energy consumption and savings from a Large Language Model (LLM) and subsequently compute a confidence metric for these estimates. This confidence metric then informs the generation of context-dependent explanatory "tips" or statements.

Initially, the methodology involves a structured interaction with an OpenAI LLM (specifically "gpt-4.1-nano" or "gpt-4.1-mini"). For each predefined energy-related item (either energy usage of a device or energy saved by an action, based on stimuli from Attari et al.), a precisely formulated prompt is sent to the LLM. Critically, this request is configured with temperature = 0.0 to promote deterministic outputs and, importantly, includes logprobs = TRUE and top_logprobs parameters. These parameters instruct the API to return the log probabilities of the tokens generated by the LLM. Upon receiving the LLM's response, which is expected to be a single number, the script extracts this numerical estimate.

The computation of the confidence score is directly derived from these log probabilities. The script retrieves the logprobs for the content tokens that constitute the LLM's numerical answer. Each token's log probability is converted to an actual probability (via exponentiation, P=e 
logprob). The confidence score for a given estimate is then operationalized as the arithmetic mean of these individual token probabilities. This approach, therefore, quantifies confidence based on the LLM's internal probability distribution over possible next tokens when generating the numerical part of its response. It is noteworthy that this method assumes the LLM's response, constrained by max_tokens = 15, primarily comprises the numerical estimate; the accuracy of this assumption directly influences the validity of the confidence score.

Subsequent to the derivation of numerical estimates and their associated confidence metrics, the script proceeds to the second stage: generating explanatory tips. The calculated confidence score for each estimate is first categorized into qualitative levels ("High," "Medium," "Low," or "Unknown") based on predefined thresholds (e.g., ≥0.85 for "High"). A new prompt is then dynamically constructed for the LLM. This prompt incorporates the original item, the LLM's numerical estimate, and a directive for the LLM to frame its explanation in a manner congruent with the determined confidence level. For instance, a "High" confidence estimate would elicit a confidently framed explanation, whereas a "Low" confidence estimate would prompt an explanation couched in terms of uncertainty or variability (e.g., "Estimates can vary..."). This second LLM interaction utilizes a slightly higher temperature = 0.5 to allow for more naturalistic and contextually varied textual output for the explanations, which are constrained to 1-2 sentences. The final output aggregates the original item data, actual values, LLM estimates, the computed confidence scores and levels, and the LLM-generated explanations.


### Description of Task and Procedure for Gorman - AI Energy Study Proposal: 

# Experiment Procedure: AI Energy Advisor Interaction

1.  **Introduction & Instructions**
    *   Participant is welcomed to the study.
    *   Overview of the task flow is provided.

2.  **Baseline Assessments**
    *   **A. Section 1: Energy Knowledge & Perception**
        *   Questions assess objective knowledge about household energy consumption.
        *   Questions assess subjective feelings of energy knowledge and efficacy.
        *   Estimation task: Participants estimate energy use of various appliances relative to a baseline.
    *   **B. Section 2: Numeracy Questions**
        *   Questions assess basic understanding of percentages and probabilities.
    *   **C. Section 3: AI Familiarity & Trust Propensity**
        *   Questions gauge frequency of AI assistant/chatbot use.
        *   Self-assessment of knowledge about AI (e.g., ChatGPT).
        *   Questions about understanding AI limitations (e.g., hallucination, real-time data access).
        *   Likert-scale questions on general propensity to trust or be skeptical of technology.

3.  **Item/Scenario Selection**
    *   Random assignment selects 4 specific energy-related items/scenarios from a list.
    *   These items are pre-defined in a JSON file, containing:
        *   Item name/label
        *   User prompt
        *   AI's estimated value
        *   AI's explanation
        *   AI's confidence score/level
        *   Actual ground truth value

4.  **AI Advisor Interaction Task (Core Task - 4 Trials)**
    *   For each of the 4 selected items/scenarios:
        *   **A. Scenario Presentation:**
            *   The participant is shown the energy-related prompt (e.g., a question about energy savings).
            *   The AI Energy Advisor's response is displayed, including:
                *   Its estimated value.
                *   Its explanation for the estimate.
        *   **B. Participant Evaluation (per scenario):**
            *   Participant rates their confidence in the AI's estimate for the current scenario (slider).
            *   Participant indicates their likely action based on the AI's response (accept, verify, reject).
            *   Participant rates their trust in the AI's response for the current scenario (Likert scale).
    *   Participant proceeds to the next scenario until all 4 are completed.

5.  **Post-Task Questionnaires**
    *   **A. Section 5: Post-Scenario Trust & Perception**
        *   Questions assess overall trust in the AI system experienced (e.g., dependability, reliability, suspicion).
        *   Questions assess understanding of LLM capabilities and limitations (e.g., real-time data, pattern recognition, intentions, reasoning accuracy, error avoidance).
        *   Self-reflection on potential over-trust or under-trust of the AI.
        *   Overall perceived accuracy of the AI's answers (slider).
        *   Likelihood of future use and reliance on such an AI advisor.
        *   Questions about the participant's mental model of the AI (source of answers, limitations).
        *   Optional open-ended feedback.


#### Phase 1 - Calibrating Trust in an LLM Energy Advisor: The Impact of Linguistic Uncertainty

Participants begin by completing a survey of individual differences (trust propensity, AI literacy, energy literacy, numeracy) followed by a dedicated **appliance energy estimation task** and additional energy knowledge questions. The **ordering** is arranged to first capture relatively stable traits and literacies, then have participants perform the effortful estimation task, and answer knowledge/heuristic items. This ordering ensures that their own judgments about energy use are recorded *before* they see any information or advice from the AI, preserving those measures as unbiased baseline indicators. The varied formats (Likert scales, multiple-choice, estimation entries) are interwoven to maintain engagement and reduce monotony, while still grouping conceptually related items together. For example, participants move from the Likert-scale trait questions to an interactive numeric estimation exercise, then to multiple-choice knowledge questions, offering a change of pace between sections.

#### **Phase 2: Interaction with AI Advisor (Trust Calibration Task)**

After the survey and estimation phase, participants engage in a series of decision-making trials with the LLM-based energy advisor. In each trial of this phase (described in detail below), they will first answer an energy-related question on their own, then see the AI advisor’s answer (which is experimentally varied in its uncertainty expression and sometimes correctness), and finally make a final decision with confidence ratings. This phase implements the **linguistic uncertainty manipulation** (hedged vs. confident AI output) and measures how participants rely on or trust the AI’s advice.

Importantly, **no immediate feedback on accuracy is given during Phase 1 or between trials in Phase 2** (aside from the AI’s advice in Phase 2), unless explicitly varied as an experimental condition (see *Feedback Consideration* below). All participants receive a full debrief and correct answers to all questions at the end of the study.



### **Phase 2 - Calibrating Trust in an LLM Energy Advisor: The Impact of Linguistic Uncertainty

After completing the above survey and estimation tasks, participants enter the interactive decision-making phase. In this phase, they are presented with a series of energy-related scenarios or questions and interact with a simulated AI energy advisor (actually a scripted LLM output) on each one. The core design is a **within-subjects** sequence of trials in a **Hybrid Trust Calibration Task** structure. Each participant will experience multiple trials, and across these trials the **LLM’s uncertainty expression** (hedged vs. confident tone) is manipulated, as is the **accuracy** of its advice (some trials the AI is correct, some it is incorrect), in order to observe how these factors influence user behavior (reliance, trust, and calibration).

**Procedure (per trial):** Each trial follows these steps (adapted from the recommended hybrid task design):

1. **Present an energy-related question/problem:** For example, *“Your living room gets cold in winter. Would installing a smart thermostat or using a space heater be more cost-effective for saving energy?”* The question is shown to the participant **before** any AI input, prompting them to consider it. Each question is crafted based on common scenarios or misconceptions identified earlier (often related to the appliances or actions from the estimation task, for consistency).
2. **Participant’s Initial Response:** The participant provides their **initial answer or decision** **and a confidence rating** for that answer (e.g., on a 1–7 scale or 0–100% slider). For the example, a participant might answer “smart thermostat” with 60% confidence. This step captures their independent judgment.
3. **LLM Advisor’s Advice:** The AI advisor’s answer is then displayed. The content of the advisor’s answer is pre-generated to be either correct or incorrect, and it is written in either a **confident** tone or an **uncertain** tone, depending on the experimental condition for that trial. For instance, in a **confident** condition the AI might say, *“Definitely install a smart thermostat; it will clearly save you more in the long run.”* In an **uncertain** condition, the AI might say, *“I’m not entirely sure, but a smart thermostat might save more energy in the long run.”* The substantive recommendation could be correct or intentionally flawed on some trials (e.g., maybe the true answer was that a space heater is actually cheaper in that specific scenario, making the AI’s advice incorrect). We systematically vary these such that each participant sees a mix of: (a) correct advice with confident tone, (b) correct advice with hedged tone, (c) incorrect advice with confident tone, (d) incorrect advice with hedged tone. This allows us to examine RQ1–RQ3 across different situations.
4. **Participant’s Final Decision:** After seeing the AI’s advice, the participant can either stick with their original answer or change their decision, and then gives a **final confidence rating** in that decision. This step reveals **reliance** behavior: did they follow the AI or not? And how confident are they now? For example, if the AI disagreed with them, do they switch their answer? If the AI hedged, are they less inclined to accept it?
5. **Trial-specific Trust Evaluation:** We include a brief post-trial questionnaire asking the participant to rate the AI’s advice on that trial (e.g., “How trustworthy/helpful do you think the assistant’s answer was?” on a Likert scale). This provides granular data on their *immediate trust* in the AI’s performance for each recommendation.
6. **Repeat for multiple trials:** Each participant goes through \~16 trials covering different topics (e.g., heating/cooling, appliances, lighting, insulation, etc.), which ensures exposure to each experimental condition multiple times. The order of trials and mapping of condition to trial are counterbalanced to avoid order effects.

Across these trials, we collect measures for reliance (whether they accepted the AI’s recommendation), subjective trust (ratings), and calibration (alignment of confidence with correctness). Because we have the participant’s initial answers and final answers with confidence, we can assess **calibration** both *before* and *after* AI advice – i.e., how well their confidence tracks accuracy on their own vs. after incorporating AI input. We can also measure **changes in confidence** (do people appropriately gain confidence when correct advice is given and lose confidence when advice is wrong?), which is another facet of calibrated trust.

**Integration of Phase 1 & Phase 2:** The key innovation with the  design is that we now have objective data on each participant’s energy knowledge (from Phase 1) that we can use to explain differences in Phase 2 behavior. For instance, if a participant grossly underestimates the energy use of a dryer in Section 5, and later the AI gives advice about using the dryer vs. hanging clothes, we can see if that participant is more likely to misjudge the AI’s advice. Participants with higher factual knowledge or who demonstrated accurate estimates might be better at detecting when the AI’s answers are wrong (or right), thus **moderating** the effect of the AI’s uncertainty cues. These rich connections will allow us to answer RQ4: e.g., do those who knew that “unplugging chargers saves little” respond differently when the AI says “I’m not sure, but unplugging devices might save a lot”? Our expectation (H4b) is yes – knowledgeable users will trust their own knowledge over a misleading AI suggestion, especially if the AI itself expressed uncertainty.

**Summary for Gorman - AI Energy Study Proposal:** In this  design, the **survey instrument** now incorporates a targeted energy estimation task and knowledge assessment, which not only strengthens the measurement of “energy literacy” (making it more objective) but also serves to engage participants in thinking about the domain prior to the AI interaction. The **methods** have been adjusted to place this task at the optimal point in the procedure (after basic individual-difference surveys, before the AI advisor trials) to avoid order effects. The **research questions and hypotheses** have been refined to explicitly include these objective knowledge measures, anticipating that a participant’s ability to accurately estimate energy usage will play a role in how they calibrate trust in the AI. We have carefully considered the role of feedback in the study design; while we will not provide in-task feedback in the main experiment (to observe natural trust dynamics), this aspect is discussed as a potential factor that could be explored in variations of the experiment. By capturing both what participants **know** (or think they know) about energy and how they react to an AI’s uncertain vs. confident advice, the study will contribute insights into designing AI advisors that users can trust appropriately. The expectation is that those with greater energy knowledge (or those who might be “trained” to correct their misconceptions) will show more **calibrated trust** – relying on the AI when it’s correct and holding back when it’s wrong – which is the ultimate goal for effective human-AI collaboration in the energy domain.


# References

Steyvers et al. (2025). What large language models know and what people think they know
Attari, S. Z., DeKay, M. L., Davidson, C. I., & Bruine De Bruin, W. (2010). Public perceptions of energy consumption and savings
Marghetis, T., Attari, S. Z., & Landy, D. (2019). Simple interventions can correct misperceptions of home energy use
Schille-Hudson, E. B., Margehtis, T., Miniard, D., Landy, D., & Attari, S. Z. (2019). Big, hot, or bright? Integrating cues to perceive home energy
Kantenbacher, J., & Attari, S. Z. (2021). Better rules for judging joules: Exploring how experts make decisions about household energy use
Bucinca et al. 2021.  Trust or to Think: Cognitive Forcing Functions Can Reduce Overreliance on AI in AI-assisted Decision-making
