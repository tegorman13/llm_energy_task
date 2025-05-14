

![[Pasted image 20250514020424.png]]
# Gorman - AI Energy Study Proposal


# **Calibrating Trust in an LLM Energy Advisor: The Impact of Linguistic Uncertainty**

## **I. Finalized Research Questions and Hypotheses**

Based on a thorough review of literature on human-AI interaction, trust calibration, uncertainty communication, and decision-making, the following research questions (RQs) and hypotheses (Hs) guide the study:

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

## **III. Method for Gorman - AI Energy Study Proposal**

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


#### **Phase 1 for Gorman - AI Energy Study Proposal: Survey and Energy Estimation (Individual Differences & Knowledge)**

Participants begin by completing a survey of individual differences (trust propensity, AI literacy, energy literacy, numeracy) followed by a dedicated **appliance energy estimation task** and additional energy knowledge questions. The **ordering** is arranged to first capture relatively stable traits and literacies, then have participants perform the effortful estimation task, and answer knowledge/heuristic items. This ordering ensures that their own judgments about energy use are recorded *before* they see any information or advice from the AI, preserving those measures as unbiased baseline indicators. The varied formats (Likert scales, multiple-choice, estimation entries) are interwoven to maintain engagement and reduce monotony, while still grouping conceptually related items together. For example, participants move from the Likert-scale trait questions to an interactive numeric estimation exercise, then to multiple-choice knowledge questions, offering a change of pace between sections.

#### **Phase 2: Interaction with AI Advisor (Trust Calibration Task)**

After the survey and estimation phase, participants engage in a series of decision-making trials with the LLM-based energy advisor. In each trial of this phase (described in detail below), they will first answer an energy-related question on their own, then see the AI advisor’s answer (which is experimentally varied in its uncertainty expression and sometimes correctness), and finally make a final decision with confidence ratings. This phase implements the **linguistic uncertainty manipulation** (hedged vs. confident AI output) and measures how participants rely on or trust the AI’s advice.

Importantly, **no immediate feedback on accuracy is given during Phase 1 or between trials in Phase 2** (aside from the AI’s advice in Phase 2), unless explicitly varied as an experimental condition (see *Feedback Consideration* below). All participants receive a full debrief and correct answers to all questions at the end of the study.



### **Phase 2 for Gorman - AI Energy Study Proposal: Experimental Task – Interaction with the AI Energy Advisor**

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


# Current Task code for Gorman - AI Energy Study Proposal

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Working with an AI Energy Advisor (Admin Mode - v5 Fixed)</title>
    <style>
        /* --- PASTE FULL CSS FROM v3 Improved HERE --- */
        :root {
            /* Using UCI Palette primarily */
            --uci-blue: #003366;
            --uci-blue-light: #0064a4;
            --uci-gold: #ffc72c; /* Accent, admin buttons */
            --text-color: #212529; /* Darker gray for text */
            --text-muted: #6c757d; /* Lighter gray */
            --bg-color: #f8f9fa;
            --container-bg: #ffffff;
            --section-bg: #ffffff; /* Keep sections clean */
            --ai-response-bg: #e9f5e9; /* Keep distinct */
            --ai-response-border: #b2d8b2;
            --scenario-box-bg: #f0f8ff;
            --scenario-box-border: #add8e6;
            --border-color: #dee2e6; /* Standard border */
            --input-border-focus: var(--uci-blue-light); /* Focus color */
            --progress-bar-bg: #e9ecef;
            --progress-bar-fill: var(--uci-blue-light);
            --success-green: #28a745;
            --danger-red: #dc3545;
            --warning-yellow: var(--uci-gold); /* Alias for consistency */
            --info-blue: #17a2b8;
        }

        /* Apply a basic reset and box-sizing */
        *, *::before, *::after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif; /* System font stack */
            line-height: 1.6;
            background-color: var(--bg-color);
            color: var(--text-color);
            padding-bottom: 60px;
            font-size: 16px; /* Base font size */
        }
        .header-bar {
            background-color: var(--uci-blue);
            color: white;
            padding: 15px 20px;
            text-align: center;
            font-size: 1.75em; /* Slightly larger */
            font-weight: 600; /* Semibold */
            margin-bottom: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        #progress-bar-container {
            width: 80%;
            max-width: 850px;
            margin: 15px auto 10px auto; /* Adjusted margins */
            height: 18px; /* Slightly taller */
            background-color: var(--progress-bar-bg);
            border-radius: 9px; /* Match height/2 */
            overflow: hidden;
            box-shadow: inset 0 1px 3px rgba(0,0,0,0.1);
        }
        #progress-bar {
            height: 100%;
            width: 0%;
            background-color: var(--progress-bar-fill);
            border-radius: 9px 0 0 9px;
            transition: width 0.4s ease-in-out; /* Smoother transition */
        }
        #progress-text {
             text-align: center;
             font-size: 0.9em;
             color: var(--text-muted);
             margin-bottom: 25px;
        }
        #experiment-container {
            max-width: 850px;
            margin: 20px auto;
            padding: 30px; /* Increased padding */
            background-color: var(--container-bg);
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.07); /* Softer shadow */
        }
        .section {
            display: none;
            border: 1px solid var(--border-color);
            padding: 30px;
            margin-bottom: 30px;
            border-radius: 6px;
            background-color: var(--section-bg);
            position: relative;
        }
        .section.active {
            display: block;
        }
        h1, h2, h3 {
            color: var(--uci-blue);
            margin-bottom: 0.75em; /* Consistent bottom margin */
        }
        h2 {
             border-bottom: 2px solid var(--uci-blue);
             padding-bottom: 10px;
             margin-top: 0;
             font-size: 1.8em; /* Larger section titles */
        }
         h3 { font-size: 1.4em; margin-bottom: 1em; }

        button {
            background-color: var(--uci-blue-light);
            color: white;
            border: none;
            padding: 12px 24px; /* Balanced padding */
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.05em;
            font-weight: 500; /* Medium weight */
            margin-top: 15px;
            margin-right: 8px;
            transition: background-color 0.2s ease, box-shadow 0.2s ease;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        button:hover {
            background-color: var(--uci-blue);
            box-shadow: 0 4px 8px rgba(0,0,0,0.15);
        }
        button:disabled {
            background-color: #adb5bd; /* Muted gray */
            cursor: not-allowed;
            box-shadow: none;
        }
        /* Specific button IDs for listeners */
        #start-button, #confirm-items-button, #scenario-next-button, #restart-button { /* Add specific IDs if needed */ }

        .navigation-buttons {
            margin-top: 30px;
            text-align: right;
            border-top: 1px solid var(--border-color); /* Separator */
            padding-top: 20px;
        }
        label {
            display: block;
            margin-bottom: 12px;
            font-weight: 600; /* Semibold labels */
            color: #495057;
            font-size: 1.1em; /* Slightly larger labels */
        }
         /* Specific label for radio/checkbox groups */
         .input-group-label {
             margin-bottom: 15px; /* More space before options */
         }
        input[type="text"],
        input[type="number"],
        textarea,
        select { /* Style selects too */
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid var(--border-color);
            border-radius: 4px;
            box-sizing: border-box;
            width: 100%;
            font-size: 1em;
            transition: border-color 0.2s ease, box-shadow 0.2s ease;
        }
        input:focus, textarea:focus, select:focus {
            outline: none;
            border-color: var(--input-border-focus);
            box-shadow: 0 0 0 0.2rem rgba(0, 100, 164, 0.25); /* Focus ring */
        }

        input[type="number"]{ width: 150px; /* Even more space */ }
        textarea { min-height: 100px; }

        .question-block {
            margin-bottom: 30px; /* Increased separation */
            padding: 25px;
            border: 1px solid #f1f3f5;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 1px 3px rgba(0,0,0,0.05); /* Subtle shadow */
        }
         .question-block:last-of-type { margin-bottom: 0; }

        .likert-scale ul, .multiple-choice ul, .true-false ul {
            list-style: none; padding: 0; margin: 10px 0 0 5px;
        }
        .likert-scale li, .multiple-choice li, .true-false li {
            margin-bottom: 12px; padding: 6px 0;
        }
         /* Style for the radio/checkbox label itself */
        .option-label {
             font-weight: normal; display: inline; margin-left: 10px;
             vertical-align: middle; cursor: pointer; font-size: 1em;
             color: var(--text-color);
         }
         input[type="radio"], input[type="checkbox"]{
             margin-right: 5px; vertical-align: middle; cursor: pointer;
             transform: scale(1.2); /* Larger controls */
             accent-color: var(--uci-blue-light); /* Modern way to color radios */
         }
         /* Visible focus state for keyboard nav */
        input[type="radio"]:focus-visible + .option-label,
        input[type="checkbox"]:focus-visible + .option-label {
             outline: 2px solid var(--input-border-focus);
             outline-offset: 2px;
             border-radius: 2px;
        }
        .scale-endpoints { /* For Likert/Slider labels */
             display: flex;
             justify-content: space-between;
             font-size: 0.9em;
             color: var(--text-muted);
             margin-top: -5px; /* Pull up below radios */
             margin-bottom: 10px; /* Space after */
             padding: 0 5px; /* Align with slider ends */
        }

        /* --- Slider Styles --- */
        .slider-container {
            margin-top: 10px; margin-bottom: 5px; /* Reduced bottom margin */
            display: flex; align-items: center; gap: 15px;
        }
        .slider-container .range-label { font-weight: bold; min-width: 50px; text-align: center; color: #555;} /* Endpoint values */
        .slider-container input[type="range"] { /* Track styling */
            flex-grow: 1; cursor: pointer; -webkit-appearance: none; appearance: none;
            height: 10px; background: linear-gradient(to right, var(--uci-blue-light), var(--uci-blue-light) 50%, var(--progress-bar-bg) 50%, var(--progress-bar-bg)); /* Default middle fill */
            border-radius: 5px; outline: none; transition: background 0.2s ease;
        }
         /* Thumb styling */
         .slider-container input[type="range"]::-webkit-slider-thumb {
             -webkit-appearance: none; appearance: none; width: 22px; height: 22px; /* Larger thumb */
             background: var(--uci-blue); border-radius: 50%; cursor: pointer;
             border: 3px solid white; box-shadow: 0 1px 3px rgba(0,0,0,0.2);
         }
         .slider-container input[type="range"]::-moz-range-thumb { /* Firefox */
             width: 22px; height: 22px; background: var(--uci-blue); border-radius: 50%;
             cursor: pointer; border: 3px solid white; box-shadow: 0 1px 3px rgba(0,0,0,0.2);
         }
         /* Live value display */
         .slider-value-display {
            font-weight: bold;
            color: var(--uci-blue);
            font-size: 1.1em;
            min-width: 50px;
            text-align: right;
         }


        /* --- Scenario & AI Styles --- */
        .scenario-box {
            border: 1px solid var(--scenario-box-border); background-color: var(--scenario-box-bg);
            padding: 25px; margin-bottom: 0; border-radius: 6px;
        }
        .scenario-prompt {
             margin-bottom: 15px; color: var(--text-color); white-space: pre-wrap;
             font-style: normal; font-weight: 500; border-bottom: 1px dashed var(--scenario-box-border); padding-bottom: 15px;
        }
        .ai-response-container {
            margin-top: 20px; background-color: var(--ai-response-bg); border: 1px solid var(--ai-response-border);
            padding: 20px; border-radius: 6px; box-shadow: 0 2px 5px rgba(0,0,0,0.05);
            font-family: 'Consolas', 'Monaco', monospace;
        }
        .ai-response-container .ai-prefix {
             font-weight: 700; display: block; margin-bottom: 10px; color: #005700;
             font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif; font-size: 1.1em;
        }
        .ai-response-estimate {
             font-weight: bold; font-size: 1.2em; color: var(--uci-blue);
             display: block; margin-bottom: 10px;
        }
        .ai-response-explanation { white-space: pre-wrap; line-height: 1.7; font-size: 1em; }
        .ai-confidence-display {
            margin-top: 15px; font-size: 0.9em; font-style: italic; color: var(--text-muted);
            border-top: 1px dashed var(--ai-response-border); padding-top: 10px;
        }


        /* --- Estimation Table --- */
        .estimation-table-wrapper { overflow-x: auto; margin-top: 15px; border: 1px solid var(--border-color); border-radius: 5px;}
        .estimation-table { width: 100%; min-width: 550px; border-collapse: collapse; }
        .estimation-table th, .estimation-table td { border: none; border-bottom: 1px solid var(--border-color); padding: 12px 15px; text-align: left; vertical-align: middle; }
        .estimation-table th { background-color: #f8f9fa; font-weight: 600; color: #495057; border-bottom-width: 2px; }
        .estimation-table tr:last-child td { border-bottom: none; }
        .estimation-table tr:hover td { background-color: #f1f9ff; } /* Subtle hover */
        .estimation-table input[type="number"] { width: 140px; text-align: right; }


        /* --- Admin Styles --- */
        #admin-bar {
            position: fixed; bottom: 0; left: 0; width: 100%;
            background-color: rgba(40, 40, 40, 0.97); color: #f8f9fa;
            padding: 8px 10px; text-align: center; font-size: 0.9em;
            z-index: 1000; box-shadow: 0 -2px 8px rgba(0,0,0,0.3);
            display: flex; justify-content: center; align-items: center; flex-wrap: wrap; gap: 5px 10px;
        }
        #admin-bar span { margin: 0 5px; font-weight: 500; }
        #admin-bar strong { color: var(--uci-gold); }
        #admin-bar button { /* Give admin bar buttons unique IDs for listeners */ }
        .admin-jump-button { /* Class for admin jump buttons */
            background-color: var(--warning-yellow); color: var(--text-color);
            padding: 5px 12px; font-size: 0.85em; margin: 2px 3px;
            border: 1px solid #d6a100; border-radius: 4px; font-weight: 500;
            box-shadow: 0 1px 2px rgba(0,0,0,0.1);
        }
         .admin-jump-button:hover { background-color: #e0a800; }
        .skip-section-button { /* Class for skip buttons */
            position: absolute; top: 18px; right: 18px;
            background-color: var(--warning-yellow); color: var(--text-color);
            padding: 6px 12px; font-size: 0.85em; border: 1px solid #d6a100;
            border-radius: 4px; font-weight: 500; box-shadow: 0 1px 2px rgba(0,0,0,0.1);
        }
        #item-selector { /* Updated ID from condition-selector */
             border: 2px solid var(--uci-blue); padding: 25px; margin-bottom: 25px;
             background-color: var(--scenario-box-bg); border-radius: 6px;
         }
         #item-selector h3 { margin-top: 0; }
         #item-selector label { font-weight: 600; display: block; margin-bottom: 10px;}
         #item-selector select { padding: 10px; border-radius: 4px; border: 1px solid var(--border-color); width: 100%; margin-bottom: 15px;}
         #item-selector div { margin-bottom: 20px; }


        /* --- Basic Responsiveness --- (Keep from v3) */
        @media (max-width: 768px) {
             body { padding-bottom: 90px; font-size: 15px; }
             #experiment-container { padding: 20px; }
             .section { padding: 20px; }
             h2 { font-size: 1.6em; }
             button { padding: 10px 20px; }
             #admin-bar { justify-content: flex-start; padding: 8px 15px;}
        }
         @media (max-width: 480px) {
             .header-bar { font-size: 1.4em; }
             h2 { font-size: 1.5em; }
             input[type="number"] { width: 120px; }
             .estimation-table input[type="number"] { width: 110px; }
             .slider-container { flex-direction: column; gap: 8px; align-items: stretch;}
             .slider-value-display { text-align: center; margin-top: 5px;}
             .scale-endpoints { font-size: 0.85em;}
             .likert-scale li, .multiple-choice li, .true-false li { margin-bottom: 8px; }
             .option-label { margin-left: 6px; }
             input[type="radio"], input[type="checkbox"] { transform: scale(1.1); }
             .navigation-buttons button { width: 100%; margin-top: 10px;}
             #admin-bar { font-size: 0.8em; }
             #admin-bar button { font-size: 0.8em; padding: 4px 8px;}
         }

         /* Error message styling */
         .error-message { color: var(--danger-red); font-weight: 500; font-size: 0.9em; margin-top: 8px; }
    </style>
</head>
<body>

    <div class="header-bar">
        AI Energy Advisor Task (Admin Mode - v5 Fixed)
    </div>

     <div id="progress-bar-container"><div id="progress-bar"></div></div>
     <div id="progress-text">Section 1 of 8</div>

    <div id="experiment-container">

        <!-- Instructions Section for Gorman - AI Energy Study Proposal -->
        <div id="section-instructions" class="section active">
            <button class="skip-section-button" data-skip-target="energy-knowledge">Skip Section</button> <!-- Data attribute for target -->
            <h2>Instructions</h2>
            <p>Welcome to this study on interacting with an AI energy advisor.</p>
            <p><strong>ADMIN MODE:</strong> Skip sections via buttons or admin bar.</p>
            <!-- FIXED Markdown -->
            <p>Flow: Energy Knowledge -> Numeracy -> AI Familiarity -> <strong>Item Selection</strong> -> <strong>Scenario Interaction (JSON-based)</strong> -> Post-Task -> Debriefing.</p>
            <div class="navigation-buttons">
                <button id="start-button">Start</button> <!-- ID for listener -->
            </div>
        </div>

        <!-- Section 1: Energy Knowledge -->
        <div id="section-energy-knowledge" class="section">
            <button class="skip-section-button" data-skip-target="numeracy">Skip Section</button>
            <h2>Section 1: Energy Knowledge & Perception</h2>
            <p>Assess energy knowledge. Best guesses are fine.</p>
            <!-- Questions dynamically inserted -->
            <div class="navigation-buttons">
                <button class="next-section-button" data-next-target="numeracy">Next</button> <!-- Class for listener -->
            </div>
        </div>

        <!-- Section 2: Numeracy -->
        <div id="section-numeracy" class="section">
            <button class="skip-section-button" data-skip-target="ai-familiarity">Skip Section</button>
            <h2>Section 2: Numeracy Questions</h2>
            <p>Questions on numbers and probabilities.</p>
            <!-- Questions dynamically inserted -->
            <div class="navigation-buttons">
                <button class="next-section-button" data-next-target="ai-familiarity">Next</button>
            </div>
        </div>

        <!-- Section 3: AI Familiarity -->
        <div id="section-ai-familiarity" class="section">
            <button class="skip-section-button" data-skip-target="item-selector">Skip Section</button>
            <h2>Section 3: AI Familiarity & Trust Propensity</h2>
            <p>Questions about AI experience and trust in technology.</p>
            <!-- Questions dynamically inserted -->
            <div class="navigation-buttons">
                 <button class="next-section-button" data-next-target="item-selector">Next</button>
            </div>
        </div>

        <!-- Item Selector -->
        <div id="section-item-selector" class="section">
             <button class="skip-section-button" data-skip-target="scenario-task">Skip Selection (Defaults)</button>
             <h2>Admin: Select Scenario Items (4 Trials)</h2>
             <p>Choose 4 items from the loaded JSON data to present in the next section.</p>
             <div id="item-selector-form"></div>
             <div class="navigation-buttons">
                 <button id="confirm-items-button">Confirm Items & Start Scenarios</button>
             </div>
         </div>

        <!-- Scenario Task (JSON-driven) -->
        <div id="section-scenario-task" class="section">
            <button class="skip-section-button" data-skip-target="post-task">Skip Scenarios</button>
            <h2>Section 4: AI Advisor Interaction</h2>
            <p>Read the prompt and the AI's response, then answer the questions below.</p>
            <div id="scenario-content"></div>
            <hr style="margin: 30px 0; border: none; border-top: 1px solid var(--border-color);">
            <div id="scenario-questions"></div>
            <div class="navigation-buttons">
                <button id="scenario-next-button">Next Scenario</button>
            </div>
        </div>

        <!-- Section 5: Post-Task -->
        <div id="section-post-task" class="section">
             <button class="skip-section-button" data-skip-target="debriefing">Skip Section</button>
            <h2>Section 5: Post-Scenario Trust & Perception</h2>
            <p>Final questions about overall impressions.</p>
             <!-- Questions dynamically inserted -->
              <div class="navigation-buttons">
                  <button class="next-section-button" data-next-target="debriefing">Next</button>
              </div>
        </div>

        <!-- Debriefing Section -->
        <div id="section-debriefing" class="section">
            <!-- No skip needed -->
            <h2>Debriefing</h2>
            <p>Thank you!</p>
            <p><strong>Study Purpose:</strong> AI uncertainty expression effects.</p>
            <p><strong>Items Shown:</strong> Based on admin selection from JSON data.</p>
             <p><strong>Item Ground Truths:</strong></p>
             <ul id="debrief-clarifications"></ul>
            <p><strong>Collected Responses (Admin Mode):</strong></p>
            <textarea id="final-results" readonly rows="12"></textarea>
            <div class="navigation-buttons">
                <button id="restart-button">Restart</button> <!-- Use ID -->
            </div>
        </div>

    </div> <!-- End experiment-container -->

    <!-- Admin Bar -->
    <div id="admin-bar">
        <span>ADMIN | Current: <strong id="admin-current-section">...</strong></span>|<span>Jump:</span>
        <!-- Use data-section-index attribute for jump targets -->
        <button class="admin-jump-button" data-section-index="0">Instr</button>
        <button class="admin-jump-button" data-section-index="1">Energy</button>
        <button class="admin-jump-button" data-section-index="2">Num</button>
        <button class="admin-jump-button" data-section-index="3">AI</button>
        <button class="admin-jump-button" data-section-index="4">Select</button>
        <button class="admin-jump-button" data-section-index="5">Interact</button>
        <button class="admin-jump-button" data-section-index="6">Post</button>
        <button class="admin-jump-button" data-section-index="7">Debrief</button>
    </div>


    <script>
    // --- Constants ---
    const NUM_SCENARIOS_TO_SELECT = 4;
    const LLM_ESTIMATES_URL = 'llm_estimates1.json';

    // --- Data Definitions for Gorman - AI Energy Study Proposal ---
    const questions = { /* PASTE FULL questions OBJECT HERE from v3/v4 */
        // Section 1: Energy Knowledge (Questions 1-18 + Estimation)
        q1_energy_largest_use: { id: 'q1_energy_largest_use', section: 'energy-knowledge', type: 'multiple-choice', text: 'In a typical US household, which of the following accounts for the largest portion of annual energy consumption?', options: [ { value: 'a', text: 'Lighting' }, { value: 'b', text: 'Electronics (TVs, computers, etc.)' }, { value: 'c', text: 'Heating and Cooling' }, { value: 'd', text: 'Refrigeration' }, { value: 'e', text: "Don't Know" } ], correctAnswer: 'c'},
        q2_energy_phantom_load: { id: 'q2_energy_phantom_load', section: 'energy-knowledge', type: 'true-false', text: 'True or False: Leaving a phone charger plugged into the wall uses a significant amount of electricity, even when no phone is connected.', options: [ { value: 'true', text: 'True' }, { value: 'false', text: 'False' } ], correctAnswer: 'false' },
        q3_energy_led_vs_thermostat: { id: 'q3_energy_led_vs_thermostat', section: 'energy-knowledge', type: 'multiple-choice', text: 'Which of these actions generally saves more energy over a year in a typical US home?', options: [ { value: 'a', text: 'Replacing 5 incandescent light bulbs with LEDs' }, { value: 'b', text: 'Lowering the thermostat by 2 degrees Fahrenheit during the winter months (8 hours/day)' }, { value: 'c', text: 'Both save about the same amount' }, { value: 'd', text: "Don't Know" } ], correctAnswer: 'b' },
        q4_energy_heuristic1: { id: 'q4_energy_heuristic1', section: 'energy-knowledge', type: 'multiple-choice', text: 'Which statement is generally MORE accurate?', options: [ { value: 'a', text: 'Appliances that primarily heat or cool things use much more energy than most other appliances.' }, { value: 'b', text: 'The physical size of an appliance is the best indicator of how much energy it uses.' } ], correctAnswer: 'a' },
        q5_energy_heuristic2: { id: 'q5_energy_heuristic2', section: 'energy-knowledge', type: 'multiple-choice', text: 'Which statement is generally MORE accurate for saving energy?', options: [ { value: 'a', text: 'The most effective way to save energy is to focus on frequently turning off or unplugging small devices.' }, { value: 'b', text: 'The most effective way to save energy often involves improving the efficiency of major systems like heating, cooling, or insulation.' } ], correctAnswer: 'b' },
        q6_energy_heuristic3: { id: 'q6_energy_heuristic3', section: 'energy-knowledge', type: 'multiple-choice', text: 'Which statement is generally MORE accurate?', options: [ { value: 'a', text: 'Devices that run for long periods, even at low power (like a refrigerator), can use a significant amount of energy over time.' }, { value: 'b', text: 'Devices that feel hot to the touch are always the biggest energy consumers in the home.' } ], correctAnswer: 'a' },
        q7_energy_choice1: { id: 'q7_energy_choice1', section: 'energy-knowledge', type: 'multiple-choice', text: 'Which uses less energy?', options: [ { value: 'a', text: 'A window air conditioning unit' }, { value: 'b', text: 'An electric oven' } ] /* Correct: A */ },
        q8_energy_choice2: { id: 'q8_energy_choice2', section: 'energy-knowledge', type: 'multiple-choice', text: 'Which uses the least energy?', options: [ { value: 'a', text: 'Running an electric water heater' }, { value: 'b', text: 'Running a vacuum cleaner' }, { value: 'c', text: 'Running a refrigerator' } ] /* Correct: C */ },
        q9_energy_choice3: { id: 'q9_energy_choice3', section: 'energy-knowledge', type: 'multiple-choice', text: 'Which uses the least energy?', options: [ { value: 'a', text: 'Electric blanket' }, { value: 'b', text: 'Electric space heater' }, { value: 'c', text: 'Electric treadmill' } ] /* Correct: A */ },
        q10_energy_choice4: { id: 'q10_energy_choice4', section: 'energy-knowledge', type: 'multiple-choice', text: 'Which uses the least energy?', options: [ { value: 'a', text: 'Steam iron' }, { value: 'b', text: 'Blender' }, { value: 'c', text: 'Humidifier' } ] /* Correct: C */ },
        q11_energy_choice5: { id: 'q11_energy_choice5', section: 'energy-knowledge', type: 'multiple-choice', text: 'Which uses the least energy?', options: [ { value: 'a', text: 'Video game console (like Wii, Xbox, Playstation)' }, { value: 'b', text: 'Cable box' }, { value: 'c', text: 'Smart speaker (like Echo, Google Home)' } ] /* Correct: C */ },
        q12_energy_choice6: { id: 'q12_energy_choice6', section: 'energy-knowledge', type: 'multiple-choice', text: 'Which uses the least energy?', options: [ { value: 'a', text: 'Clothes dryer' }, { value: 'b', text: 'Washing machine' }, { value: 'c', text: 'Dishwasher' } ] /* Correct: B */ },
        q13_energy_choice7: { id: 'q13_energy_choice7', section: 'energy-knowledge', type: 'multiple-choice', text: 'Which uses the least energy?', options: [ { value: 'a', text: 'Microwave' }, { value: 'b', text: 'Toaster oven' }, { value: 'c', text: 'Electric kettle' } ] /* Correct: A */ },
        q14_energy_choice8: { id: 'q14_energy_choice8', section: 'energy-knowledge', type: 'multiple-choice', text: 'Which uses less energy?', options: [ { value: 'a', text: 'Watching a movie on a 40" flat screen TV' }, { value: 'b', text: 'Watching a movie with a digital projector' } ] /* Correct: A */ },
        q15_energy_choice9: { id: 'q15_energy_choice9', section: 'energy-knowledge', type: 'multiple-choice', text: 'Which uses less energy?', options: [ { value: 'a', text: 'A ceiling fan' }, { value: 'b', text: 'A tube fluorescent light' } ] /* Correct: B */ },
        q16_subjective_knowledge: { id: 'q16_subjective_knowledge', section: 'energy-knowledge', type: 'likert', points: 7, text: 'How knowledgeable do you feel about ways to save energy in your home?', scale: ['Not at all knowledgeable', 'Extremely knowledgeable'] },
        q17_subjective_efficacy: { id: 'q17_subjective_efficacy', section: 'energy-knowledge', type: 'likert', points: 7, text: "How confident are you in your ability to significantly reduce your household's energy consumption?", scale: ['Not at all confident', 'Extremely confident'] },
        q18_energy_estimation: { id: 'q18_energy_estimation', section: 'energy-knowledge', type: 'estimation-table', text: 'Estimate energy use relative to a 100W (100 unit) bulb per hour:', items: [
            { name: 'Compact Fluorescent Bulb (CFL)', key: 'est_cfl' }, { name: 'Desktop Computer', key: 'est_desktop' },
            { name: 'Laptop Computer', key: 'est_laptop' }, { name: 'Stereo', key: 'est_stereo' },
            { name: 'Electric Clothes Dryer', key: 'est_dryer' }, { name: 'Portable Heater', key: 'est_heater' },
            { name: 'Room Air-Conditioner', key: 'est_room_ac' }, { name: 'Central Air Conditioner', key: 'est_central_ac' },
            { name: 'Dish Washer', key: 'est_dishwasher' }
        ]},
        q19_numeracy_percentage: { id: 'q19_numeracy_percentage', section: 'numeracy', type: 'multiple-choice', text: 'Imagine a certain event has a 10% chance of happening. If **1000 people** experience this situation, about how many would you expect to see the event happen to?', options: [ { value: 'a', text: '1 person' }, { value: 'b', text: '10 people' }, { value: 'c', text: '100 people' }, { value: 'd', text: '500 people' } ], correctAnswer: 'c' },
        q20_numeracy_probability_compare: { id: 'q20_numeracy_probability_compare', section: 'numeracy', type: 'multiple-choice', text: 'Which of the following represents the larger probability?', options: [ { value: 'a', text: '5%' }, { value: 'b', text: '1 out of 20' }, { value: 'c', text: 'They are the same' } ], correctAnswer: 'c' },
        q21_ai_familiarity: { id: 'q21_ai_familiarity', section: 'ai-familiarity', type: 'multiple-choice', text: 'How often do you use AI-based assistants or chatbots (such as Siri, Alexa, Google Assistant, ChatGPT)?', options: [ { value: 'never', text: 'Never' }, { value: 'rarely', text: 'Rarely (a few times a year)' }, { value: 'sometimes', text: 'Sometimes (a few times a month)' }, { value: 'often', text: 'Often (weekly)' }, { value: 'very_frequently', text: 'Very Frequently (daily or almost daily)' } ] },
        q22_ai_self_efficacy: { id: 'q22_ai_self_efficacy', section: 'ai-familiarity', type: 'likert', points: 5, text: '“I consider myself knowledgeable about how AI like ChatGPT works.”', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q23_ai_knowledge_hallucination: { id: 'q23_ai_knowledge_hallucination', section: 'ai-familiarity', type: 'true-false', text: 'Large Language Model AIs (like ChatGPT) <strong>can sometimes produce incorrect or made-up information</strong> that looks convincing.', options: [ { value: 'true', text: 'True' }, { value: 'false', text: 'False' } ], correctAnswer: 'true' },
        q24_ai_knowledge_realtime: { id: 'q24_ai_knowledge_realtime', section: 'ai-familiarity', type: 'true-false', text: 'Chatbot assistants like ChatGPT have <strong>access to real-time, up-to-date information on the internet</strong>.', options: [ { value: 'true', text: 'True' }, { value: 'false', text: 'False' } ], correctAnswer: 'false' },
        q25_propensity_trust_default: { id: 'q25_propensity_trust_default', section: 'ai-familiarity', type: 'likert', points: 5, text: '“I tend to trust technology or automation <strong>by default</strong>, until I see evidence that something is wrong.”', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q26_propensity_trust_skeptical: { id: 'q26_propensity_trust_skeptical', section: 'ai-familiarity', type: 'likert', points: 5, text: '“When it comes to new automated systems, I am generally <strong>skeptical</strong> of them at first.”', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q39_tpa_dependable: { id: 'q39_tpa_dependable', section: 'post-task', type: 'likert', points: 7, text: 'The AI system was dependable during the task.', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q40_tpa_reliable: { id: 'q40_tpa_reliable', section: 'post-task', type: 'likert', points: 7, text: "The AI system's responses were reliable during the task.", scale: ['Strongly Disagree', 'Strongly Agree'] },
        q41_tpa_trust_info: { id: 'q41_tpa_trust_info', section: 'post-task', type: 'likert', points: 7, text: 'I could trust the information provided by the AI system during the task.', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q42_tpa_confident_abilities: { id: 'q42_tpa_confident_abilities', section: 'post-task', type: 'likert', points: 7, text: "I was confident in the AI system's abilities for the task.", scale: ['Strongly Disagree', 'Strongly Agree'] },
        q43_tpa_consistent: { id: 'q43_tpa_consistent', section: 'post-task', type: 'likert', points: 7, text: 'The AI system behaved consistently during the task.', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q44_tpa_suspicious: { id: 'q44_tpa_suspicious', section: 'post-task', type: 'likert', points: 7, text: "I was suspicious of the AI system's outputs during the task.", scale: ['Strongly Disagree', 'Strongly Agree'] },
        q45_tpa_wary: { id: 'q45_tpa_wary', section: 'post-task', type: 'likert', points: 7, text: 'I was wary of the AI system during the task.', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q46_tpa_questionable: { id: 'q46_tpa_questionable', section: 'post-task', type: 'likert', points: 7, text: "The AI system's actions or responses felt questionable during the task.", scale: ['Strongly Disagree', 'Strongly Agree'] },
        q47_tpa_uncertain_caps: { id: 'q47_tpa_uncertain_caps', section: 'post-task', type: 'likert', points: 7, text: "I was uncertain about the AI system's capabilities during the task.", scale: ['Strongly Disagree', 'Strongly Agree'] },
        q48_tpa_deceptive: { id: 'q48_tpa_deceptive', section: 'post-task', type: 'likert', points: 7, text: 'The AI system seemed potentially deceptive or misleading during the task.', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q49_llm_realtime_db: { id: 'q49_llm_realtime_db', section: 'post-task', type: 'likert', points: 7, text: 'LLMs access and retrieve information from a constantly updated, real-time database like a search engine.', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q50_llm_patterns: { id: 'q50_llm_patterns', section: 'post-task', type: 'likert', points: 7, text: 'LLMs primarily generate responses by identifying patterns in the massive amounts of text data they were trained on.', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q51_llm_intentions: { id: 'q51_llm_intentions', section: 'post-task', type: 'likert', points: 7, text: 'LLMs have internal goals or intentions similar to humans.', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q52_llm_reasoning_accuracy: { id: 'q52_llm_reasoning_accuracy', section: 'post-task', type: 'likert', points: 7, text: 'When an LLM provides an explanation, it accurately reflects the internal "reasoning" process it used to arrive at the answer.', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q53_llm_avoids_errors: { id: 'q53_llm_avoids_errors', section: 'post-task', type: 'likert', points: 7, text: 'LLMs are designed to detect and avoid providing factually incorrect information (hallucinations).', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q54_llm_understands_meaning: { id: 'q54_llm_understands_meaning', section: 'post-task', type: 'likert', points: 7, text: 'LLMs understand the meaning of the text they generate in the same way a human does.', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q55_llm_confidence_accuracy: { id: 'q55_llm_confidence_accuracy', section: 'post-task', type: 'likert', points: 7, text: "An LLM's confidence in its answer (if expressed) generally reflects its actual likelihood of being correct.", scale: ['Strongly Disagree', 'Strongly Agree'] },
        q56_llm_math_reliable: { id: 'q56_llm_math_reliable', section: 'post-task', type: 'likert', points: 7, text: 'LLMs can perform complex mathematical calculations reliably without errors.', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q57_over_trust_concern: { id: 'q57_over_trust_concern', section: 'post-task', type: 'likert', points: 5, text: '“I might be trusting this AI more than I should for important decisions.”', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q58_under_trust_concern: { id: 'q58_under_trust_concern', section: 'post-task', type: 'likert', points: 5, text: '“I was too skeptical of the AI, even when its answers were likely correct.”', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q59_perceived_accuracy: { id: 'q59_perceived_accuracy', section: 'post-task', type: 'slider', text: 'Approximately what <strong>percentage of the AI’s answers</strong> do you believe were <strong>correct</strong>?', min: 0, max: 100, step: 5, unit: '%' },
        q60_future_use: { id: 'q60_future_use', section: 'post-task', type: 'likert', points: 5, text: '“If this AI advisor were available to me, I would use it regularly for managing my home’s energy use.”', scale: ['Very Unlikely', 'Very Likely'] },
        q61_reliance_intention: { id: 'q61_reliance_intention', section: 'post-task', type: 'likert', points: 5, text: '“For decisions like buying a new appliance or making home improvements, I would base my decision primarily on the AI’s advice.”', scale: ['Strongly Disagree', 'Strongly Agree'] },
        q62_mental_model_source: { id: 'q62_mental_model_source', section: 'post-task', type: 'multiple-choice', text: 'Where do you think this AI’s answers are coming from (what is the AI relying on)?', options: [ { value: 'db', text: 'A database of factual energy information (like an encyclopedia).' }, { value: 'llm', text: 'General knowledge learned from lots of text it was trained on (it “strings together” information it learned).' }, { value: 'realtime', text: 'Real-time data from the internet and up-to-date sources.' }, { value: 'human', text: 'Input from human energy experts behind the scenes.' }, { value: 'unsure', text: 'Not sure.' } ] },
        q63_mental_model_limitations: { id: 'q63_mental_model_limitations', section: 'post-task', type: 'open-ended', text: 'In your own words, <strong>what do you think are the limitations of this AI advisor?</strong> (For example, are there things it likely doesn’t know or situations it might not handle well?)' },
        q64_additional_comments: { id: 'q64_additional_comments', section: 'post-task', type: 'open-ended', text: '(Optional) Do you have any <strong>other thoughts or feedback</strong> about using this AI energy advisor?' }
     };
    // Scenarios array is no longer used

    // --- Experiment Logic for Gorman - AI Energy Study Proposal ---

    const experiment = {
        currentState: { /* Keep currentState structure from v4 */
            isAdmin: true,
            sectionIndex: 0,
            scenarioIndex: -1,
            sections: [
                'instructions', 'energy-knowledge', 'numeracy', 'ai-familiarity',
                'item-selector', 'scenario-task', 'post-task', 'debriefing'
            ],
            get totalSections() { return this.sections.length; },
            currentSectionQuestions: [],
            participantResponses: {},
            llmEstimatesData: null,
            availableItems: [],
            selectedItems: [],
        },

        async init() {
            console.log("Experiment v5 Initializing...");
             try {
                 await this.loadLLMEstimates();
                 this.prepareAvailableItems();
                 this.attachEventListeners(); // Attach listeners AFTER object is defined
                 this.showSection(this.currentState.sections[0]); // Show initial section
                 this.updateAdminBar();
                 this.updateProgressBar();
                 console.log("Experiment v5 Initialized successfully.");
             } catch (error) {
                 console.error("FATAL: Initialization failed:", error);
                 alert("A critical error occurred during initialization. Cannot continue.");
                 const container = document.getElementById('experiment-container');
                 if (container) container.innerHTML = `<h2 style="color:red;">Initialization Error</h2><p>Check console (F12), ensure '${LLM_ESTIMATES_URL}' is accessible.</p><pre>${error.stack}</pre>`;
             }
        },

        attachEventListeners() {
             console.log("Attaching event listeners...");
             try {
                 // Start button
                 document.getElementById('start-button')?.addEventListener('click', () => this.nextSection());

                 // Generic Next buttons
                 document.querySelectorAll('.next-section-button').forEach(button => {
                     button.addEventListener('click', () => this.nextSection());
                 });

                 // Skip buttons
                 document.querySelectorAll('.skip-section-button').forEach(button => {
                     button.addEventListener('click', (event) => {
                         const targetSectionId = event.target.dataset.skipTarget;
                         this.skipSection(targetSectionId); // Pass target if needed, or just advance
                     });
                 });

                 // Confirm Items button
                 document.getElementById('confirm-items-button')?.addEventListener('click', () => this.confirmItems());

                 // Scenario Next button
                 document.getElementById('scenario-next-button')?.addEventListener('click', () => this.nextScenario());

                 // Restart button
                 document.getElementById('restart-button')?.addEventListener('click', () => window.location.reload());

                 // Admin Jump buttons
                 document.querySelectorAll('.admin-jump-button').forEach(button => {
                     button.addEventListener('click', (event) => {
                         const sectionIndex = parseInt(event.target.dataset.sectionIndex, 10);
                         if (!isNaN(sectionIndex)) {
                             this.goToSection(sectionIndex);
                         }
                     });
                 });
                 console.log("Event listeners attached.");
             } catch (error) {
                 console.error("Error attaching event listeners:", error);
                 // This might happen if the DOM isn't fully ready, though DOMContentLoaded should prevent it.
             }
         },

        async loadLLMEstimates() { /* Keep from v4 */
             console.log(`Attempting to load LLM estimates from: ${LLM_ESTIMATES_URL}`);
            try {
                const response = await fetch(LLM_ESTIMATES_URL);
                if (!response.ok) throw new Error(`HTTP ${response.status} fetching ${LLM_ESTIMATES_URL}`);
                this.currentState.llmEstimatesData = await response.json();
                if (!Array.isArray(this.currentState.llmEstimatesData) || this.currentState.llmEstimatesData.length === 0) {
                     throw new Error("Loaded data is not a valid non-empty array.");
                }
                console.log(`LLM estimates loaded successfully: ${this.currentState.llmEstimatesData.length} items.`);
            } catch (error) {
                console.error(`Error loading LLM estimates:`, error);
                throw new Error(`Failed to load/parse '${LLM_ESTIMATES_URL}'. ${error.message}`);
            }
        },
        prepareAvailableItems() { /* Keep from v4 */
            if (!this.currentState.llmEstimatesData) return;
            this.currentState.availableItems = this.currentState.llmEstimatesData.map((item, index) => ({
                 name: item.item_name || item._row || `Item Index ${index}`, // Fallback name using index
                 label: item.item_label || item.item_name || `Item Index ${index}` // Display label
            }));
            console.log("Available items prepared:", this.currentState.availableItems);
        },
        showSection(sectionId) { /* Keep from v4 */
            console.log(`Showing section: ${sectionId} (Index: ${this.currentState.sectionIndex})`);
             try {
                 document.querySelectorAll('.section').forEach(sec => sec.classList.remove('active'));
                 const sectionElement = document.getElementById(`section-${sectionId}`);
                 if (!sectionElement) throw new Error(`Section element '#section-${sectionId}' not found.`);
                 sectionElement.classList.add('active');

                 // Find navigation button container within the specific section
                 const navButtonContainer = sectionElement.querySelector('.navigation-buttons');

                 // Hide all nav buttons within the section initially
                 if (navButtonContainer) {
                      navButtonContainer.style.display = 'none';
                 }


                 // Conditionally show navigation and render content
                 if (['energy-knowledge', 'numeracy', 'ai-familiarity', 'post-task'].includes(sectionId)) {
                     this.renderQuestionsForSection(sectionId);
                     if (navButtonContainer) navButtonContainer.style.display = 'block'; // Show generic next
                 } else if (sectionId === 'item-selector') {
                     this.renderItemSelector();
                      if (navButtonContainer) navButtonContainer.style.display = 'block'; // Show confirm button
                 } else if (sectionId === 'scenario-task') {
                      if (this.currentState.selectedItems.length !== NUM_SCENARIOS_TO_SELECT) {
                          console.warn("Items not fully selected! Redirecting to selector.");
                           this.goToSection(this.currentState.sections.indexOf('item-selector'));
                           return;
                      }
                      if (this.currentState.scenarioIndex < 0) this.currentState.scenarioIndex = 0;
                      this.loadScenario(this.currentState.scenarioIndex);
                      if (navButtonContainer) navButtonContainer.style.display = 'block'; // Show scenario next/finish button
                 } else if (sectionId === 'debriefing') {
                     this.populateDebriefing();
                     this.displayResults();
                     if (navButtonContainer) navButtonContainer.style.display = 'block'; // Show restart button
                 } else if (sectionId === 'instructions') {
                    if (navButtonContainer) navButtonContainer.style.display = 'block'; // Show start button
                 }

                 this.updateAdminBar();
                 this.updateProgressBar();
                 window.scrollTo(0, 0);

             } catch (error) {
                 console.error(`Error showing section ${sectionId}:`, error);
                 alert(`An error occurred displaying section '${sectionId}'. Check console.`);
             }
        },
        renderQuestionsForSection(sectionId) { /* Keep from v4 */
             const container = document.getElementById(`section-${sectionId}`);
             if (!container) { console.error(`Container not found: ${sectionId}`); return; }
             const navButtons = container.querySelector('.navigation-buttons');
             container.querySelectorAll('.question-block').forEach(block => block.remove());

             this.currentState.currentSectionQuestions = Object.values(questions).filter(q => q.section === sectionId);
             this.currentState.currentSectionQuestions.forEach(q => {
                  try {
                      // Replace Markdown bold with <strong> tags in question text
                      const questionTextHtml = q.text.replace(/\*\*(.*?)\*\*/g, '<strong>$1</strong>');
                      const questionHtml = this.createQuestionHtml({...q, text: questionTextHtml }); // Pass updated text

                      if (navButtons) navButtons.insertAdjacentHTML('beforebegin', questionHtml);
                      else container.insertAdjacentHTML('beforeend', questionHtml);

                      if (q.type === 'slider') {
                          this.attachSliderListener(container, q.id); // Use helper
                      }
                 } catch (error) {
                     console.error(`Error creating HTML for question ${q.id}:`, error);
                     const errorHtml = `<div class="question-block" style="border-color:red;"><p style="color:red;">Error loading question: ${q.id}</p></div>`;
                      if (navButtons) navButtons.insertAdjacentHTML('beforebegin', errorHtml);
                      else container.insertAdjacentHTML('beforeend', errorHtml);
                 }
             });
        },
        createQuestionHtml(q) { /* Keep from v4 */
             // --- Consolidated Likert Logic ---
             if (q.type === 'likert') {
                 const points = q.points || 5;
                 let listItems = '';
                 for (let i = 1; i <= points; i++) {
                     let labelText = `${i}`;
                     listItems += `<li><input type="radio" id="${q.id}-${i}" name="${q.id}" value="${i}"><label for="${q.id}-${i}" class="option-label">${labelText}</label></li>`;
                 }
                 let endpoints = '';
                 if (q.scale && q.scale.length === 2) {
                     endpoints = `<div class="scale-endpoints"><span>1 - ${q.scale[0]}</span><span>${points} - ${q.scale[1]}</span></div>`;
                 }
                 // Use input-group-label class for the main label
                 return `<div class="question-block" id="block-${q.id}">
                             <label class="input-group-label" for="${q.id}">${q.text}</label>
                             <ul class="likert-scale">${listItems}</ul>
                             ${endpoints}
                         </div>`;
             }
             // --- Slider Logic with Live Value Display ---
              else if (q.type === 'slider') {
                 const min = q.min !== undefined ? q.min : 0;
                 const max = q.max !== undefined ? q.max : 100;
                 const step = q.step !== undefined ? q.step : (q.id.includes('confidence') ? 10 : 1);
                 const initialValue = q.id.includes('confidence') ? 50 : Math.round(min + (max - min) / 2);
                 return `<div class="question-block" id="block-${q.id}">
                             <label for="${q.id}">${q.text}</label>
                              <div class="scale-endpoints"><span>${min}${q.unit || ''}</span><span>${max}${q.unit || ''}</span></div>
                             <div class="slider-container">
                                 <input type="range" id="${q.id}" name="${q.id}" min="${min}" max="${max}" step="${step}" value="${initialValue}" data-unit="${q.unit || ''}">
                                 <span class="${q.id}-value-display slider-value-display">${initialValue}${q.unit || ''}</span>
                               </div>
                          </div>`;
             }
             // --- Other types ---
             else if (q.type === 'multiple-choice' || q.type === 'true-false') {
                 let listItems = '';
                 q.options.forEach(opt => {
                     listItems += `<li><input type="radio" id="${q.id}-${opt.value}" name="${q.id}" value="${opt.value}"><label for="${q.id}-${opt.value}" class="option-label">${opt.text}</label></li>`;
                 });
                  // Use input-group-label class for the main label
                  return `<div class="question-block" id="block-${q.id}">
                             <label class="input-group-label" for="${q.id}">${q.text}</label>
                             <ul class="${q.type}">${listItems}</ul>
                          </div>`;
             }
             else if (q.type === 'estimation-table') {
                  let tableRows = '';
                  q.items.forEach(item => {
                      tableRows += `<tr>
                                         <td>${item.name}</td>
                                         <td><input type="number" id="${item.key}" name="${item.key}" min="0" pattern="[0-9]*"></td>
                                      </tr>`;
                  });
                  // Use input-group-label class for the main label
                  return `<div class="question-block" id="block-${q.id}">
                              <label class="input-group-label">${q.text || 'Energy Estimation'}</label>
                              <p>Reference: 100W incandescent bulb = 100 units/hour. Best guess is fine.</p>
                              <div class="estimation-table-wrapper">
                                  <table class="estimation-table">
                                      <thead><tr><th>Device</th><th>Your estimate (Units/Hour)</th></tr></thead>
                                      <tbody>${tableRows}</tbody>
                                  </table>
                              </div>
                          </div>`;
             }
             else if (q.type === 'open-ended') {
                  return `<div class="question-block" id="block-${q.id}">
                             <label for="${q.id}">${q.text}</label>
                             <textarea id="${q.id}" name="${q.id}" rows="4"></textarea>
                          </div>`;
             }
             // --- Fallback for unknown ---
             else {
                 console.warn("Unknown question type:", q.type, "for question:", q.id);
                  return `<div class="question-block" id="block-${q.id}" style="border-color:red;">...Error loading question ${q.id}...</div>`;
             }
        },
        renderItemSelector() { /* Keep from v4 */
             const container = document.getElementById('item-selector-form');
            if (!container) { console.error("Item selector container not found"); return; }
            container.innerHTML = ''; // Clear previous

            if (!this.currentState.availableItems || this.currentState.availableItems.length === 0) {
                 container.innerHTML = `<p class="error-message">Error: No items available from JSON data.</p>`;
                 return;
            }

            for (let i = 0; i < NUM_SCENARIOS_TO_SELECT; i++) {
                const div = document.createElement('div');
                const selectId = `item-select-${i}`;
                let optionsHtml = `<option value="">-- Select Item ${i + 1} --</option>`;
                this.currentState.availableItems.forEach(item => {
                     const isSelected = this.currentState.selectedItems[i]?.item_name === item.name;
                     optionsHtml += `<option value="${item.name}" ${isSelected ? 'selected' : ''}>${item.label}</option>`;
                });

                div.innerHTML = `
                    <label for="${selectId}">Select Item for Trial ${i + 1}:</label>
                    <select id="${selectId}" name="${selectId}">
                        ${optionsHtml}
                    </select>
                `;
                container.appendChild(div);
            }
        },
        confirmItems() { /* Keep from v4 */
            this.currentState.selectedItems = []; // Clear previous
            let allSelected = true;
            const selectedNames = new Set(); // To check for duplicates

            try {
                for (let i = 0; i < NUM_SCENARIOS_TO_SELECT; i++) {
                    const selectElement = document.getElementById(`item-select-${i}`);
                    if (!selectElement) throw new Error(`Selector element item-select-${i} not found`);
                    const selectedName = selectElement.value;

                    if (!selectedName) { allSelected = false; break; }
                    if (selectedNames.has(selectedName)) {
                        alert(`Error: Item "${selectedName}" selected more than once. Please choose unique items.`);
                        return;
                    }
                    selectedNames.add(selectedName);
                    const itemData = this.getItemDataByName(selectedName);
                    if (!itemData) throw new Error(`Data not found for selected item: ${selectedName}`);

                    this.currentState.selectedItems.push({
                        item_name: selectedName,
                        effective_correctness: this.determineCorrectness(itemData),
                        effective_tone: this.determineTone(itemData.confidence_level)
                    });
                }

                if (!allSelected) {
                    alert(`Please select an item for all ${NUM_SCENARIOS_TO_SELECT} trials.`);
                    return;
                }
                console.log("Admin selected items:", this.currentState.selectedItems);
                this.currentState.scenarioIndex = -1;
                this.nextSection();
            } catch (error) {
                console.error("Error confirming items:", error);
                alert("An error occurred confirming selected items. Check console.");
            }
        },
        getItemDataByName(itemName) { /* Keep from v4 */
             if (!this.currentState.llmEstimatesData) return null;
             // Match against potential keys
             return this.currentState.llmEstimatesData.find(item =>
                item.item_name === itemName || item._row === itemName || item.item_label === itemName);
        },
        determineCorrectness(itemData) { /* Keep example logic from v4 */
            const estimate = parseFloat(itemData.llm_estimate);
            const actual = parseFloat(itemData.actual_value);
            if (isNaN(estimate) || isNaN(actual)) return 'unknown';
            if (actual === 0) return estimate === 0 ? 'correct' : 'incorrect'; // Handle zero actual value

            // Specific overrides based on known bad estimates from JSON example
            if (itemData.item_name === "Dish washer" && estimate === 2) return 'incorrect';
            if (itemData.item_name === "Line-dry clothes" && estimate === 10) return 'incorrect';
            if (itemData.item_name === "Summer thermostat" && estimate === 5) return 'incorrect';
            if (itemData.item_name === "Winter thermostat" && estimate === 5) return 'incorrect';
            if (itemData.item_name === "Washer setting" && estimate === 10) return 'incorrect';

            const ratio = estimate / actual;
            // Simple ratio check (e.g., within 50% range)
            if (ratio >= 0.5 && ratio <= 1.5) return 'correct';
            return 'incorrect';
         },
        determineTone(confidenceLevel) { /* Keep from v4 */
             switch (String(confidenceLevel).toLowerCase()) {
                 case 'high': return 'confident';
                 case 'medium': return 'hedged';
                 case 'low': return 'hedged';
                 default: return 'unknown';
             }
        },
        skipToScenarios() { /* Keep from v4 */
             if (this.currentState.selectedItems.length !== NUM_SCENARIOS_TO_SELECT) {
                console.log("Assigning default items for skip.");
                 this.currentState.selectedItems = this.currentState.availableItems
                     .slice(0, NUM_SCENARIOS_TO_SELECT)
                     .map(availItem => {
                         const itemData = this.getItemDataByName(availItem.name);
                         if (!itemData) return null;
                         return {
                             item_name: availItem.name,
                             effective_correctness: this.determineCorrectness(itemData),
                             effective_tone: this.determineTone(itemData.confidence_level)
                         };
                     })
                     .filter(item => item !== null);

                 if (this.currentState.selectedItems.length !== NUM_SCENARIOS_TO_SELECT) {
                     alert("Error: Could not select default items. JSON data might be incomplete.");
                     this.goToSection(this.currentState.sections.indexOf('item-selector'));
                     return;
                 }
                 console.log("Default items assigned:", this.currentState.selectedItems);
            }
            this.currentState.scenarioIndex = -1;
            this.goToSection(this.currentState.sections.indexOf('scenario-task'));
        },
        loadScenario(index) { /* Keep from v4, ensure attachSliderListener is called */
            if (index >= this.currentState.selectedItems.length || index < 0) {
                 if (index >= this.currentState.selectedItems.length) {
                    this.goToSection(this.currentState.sections.indexOf('post-task'));
                 }
                 return;
            }
            try {
                const selectedItemInfo = this.currentState.selectedItems[index];
                const itemData = this.getItemDataByName(selectedItemInfo.item_name);
                if (!itemData) throw new Error(`Data not found for item: ${selectedItemInfo.item_name}`);

                const trialPrefix = `trial_${index + 1}`;
                this.currentState.participantResponses[`${trialPrefix}_item_name`] = itemData.item_name;
                this.currentState.participantResponses[`${trialPrefix}_prompt`] = itemData.prompt;
                this.currentState.participantResponses[`${trialPrefix}_actual_value`] = itemData.actual_value;
                this.currentState.participantResponses[`${trialPrefix}_llm_estimate`] = itemData.llm_estimate;
                this.currentState.participantResponses[`${trialPrefix}_llm_explanation`] = itemData.llm_explanation;
                this.currentState.participantResponses[`${trialPrefix}_llm_confidence_score`] = itemData.llm_confidence_score;
                this.currentState.participantResponses[`${trialPrefix}_llm_confidence_level`] = itemData.confidence_level;
                this.currentState.participantResponses[`${trialPrefix}_effective_correctness`] = selectedItemInfo.effective_correctness;
                this.currentState.participantResponses[`${trialPrefix}_effective_tone`] = selectedItemInfo.effective_tone;

                const scenarioContentContainer = document.getElementById('scenario-content');
                const scenarioQuestionsContainer = document.getElementById('scenario-questions');
                if (!scenarioContentContainer || !scenarioQuestionsContainer) throw new Error("Scenario DOM elements missing");

                scenarioContentContainer.innerHTML = `
                    <h3>Trial ${index + 1} of ${NUM_SCENARIOS_TO_SELECT}: ${itemData.item_label || itemData.item_name}</h3>
                    <div class="scenario-box">
                        <div class="scenario-prompt">${itemData.prompt}</div>
                         <div class="ai-response-container">
                            <span class="ai-prefix">EnergyAI says:</span>
                            <span class="ai-response-estimate">My estimate is: ${itemData.llm_estimate} units</span>
                            <div class="ai-response-explanation">${itemData.llm_explanation}</div>
                            ${this.currentState.isAdmin ? `<div class="ai-confidence-display">Debug: Conf. Score=${itemData.llm_confidence_score?.toFixed(3)}, Level=${itemData.confidence_level}, Actual=${itemData.actual_value}, Correctness=${selectedItemInfo.effective_correctness}, Tone=${selectedItemInfo.effective_tone}</div>` : ''}
                         </div>
                    </div>
                `;

                const confidenceQId = `${trialPrefix}_confidence`;
                const relianceQId = `${trialPrefix}_reliance`;
                const trustQId = `${trialPrefix}_trust`;

                scenarioQuestionsContainer.innerHTML = `
                    ${this.createQuestionHtml({id: confidenceQId, type: 'slider', text:'How confident are you that the AI’s estimate is correct for this scenario?', min:0, max:100, step:10, unit:'%'})}
                    ${this.createQuestionHtml({id: relianceQId, type: 'multiple-choice', text:`Based on the AI’s response about the ${itemData.item_label || itemData.item_name}, what would you likely do?`, options: [{value: 'accept', text: 'Accept the AI’s estimate/explanation.'}, {value: 'verify', text: 'Seek further information or check against other sources before trusting the AI.'}, {value: 'reject', text: 'Do not trust the AI’s estimate/explanation for this item.'}] })}
                    ${this.createQuestionHtml({id: trustQId, type: 'likert', points: 7, text: `“I trust the AI’s response (estimate and explanation) in this scenario.”`, scale: ['Strongly Disagree', 'Strongly Agree'] })}
                `;

                this.attachSliderListener(scenarioQuestionsContainer, confidenceQId); // Attach listener here

                const nextButton = document.getElementById('scenario-next-button');
                if (!nextButton) throw new Error("Scenario next button missing");
                nextButton.textContent = (index === NUM_SCENARIOS_TO_SELECT - 1) ? "Finish Interaction Task" : "Next Item";

            } catch (error) {
                 console.error(`Error loading scenario item ${index} (${this.currentState.selectedItems[index]?.item_name}):`, error);
                 alert(`An error occurred loading trial ${index + 1}. Check console.`);
                 const scenarioQuestionsContainer = document.getElementById('scenario-questions');
                 if(scenarioQuestionsContainer) scenarioQuestionsContainer.innerHTML = `<p class="error-message">Could not load this trial. <button onclick="experiment.skipScenarioItem()">Skip this Item</button></p>`;
                 // Re-attach skip listener if needed, or just let admin bar handle it
                 document.querySelector('#section-scenario-task .skip-section-button')?.addEventListener('click', () => this.skipSection('post-task'));
            }
        },
        attachSliderListener(container, sliderId) { /* Keep from v4 */
            const slider = container.querySelector(`#${sliderId}`);
             const valueDisplay = container.querySelector(`.${sliderId}-value-display`);
             if (slider && valueDisplay) {
                 const updateSlider = () => {
                     const percent = ((slider.value - slider.min) / (slider.max - slider.min)) * 100;
                     valueDisplay.textContent = slider.value + (slider.dataset.unit || '%');
                     slider.style.background = `linear-gradient(to right, var(--uci-blue-light), var(--uci-blue-light) ${percent}%, var(--progress-bar-bg) ${percent}%, var(--progress-bar-bg))`;
                 };
                 slider.addEventListener('input', updateSlider);
                 updateSlider();
             } else {
                 console.warn(`Slider elements not found in container for ID: ${sliderId}`);
             }
        },
        skipScenarioItem() { /* Keep from v4 */
             console.warn(`Admin skipping scenario item index: ${this.currentState.scenarioIndex}`);
             this.currentState.scenarioIndex++;
             if (this.currentState.scenarioIndex < NUM_SCENARIOS_TO_SELECT) {
                 this.loadScenario(this.currentState.scenarioIndex);
             } else {
                  this.goToSection(this.currentState.sections.indexOf('post-task'));
             }
        },
        // --- Data Handling & Navigation ---
        validateCurrentSection() { return true; }, // Keep admin override
        saveCurrentSectionResponses() { /* Keep from v4 */
             const currentSectionId = this.currentState.sections[this.currentState.sectionIndex];
             console.log(`Saving responses for section: ${currentSectionId}`);
             const container = document.getElementById(`section-${currentSectionId}`);
             if (!container) { console.warn(`Container not found for saving: ${currentSectionId}`); return; }
             try {
                 const inputs = container.querySelectorAll('input, textarea, select'); // Scope to container
                 inputs.forEach(input => {
                     let id = input.name || input.id;
                     if (!id || id.startsWith('item-select-')) return; // Skip unnamed/item selectors

                     if (input.type === 'radio') {
                         if (input.checked) this.currentState.participantResponses[id] = input.value;
                     } else {
                         // Ensure we don't save empty strings for number inputs if they are empty
                          if ((input.type === 'number' || input.id.startsWith('est_')) && input.value.trim() === '') {
                             this.currentState.participantResponses[id] = null; // Or undefined, or skip
                          } else {
                             this.currentState.participantResponses[id] = input.value.trim();
                          }
                     }
                 });
             } catch (error) { console.error(`Error saving responses for ${currentSectionId}:`, error); }
        },
        nextSection(forceSkipValidation = false) { /* Keep from v4 */
             const currentSectionId = this.currentState.sections[this.currentState.sectionIndex];
            if (!forceSkipValidation && !this.validateCurrentSection()) { return; }
            if (currentSectionId !== 'instructions' && currentSectionId !== 'item-selector') { // Don't save item selector choices itself here
               this.saveCurrentSectionResponses();
            }
            if (this.currentState.sectionIndex < this.currentState.sections.length - 1) {
                this.currentState.sectionIndex++;
                this.showSection(this.currentState.sections[this.currentState.sectionIndex]);
            } else { console.log("End of experiment sections."); }
        },
        skipSection(targetSectionId = null) { /* Updated skip logic */
            console.log(`Admin skipping section: ${this.currentState.sections[this.currentState.sectionIndex]}`);
             // If a specific target is provided (e.g., skip from instructions to energy), find its index
             let targetIndex = -1;
             if (targetSectionId) {
                 targetIndex = this.currentState.sections.indexOf(targetSectionId);
             }

             if (targetIndex !== -1) { // Jump to specific target if valid
                 this.goToSection(targetIndex);
             } else { // Default: just go to the next section
                 this.nextSection(true); // Force skip validation
             }
        },
        goToSection(index) { /* Keep from v4 */
            if (index >= 0 && index < this.currentState.sections.length) {
                 const currentSectionId = this.currentState.sections[this.currentState.sectionIndex];
                 if (currentSectionId !== 'instructions' && currentSectionId !== 'item-selector' && currentSectionId !== 'debriefing') {
                    this.saveCurrentSectionResponses();
                 }
                this.currentState.sectionIndex = index;
                this.showSection(this.currentState.sections[index]);
                console.log(`Admin jumped to section: ${this.currentState.sections[index]}`);
            } else { console.warn("Invalid section index:", index); }
        },
        nextScenario() { /* Keep from v4 */
             try {
                 this.saveCurrentSectionResponses();
                 this.currentState.scenarioIndex++;
                 if (this.currentState.scenarioIndex < NUM_SCENARIOS_TO_SELECT) {
                     this.loadScenario(this.currentState.scenarioIndex);
                 } else {
                      this.goToSection(this.currentState.sections.indexOf('post-task'));
                 }
              } catch (error) { console.error("Error during nextScenario transition:", error); }
        },
        populateDebriefing() { /* Keep from v4 */
             const list = document.getElementById('debrief-clarifications');
             if (!list) return;
             list.innerHTML = '';
             if (!this.currentState.selectedItems || this.currentState.selectedItems.length === 0) {
                 list.innerHTML = '<li>No scenario items were selected/completed.</li>';
                 return;
             }
             this.currentState.selectedItems.forEach((selectedInfo, index) => {
                 const itemData = this.getItemDataByName(selectedInfo.item_name);
                 if (!itemData) return;

                 const li = document.createElement('li');
                 const llmConfText = itemData.llm_confidence_level ? `(LLM Conf: ${itemData.llm_confidence_level})` : '';
                 li.innerHTML = `<strong>Trial ${index + 1}: ${itemData.item_label || itemData.item_name} ${llmConfText}:</strong> Actual value: ${itemData.actual_value}. LLM estimated: ${itemData.llm_estimate}.`;
                 list.appendChild(li);
             });
        },
        displayResults() { /* Keep from v4 */
             const resultsArea = document.getElementById('final-results');
            if (!resultsArea) return;
            try {
                resultsArea.value = JSON.stringify(this.currentState.participantResponses, null, 2);
                console.log("--- FINAL RESPONSES DUMP ---"); console.log(JSON.stringify(this.currentState.participantResponses, null, 2)); console.log("--- END DUMP ---");
            } catch (error) { console.error("Error stringifying results:", error); resultsArea.value = "Error stringifying results."; }
        },
        updateAdminBar() { /* Keep from v4 */
             const adminSectionSpan = document.getElementById('admin-current-section');
             if (adminSectionSpan) {
                 const sectionName = this.currentState.sections[this.currentState.sectionIndex].replace(/-/g, ' ').replace(/\b\w/g, l => l.toUpperCase());
                 adminSectionSpan.textContent = sectionName;
             }
        },
        updateProgressBar() { /* Keep from v4 */
             const progressBar = document.getElementById('progress-bar');
             const progressText = document.getElementById('progress-text');
             if (progressBar && progressText) {
                 const currentStep = this.currentState.sectionIndex + 1;
                 const totalSteps = this.currentState.totalSections;
                 const percentage = Math.max(0, Math.min(100, ((currentStep -1) / (totalSteps -1 )) * 100));
                 const displayPercentage = this.currentState.sectionIndex > 0 ? percentage : 0;

                 progressBar.style.width = `${displayPercentage}%`;
                 progressText.textContent = `Section ${currentStep} of ${totalSteps}`;

                 if (this.currentState.sectionIndex === this.currentState.sections.indexOf('debriefing')) {
                      progressBar.style.width = '100%';
                      progressText.textContent = `Complete`;
                 }
             }
        }

    }; // End of experiment object

    // --- Initialization ---
    // Use DOMContentLoaded to ensure HTML is parsed before trying to attach listeners
    document.addEventListener('DOMContentLoaded', () => {
        // Assign experiment to the window object explicitly to make it globally accessible
        // for potential debugging from console, though addEventListener avoids the need for global access for clicks.
        window.experiment = experiment;
        experiment.init(); // Start the experiment initialization
    });

    </script>

</body>
</html>