
You are a meticulous Critic Agent whose primary function is to evaluate the thoroughness, accuracy, and relevance of a Research proposal. You must point out ALL deficiencies, inaccuracies, or missed opportunities. Carefully evaluate the Current of "Gorman - AI Energy Study Proposal",  in terms of how well it is constructed to answer each of the research questions. Also, evaluate for its novelty, logical structure, and justification of the research questions and hypotheses against the literature.


Generate improvement ideas, or alternate approvals. Your research proposals should involve combining the past methods and results from the work of research like Attari, Kantenbacher, Marghetis and Landy - into novel survey ideas where subjects both provide their own energy estimates (similar to the Attari studies) AND provide ratings about the accuracy of llm judgements - or something like this, brainstorm several ideas in this general area. Should also incoporate ideas from Steyvers et al. 2025 study on uncertainty perception and calibration


Steyvers et al. (2025). What large language models know and what people think they know
Attari, S. Z., DeKay, M. L., Davidson, C. I., & Bruine De Bruin, W. (2010). Public perceptions of energy consumption and savings
Marghetis, T., Attari, S. Z., & Landy, D. (2019). Simple interventions can correct misperceptions of home energy use
Schille-Hudson, E. B., Margehtis, T., Miniard, D., Landy, D., & Attari, S. Z. (2019). Big, hot, or bright? Integrating cues to perceive home energy
Kantenbacher, J., & Attari, S. Z. (2021). Better rules for judging joules: Exploring how experts make decisions about household energy use
Bucinca et al. (2021.  Trust or to Think: Cognitive Forcing Functions Can Reduce Overreliance on AI in AI-assisted Decision-making


Draft  ascii diagrams to showcase the design of the current  Gorman - AI Energy Study Proposal, a long side potential designs of the Brainstorming Improvement Ideas / Alternate Approaches



------



# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1


```ascii
Evaluation Path:
1.  Establish Critic Agent Persona & Goal
2.  Summarize Gorman Proposal: RQs & General Design
3.  Detailed Evaluation of Gorman Proposal:
    ├── Assessment per Research Question (RQ)
    │   ├── RQ1 (Reliance)
    │   ├── RQ2 (Trust & Confidence)
    │   ├── RQ3 (Calibration)
    │   └── RQ4 (Individual Differences & Knowledge)
    ├── Assessment of Novelty
    ├── Assessment of Logical Structure
    ├── Assessment of Justification against Literature
    └── Identification of Deficiencies & Missed Opportunities
        ├── Related to RQs & Design
        ├── Related to Measurement
        └── Related to Broader Context
4.  Brainstorming Improvement Ideas / Alternate Approaches:
    ├── Core Strategy: Integrating Energy Estimation & AI Judgment Evaluation
    ├── Idea 1: Direct Comparison - Human vs. AI Estimates
    ├── Idea 2: Heuristic Validation & Transfer
    ├── Idea 3: Forcing Functions & Metacognition
    ├── Idea 4: Enhanced Transparency & Explanation Design
    └── Connection to Trust Calibration & Uncertainty
5.  Concluding Remarks
```

***

**Evaluation of "Gorman - AI Energy Study Proposal"**

The "Gorman - AI Energy Study Proposal" outlines an investigation into how users calibrate trust and reliance on a Large Language Model (LLM) energy advisor, particularly focusing on the impact of linguistic uncertainty and individual differences like energy knowledge and AI literacy. The study proposes a multi-phase online experiment involving baseline assessments of energy knowledge, numeracy, and AI trust propensity, followed by an interactive task where participants evaluate LLM responses to energy questions that vary in actual accuracy and expressed confidence/uncertainty. The core RQs examine the effect of linguistic uncertainty on reliance (RQ1), subjective trust and confidence (RQ2), trust calibration (RQ3), and the moderating role of individual differences, including energy knowledge (RQ4).

Let us evaluate the proposal's construction and justification against the backdrop of existing cognitive science and human-AI interaction literature.

**Assessment per Research Question (RQ)**

*   **RQ1 (Reliance): How does the linguistic expression of uncertainty... affect users’ reliance on its advice?**
    *   **Design Components:** The proposal measures reliance behaviourally by observing whether participants change their initial decision after seeing the AI's advice and by asking about their likely action (accept, verify, reject). Trial-specific trust ratings are also collected.
    *   **Evaluation:** The proposed method of capturing changes in decision and explicit reliance intentions provides a direct behavioural measure of how much users are swayed by the AI's advice under different uncertainty conditions. This aligns with methodologies for assessing reliance in human-AI decision-making (Schemmer et al., 2022). The inclusion of both correct and incorrect AI advice is crucial for distinguishing between appropriate reliance (following correct advice) and over-reliance (following incorrect advice) or under-reliance (not following correct advice). The design systematically varies actual accuracy and expressed confidence/uncertainty, which is appropriate for testing the hypothesized effects.
    *   **Deficiency/Missed Opportunity:** While decision change and stated intention are good indicators, the *degree* of decision change (if continuous) or the *reasoning* behind the change could offer richer data. Open-ended prompts after each trial asking *why* the participant chose to accept/reject/verify could provide insight into the cognitive processes driving reliance, especially how uncertainty cues were interpreted. This could augment the qualitative data from the post-task mental model probes.

*   **RQ2 (Trust & Confidence): How does the linguistic expression of uncertainty... influence users’ subjective trust... and confidence...?**
    *   **Design Components:** Subjective trust is measured using trial-specific Likert scales and post-task overall trust scales. Confidence is measured via slider ratings for the participant's initial decision, confidence in the AI's estimate (per scenario), and final confidence in their decision.
    *   **Evaluation:** Measuring subjective trust at both the trial level and overall level provides a nuanced view. Capturing confidence ratings at different stages (initial, AI estimate, final decision) is excellent for tracking metacognitive shifts influenced by the AI's input. This addresses RQ2 well, providing both immediate and aggregate measures of subjective states. The proposed use of scales for baseline trust propensity and post-task trust aligns with standard approaches (Jian et al. scale adapted).
    *   **Deficiency/Missed Opportunity:** The proposal mentions Likert scales. Exploring different trust scale formats, such as semantic differential scales which may offer advantages in reliability and validity over Likert scales by reducing acquiescence bias (Shang et al., 2025), could be a refinement. Distinguishing between cognitive trust (based on perceived competence, reliability, correctness) and affective trust (based on perceived goodwill, intentions) (Johnson & Grayson, 2005; Shang et al., 2025) could provide deeper insight into how linguistic uncertainty affects different facets of trust. The current scales appear to lean more towards cognitive trust aspects like reliability and accuracy.

*   **RQ3 (Calibration): Does the linguistic expression of uncertainty... improve users’ calibration...?**
    *   **Design Components:** The design intends to measure calibration by comparing participant confidence ratings in their final decisions against the objective accuracy of those decisions. The systematic variation of AI accuracy and confidence allows for this comparison across conditions. The notes also mention objective calibration scores like Brier score and over/underconfidence indices (mean confidence - mean accuracy) as rigorous approaches.
    *   **Evaluation:** This approach directly tackles the core concept of trust calibration, which is the alignment between trust/confidence and actual performance or accuracy (Steyvers et al., 2025, as cited in notes; Schemmer et al., 2022). By having users rate confidence in their *own* final decision after seeing the AI's advice, the study can assess whether the AI's uncertainty expression helps users appropriately adjust their confidence levels, especially when the AI is incorrect. This is a strength of the design.
    *   **Deficiency/Missed Opportunity:** While comparing final confidence to final decision accuracy is valuable, also comparing *initial* confidence (before seeing AI) to *initial* decision accuracy, and comparing confidence in the *AI's estimate* (per scenario) to the *AI's actual accuracy* would provide a more complete picture of calibration dynamics. This allows analysis of whether uncertainty specifically improves calibration regarding the AI itself, which then impacts calibration in the final human decision. The proposal *does* include confidence in the AI's estimate per scenario, which is good. Explicitly focusing analysis on this aspect of calibration alongside final decision calibration would strengthen RQ3.

*   **RQ4 (Individual Differences & Knowledge): How do individual differences... moderate the effects... Additionally, to what extent do users’ baseline energy knowledge or estimation accuracy predict their trust calibration...?**
    *   **Design Components:** The study includes baseline assessments for AI literacy (using MAILS-S), baseline trust propensity (adapted Jian et al. scale), numeracy, objective energy knowledge, subjective energy knowledge/efficacy, and energy estimation accuracy. These are planned as moderators and predictors.
    *   **Evaluation:** This is a significant strength of the proposal. Including comprehensive measures of individual differences, particularly domain-specific knowledge (energy) and AI-specific knowledge (AI literacy), is essential for understanding *for whom* uncertainty communication or other AI characteristics are most effective. Prior research highlights the importance of individual differences in human-autonomy teaming (Human–Autonomy Teaming Review). Energy literacy, encompassing knowledge and understanding, is crucial for effective energy-related behaviour and decision-making (Cotton et al., 2021; Santillán & Cedano, 2023). Assessing both objective knowledge (via estimation task and factual questions) and subjective knowledge is valuable, as perceived knowledge can influence how individuals process information. The proposal's explicit focus on baseline energy knowledge as a predictor of trust calibration is well-justified by the literature showing widespread energy misperceptions (Attari et al., 2010; Marghetis et al., 2019).
    *   **Deficiency/Missed Opportunity:** While comprehensive, ensuring the *validity and reliability* of the custom-designed energy knowledge and estimation tasks is paramount. The proposal notes these are inspired by prior work (Attari et al., 2010; Marghetis et al., 2019), which is good, but pilot testing would be necessary to confirm their psychometric properties in the context of this specific study.

**Assessment of Novelty**

The study exhibits a notable degree of novelty by integrating established lines of research from energy cognition and human-AI interaction. While studies have examined energy misperceptions (Attari et al., 2010; Marghetis et al., 2019) and human-AI trust/calibration (Schemmer et al., 2022), the explicit investigation of how an AI's communication style (linguistic uncertainty) impacts trust calibration *specifically* in the context of energy decision-making, while accounting for domain-specific knowledge and biases, represents a novel contribution. Leveraging the well-documented cognitive biases in energy perception provides a strong, ecologically relevant testbed for studying AI trust dynamics.

**Assessment of Logical Structure**

The proposed experimental procedure has a logical structure. Baseline assessments of stable individual differences (AI literacy, trust propensity, numeracy, general energy knowledge) precede the experimental manipulation and task, minimizing potential contamination of these measures by the AI interaction experience. The core AI interaction task systematically varies the key independent variables (AI accuracy, AI uncertainty expression) within subjects, allowing for direct comparison of user responses across conditions. The sequence of initial decision -> AI advice -> final decision -> trial-specific evaluation per trial effectively captures the influence process. Post-task questionnaires follow to gather overall perceptions and delve into mental models after the interaction experience. The structure appears sound for testing the stated hypotheses.

**Assessment of Justification against Literature**

The proposal's justification is well-supported by the cited literature. It accurately identifies the prevalence of energy misperceptions and biases (Attari et al., 2010; Marghetis et al., 2019) and the potential role of AI in providing decision support. It correctly frames the challenge as requiring users to overcome their own biases and form accurate mental models of the AI's capabilities to achieve appropriate trust calibration. The literature review effectively highlights the gap between perceived and actual energy use and links it to suboptimal conservation efforts. The focus on uncertainty communication is justified by literature suggesting its importance in influencing trust and reliance (Steyvers et al., 2025, cited). The inclusion of energy literacy and AI literacy as moderators is strongly aligned with research on individual differences in human-AI interaction.

**Identification of Deficiencies & Missed Opportunities**

Beyond the minor points raised under each RQ, several broader aspects warrant consideration:

*   **Complexity of "Incorrect" Advice:** The proposal states incorrect answers will contain "some incorrect or misleading information" that is "not obviously absurd" but difficult for a layperson to catch. The *nature* and *salience* of these errors are critical. Are they factual errors (e.g., stating incorrect energy use values), flawed reasoning (e.g., applying a heuristic incorrectly), or misleading recommendations? The consistency and ecological validity of these engineered errors should be carefully validated. Relying on known novice misperceptions (Attari et al., 2010; Kantenbacher & Attari, 2021) to craft these errors is a good starting point.
*   **AI Mental Model Measurement:** The post-task probes about perceived AI reasoning and rating the AI's use of cues (inspired by Schille-Hudson et al., 2019) are excellent steps towards understanding user mental models of the AI. However, assessing mental models is challenging (Hoffman et al., 2019). While direct elicitation (open-ended) and cue-rating are included, triangulation with other methods, perhaps including a task where users predict how the AI would answer novel questions or explain *why* the AI might have been wrong on a specific trial, could strengthen the assessment of mental model *accuracy* or *coherence* beyond simple perception.
*   **Generalizability:** The study focuses on household energy decisions. While justified as a relevant domain with documented biases, findings might not fully generalize to other domains where AI advice is sought (e.g., medical, financial). The choice of scenarios (appliance purchase, reducing home use, renewables, bill understanding) covers a good range within the energy domain.
*   **Lack of Feedback During Task:** The decision not to provide immediate accuracy feedback during trials is justified to observe natural trust dynamics. However, exploring the *impact of feedback* (e.g., showing the correct answer after each trial or a subset) in a separate condition or future study would be a valuable extension. Feedback is known to be a powerful factor in learning and calibrating trust (Hoff et al., 2015; Sheridan, 2019).

***

**Brainstorming Improvement Ideas / Alternate Approaches**

Drawing upon the rich methodologies presented in the sources, particularly the work on energy perception (Attari, Kantenbacher, Marghetis, Schille-Hudson) and human-AI interaction/calibration (Gorman proposal, calibration notes, Bucinca), we can conceptualize alternative or augmented study designs. The core strategy will be to more directly integrate user's own energy judgments with their evaluation of AI judgments, fostering a comparison and potential metacognitive reflection process.

```ascii
Brainstorming Path:
1.  Core Strategy: Integrate Human Judgment & AI Judgment Evaluation
    ├── Purpose: Direct comparison, expose biases, facilitate calibration
2.  Idea 1: Sequential Estimation & Evaluation Task
    ├── Method:
    │   ├── Step A: User Estimates (à la Attari/Marghetis)
    │   └── Step B: User Evaluates AI Estimate
    ├── Manipulations: AI Accuracy, AI Uncertainty
    └── Measures: Estimation accuracy, Evaluation accuracy, Confidence alignment, Reliance
3.  Idea 2: Heuristic Comparison & Transfer
    ├── Method:
    │   ├── Step A: Elicit/Assess User Heuristics (à la Kantenbacher)
    │   ├── Step B: Present AI Advice (potentially using expert heuristics)
    │   └── Step C: User Evaluates AI Heuristic/Reasoning
    ├── Manipulations: AI uses novice vs. expert heuristics, AI explanation style
    └── Measures: Heuristic accuracy (expert assessment), Heuristic adoption/preference, Estimation/Choice accuracy after AI
4.  Idea 3: Integrating Cognitive Forcing Functions (Inspired by Bucinca)
    ├── Method:
    │   ├── Step A: Present Problem & AI Advice
    │   └── Step B: Impose Forcing Function (e.g., "Explain why the AI might be wrong")
    ├── Manipulations: Presence/Type of Forcing Function, AI Uncertainty
    └── Measures: Reliance, Calibration, Time taken, Explanation quality (proxy for critical thinking)
5.  Idea 4: Transparency Manipulation Beyond Uncertainty
    ├── Method:
    │   ├── Step A: Present Problem & AI Advice
    │   └── Step B: Vary AI Explanation Type (e.g., rule-based vs. data-driven, mentioning sources)
    ├── Manipulations: Explanation content/format, AI Uncertainty
    └── Measures: Trust (cognitive/affective), Reliance, Perceived Transparency, Mental Model detail
```

**Core Strategy: Integrating Energy Estimation & AI Judgment Evaluation**

The fundamental idea here is to create tasks where participants are actively engaged in the cognitive process of making energy judgments themselves, mirroring the tasks used to document human biases and heuristics. Immediately after, or interleaved with, this personal judgment process, they would evaluate an AI's judgment on the same or similar item. This direct juxtaposition could highlight discrepancies, expose user biases, and provide a richer context for trust calibration.

**Idea 1: Sequential Estimation & Evaluation Task**

*   **Method:** Participants are presented with a list of household appliances or energy-saving actions.
    *   **Step A: User Estimates:** For each item, participants first estimate the energy use (e.g., in Wh/hour relative to a 100W bulb as in Attari et al., 2010, and Marghetis et al., 2019) or the potential energy savings (e.g., percentage reduction for an action as in Attari et al., 2010). They provide a confidence rating for their own estimate.
    *   **Step B: User Evaluates AI Estimate:** Immediately after providing their own estimate, the participant is shown an estimate or piece of advice purportedly from an AI advisor for the *same* item. This AI response is pre-generated to vary in actual accuracy (correct vs. incorrect) and expressed uncertainty (confident vs. uncertain), similar to the Gorman proposal. The participant is then asked to rate the AI's estimate/advice (e.g., "How accurate do you think the AI's answer is?"), provide a confidence rating in the AI's answer, and indicate their likelihood to rely on it (e.g., accept, verify, reject).
*   **Manipulations:** 2x2 design per trial (AI Accuracy x AI Uncertainty). Could also include 'Human Estimate Provided First' vs. 'AI Estimate Provided First' as a between-subjects factor to see if anchoring effects occur (Anchoring-and-adjustment heuristic, Tversky & Kahneman, 1974, cited in Attari et al., 2010).
*   **Measures:** User estimation accuracy (compared to ground truth), User confidence in own estimate, User evaluation of AI accuracy, User confidence in AI estimate, User reliance intention, Calibration metrics (e.g., Brier score comparing confidence in AI/own estimate to actual accuracy), Time taken per item.
*   **Rationale:** This design directly measures the impact of seeing an AI's judgment *after* committing to one's own. It allows analysis of how discrepancies between human and AI judgments (and the AI's presentation style) affect perceived AI accuracy, confidence in the AI, and reliance. It provides a clear behavioural measure of how users update their beliefs/intentions based on AI input following their own cognitive effort. This builds directly on the energy estimation tasks from prior work and the calibration measures from the Gorman proposal/notes.

**Idea 2: Heuristic Comparison & Transfer**

*   **Method:** This approach leverages the concept of heuristics in energy judgment, building on Kantenbacher & Attari (2021).
    *   **Step A: Elicit/Assess User Heuristics:** Before or during the task, participants could be asked open-ended questions about how they estimate energy use, or rate the perceived accuracy of a list of heuristics (including known novice and expert heuristics). This provides a measure of their reliance on specific mental shortcuts.
    *   **Step B: Present AI Advice with/without Explained Heuristic:** The AI advice presented to participants includes an estimate/recommendation. Critically, the AI's *explanation* for its judgment could explicitly state the heuristic it purportedly used (e.g., "I estimated this uses a lot of energy because it has a heating element"). This heuristic could be varied to align with common novice heuristics (e.g., "It's a large device") or expert heuristics (e.g., "Heating water requires significant energy").
    *   **Step C: User Evaluates AI Heuristic/Reasoning:** Participants evaluate not just the AI's final judgment but also the *reasoning process* or heuristic provided (e.g., "How sound do you think the AI's reasoning was?").
*   **Manipulations:** AI Accuracy, AI Uncertainty, and AI Explanation Type (e.g., Explicit Novice Heuristic, Explicit Expert Heuristic, No Explicit Heuristic).
*   **Measures:** Baseline heuristic preference/endorsement, Perceived accuracy/soundness of AI's heuristic, Changes in user reliance on certain heuristics after exposure to AI explanations, Estimation/Choice accuracy in subsequent tasks where AI explanations are not provided (transfer of learning/heuristics).
*   **Rationale:** This explores whether explaining AI judgments using specific heuristics, particularly accurate expert heuristics, can improve user understanding, perceived AI competence, and potentially transfer better decision-making strategies to the user (Kantenbacher & Attari, 2021). It goes beyond simply evaluating the AI's output to evaluating its *stated reasoning*, which is key for explainable AI (XAI) (Hoffman et al., 2019).

**Idea 3: Integrating Cognitive Forcing Functions**

*   **Method:** Inspired by work on reducing overreliance (Bucinca et al., 2021, referenced in Gorman), this approach would introduce prompts designed to encourage deeper processing of the AI's advice.
    *   **Step A: Present Problem & AI Advice:** As in the Gorman design, participants receive an energy problem and AI advice varying in accuracy and uncertainty.
    *   **Step B: Impose Forcing Function:** For a subset of trials (especially those where the AI is incorrect or highly confident), participants are *required* to perform an additional task before making their final decision or rating reliance. Examples: "List two reasons why the AI's advice might be incorrect," "Explain how you would verify this information," or "Compare the AI's reasoning to your own initial thought process." These tasks are designed to disrupt automatic acceptance and promote critical thinking (Zhai et al., 2024).
*   **Manipulations:** AI Accuracy, AI Uncertainty, Presence/Type of Forcing Function.
*   **Measures:** Reliance intention/behaviour, Trust ratings, Calibration scores, Time taken to complete the trial, Quality/content of the forced explanation (coded for depth, critical analysis, comparison to known facts or heuristics).
*   **Rationale:** This directly tests interventions aimed at mitigating over-reliance, a significant concern with potentially flawed AI advisors. By forcing users to pause and reflect critically, it encourages them to engage their own knowledge and reasoning, rather than passively accepting the AI's output. This could be particularly effective when the AI is confidently wrong, a scenario ripe for over-reliance.

**Idea 4: Transparency Manipulation Beyond Uncertainty**

*   **Method:** While the Gorman proposal focuses on linguistic uncertainty as a form of transparency, transparency can encompass more, such as explaining the AI's data sources, model design, or confidence levels differently (Baines et al., 2024; Hoffman et al., 2019).
    *   **Step A: Present Problem & AI Advice:** Standard trial setup.
    *   **Step B: Vary AI Explanation/Transparency Details:** The AI's response includes information about *how* it arrived at its conclusion. This could range from a simple statement ("Based on typical appliance data") to more detailed explanations (e.g., mentioning average wattages from a database, citing a relevant principle like "heating requires significant energy"). Transparency could also involve showing a confidence score alongside the advice or explaining the limits of the AI's knowledge (e.g., "My training data is based on averages, so your specific appliance might differ").
*   **Manipulations:** AI Accuracy, AI Uncertainty (as a baseline), and Type/Depth of Transparency/Explanation provided.
*   **Measures:** Reliance, Trust (especially cognitive trust components like perceived reliability and correctness), Perceived Transparency, Mental Model detail/accuracy, User satisfaction (Baines et al., 2024).
*   **Rationale:** Different levels and types of transparency may influence trust and reliance differently, and the optimal level might depend on the complexity of the domain or the user's expertise (Baines et al., 2024). In the energy domain, explaining *why* certain actions save more energy (e.g., detailing the energy conversion process) could be more persuasive and informative than simply stating a fact. This approach explores how making the "black box" of the AI slightly more transparent influences user interaction and calibration.

**Connection to Trust Calibration and Uncertainty**

Across these ideas, the core goal remains improving trust calibration – ensuring users rely on the AI when it is accurate and are appropriately skeptical when it is not. Manipulating AI uncertainty expression, as in the Gorman proposal, is a key factor to explore. However, incorporating objective measures of calibration (confidence vs. accuracy) is essential. The brainstormed ideas provide additional avenues to study calibration by:
*   Idea 1: Directly comparing calibration relative to one's own judgment vs. the AI's judgment.
*   Idea 2: Testing if exposure to accurate heuristics provided by the AI improves calibration in subsequent tasks.
*   Idea 3: Examining if forcing functions improve calibration, particularly by reducing over-reliance on incorrect AI advice.
*   Idea 4: Investigating if different transparency mechanisms influence the calibration of trust and reliance.

These approaches allow for a deeper understanding of the psychological mechanisms underlying trust calibration in the context of complex, bias-prone domains like energy use, leveraging and extending the valuable foundational work provided in the source materials.

***



----------

# o3
- https://chatgpt.com/c/681ae976-d710-8006-b500-cab1b2b1a63d




## Comprehensive Critique of “Gorman – AI Energy Study Proposal”&#x20;

### 1  Alignment of Methods to Research Questions

| Research Question                                 | Proposed Measures/Manipulations                                                          | Gaps & Limitations                                                                                                                                                                                                                                    |
| ------------------------------------------------- | ---------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **RQ1 (Reliance)**: Effect of hedging on reliance | 4-condition within‐subjects trials (tone × accuracy); reliance captured by action choice | Reliance is binary (accept/verify/reject). It does **not** distinguish *partial* adoption or *weighted* integration of advice (cf. advice-weighting literature). No time-pressure or cost manipulations that make over-/under-reliance consequential. |
| **RQ2 (Trust & Confidence)**                      | Post-trial Likert trust plus global TPA scale                                            | Lacks **process** measures (e.g., response latency, mouse-tracking) that reveal *dynamic* trust formation.                                                                                                                                            |
| **RQ3 (Calibration)**                             | Pre- & post-confidence sliders; objective correctness coded                              | The planned metric is unspecified: will you compute Brier score, calibration curves, or discrimination indices? Averaging calibration over *heterogeneous items* may mask condition effects.                                                          |
| **RQ4 (Individual differences)**                  | Energy literacy (objective + subjective), AI literacy, Numeracy, Propensity to trust     | Energy-literacy battery is rich, but AI-literacy section omits *overclaiming* checks and validated **AI‐Literacy Scale** items (Long & Magerko, 2020). No measure of **Cognitive Reflection Test** despite being invoked in hypotheses.               |

### 2  Novelty & Contribution

* **Integration strength**: Merges energy-misperception work (Attari et al., 2010; Marghetis et al., 2019) with uncertainty-cue studies in AI (Bucinca et al., 2021) and Steyvers et al.’s (2025) log-prob–based confidence. This cross-domain bridge is original and theoretically useful.
* **Missed opportunities**

  * No comparison to **non-LLM baselines** (e.g., static fact sheet, numeric ranges). Without a control, effects may reflect *any* advice source.
  * Does not probe *bidirectional* calibration (users’ self-estimates vs. AI estimates) that Steyvers et al. highlighted.
  * Fails to exploit **temporal learning**—giving feedback across trials to model how trust updates (Lee & See, 2004).

### 3  Logical Structure & Literature Use

The proposal’s introduction correctly diagnoses compression bias and trust-calibration issues, but citations are occasionally asserted without synthesis (e.g., hedging always reduces over-reliance—counter-examples exist in medical-risk communication). Discussion of *mental models* is name-checked yet never operationalised; specify whether you adopt a *structural knowledge* or *functional* definition.

### 4  Task Code Review

| Aspect                              | Strengths                                               | Weaknesses / Improvements                                                                                                                                                                                                                                                                                                                                                |
| ----------------------------------- | ------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Front-end architecture**          | Modular sections; admin jump bar facilitates debugging. | (1) **Data loss risk**: responses are cached only in memory; use `beforeunload` safeguard & server-side writes.<br> (2) **Validation**: `validateCurrentSection()` is a stub—participants can progress with empty answers.<br>(3) **Mobile UX**: slider thumb size scales, but estimation table is fixed-width; add responsive CSS or vertical layout for small screens. |
| **Scenario selection logic**        | Allows manual selection or default.                     | No randomised **Latin-square** counter-balancing → order confounds; tone/accuracy mapping is deterministic (`determineTone`), thus tone = f(confidence) conflates experimental factors.                                                                                                                                                                                  |
| **Confidence computation pipeline** | Implements log-prob extraction and qualitative binning. | (a) **Theoretical issue**: averaging per-token probabilities assumes independence and ignores alternatives; tokenisation boundary strongly affects score. (b) Scores *inflate* for short numbers (e.g., “2”) vs. longer (“1250”). (c) Thresholds are arbitrary; no distributional calibration.                                                                           |
| **Security/Privacy**                | No personally identifying data collected.               | Fetching JSON from public path leaks ground-truth values to participants via network inspector; serve from backend after phase 1.                                                                                                                                                                                                                                        |

### 5  Confidence-Score Method – Technical Critique & Alternatives

1. **Entropy-based measure**
   *Compute negative entropy* of the full top-k distribution for the numeric token span (Steyvers et al., 2025 show entropy tracks answer quality better than mean probability).
2. **Bayesian model averaging**
   *Sample* with temperature > 0 (n = 20) and treat variance of numeric outputs as epistemic uncertainty.
3. **Monte-Carlo dropout / logit perturbation** for models that expose hidden states (cf. Xiong et al., 2024).
4. **Post-hoc calibration**
   Fit isotonic regression on held-out items where ground truth is known to map raw scores to well-calibrated probabilities (Guo et al., 2017).

### 6  Specific, Actionable Fixes

1. **Dependence Measure**: Replace accept/verify/reject with *continuous advice weight* (participant combines own estimate and AI’s). Compute **β-weight** to quantify influence.
2. **Feedback Manipulation**: Add between-subjects *feedback* factor (correct answer shown after each trial) to test learning curves.
3. **CRT & Overclaiming**: Insert 6-item CRT and AI-knowledge overclaim items to test miscalibrated self-beliefs.
4. **Item Sampling**: Use *blocked randomisation* so each appliance appears equally often across tone × accuracy cells.
5. **Power Analysis**: Specify expected effect (η²≈.04) and derive N≈200 for 0.80 power in mixed ANOVA.

### 7  Alternate / Supplementary Study Concepts

| Idea                                             | Design Sketch                                                                                                                                                       | Key DV/IV                                                      | Theoretical Leverage                                                                  |
| ------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| **A. Paired-Estimate Calibration Task**          | For 30 appliances, participant provides numeric estimate & 0–100 confidence *before* seeing LLM estimate & LLM confidence; afterwards rates whose answer is closer. | LLM-vs-Human error gap; post-choice probability of correctness | Directly tests *social comparison* & metacognitive alignment (Steyvers et al., 2025). |
| **B. Expert-Rule Transfer**                      | Present Kantenbacher’s expert heuristics (“heat & cool dominate”). Ask users to predict LLM accuracy on items *consistent* vs. *inconsistent* with rule.            | Prediction error; trust update                                 | Examines whether **rule abstraction** mediates trust (Landy & Marghetis framework).   |
| **C. Confidence-Weighted Advice Game**           | Participants stake points proportional to confidence; AI offers advice with stated uncertainty. Payoff tied to absolute error.                                      | Monetary loss/ gain; strategic reliance                        | Links bounded-rationality (Gigerenzer) to calibration economics.                      |
| **D. Longitudinal Home-Energy Diary + AI Coach** | Week-long Ecological Momentary Assessment: daily energy decisions with optional AI consult; forecasts and outcomes logged.                                          | Diary trust trajectory; usage frequency                        | Tests *ecological validity* of calibration principles.                                |

### 8  Conclusion

The proposal is a strong step toward unifying energy-literacy and AI-trust literatures, yet several methodological blind spots (calibration metrics, advice-weighting, control conditions) threaten its explanatory power. Refining the confidence computation, enriching behavioural measures, and incorporating comparative and longitudinal elements will markedly increase both internal validity and theoretical contribution.

---

### References

Attari, S. Z., DeKay, M. L., Davidson, C. I., & Bruine de Bruin, W. (2010). *Public perceptions of energy consumption and savings*. **PNAS, 107**, 16054–16059.
Bucinca, Z., Malaya, M. B., & Gajos, K. Z. (2021). *To trust or to think: Cognitive forcing functions can reduce overreliance on AI*. **CHI ‘21 Proceedings**.
Guo, C., Pleiss, G., Sun, Y., & Weinberger, K. Q. (2017). *On calibration of modern neural networks*. **ICML**.
Kantenbacher, J., & Attari, S. Z. (2021). *Better rules for judging joules*. **Energy Research & Social Science, 74**, 101973.
Lee, J. D., & See, K. A. (2004). *Trust in automation: Designing for appropriate reliance*. **Human Factors, 46**, 50–80.
Marghetis, T., Attari, S. Z., & Landy, D. (2019). *Simple interventions can correct misperceptions of home energy use*. **Nature Energy, 4**, 874–881.
Steyvers, M., Collins, J., & Hemmer, P. (2025). *What large language models know and what people think they know*. **Cognitive Science, 49**, e13012.








-------------

# https://gemini.google.com/gem/0784d6af1d0f/c73f07e882487a14

The research proposal, "Calibrating Trust in an LLM Energy Advisor: The Impact of Linguistic Uncertainty," addresses a timely and critical intersection of human-AI interaction, energy consumption behavior, and cognitive psychology. The focus on how linguistic expressions of uncertainty by Large Language Models (LLMs) influence user reliance, trust, confidence, and calibration in the domain of energy advising is a valuable contribution. However, a meticulous evaluation reveals several areas where the proposal could be strengthened in terms of its construction, novelty, logical structure, and the justification of its research questions (RQs) and hypotheses against the pertinent literature. This critique will also offer suggestions for improvement and alternative research designs, integrating insights from the work of Attari et al. (2010), Kantenbacher and Attari (2021), Marghetis and Landy (2019), Steyvers et al. (2025), and Bucinca et al. (2021).

**Evaluation of Research Questions and Hypotheses**

The proposed research questions (RQs 1-4) provide a solid foundation for the study. However, certain aspects require further clarification and operational rigor.

* **RQ1 (Reliance):** "How does the linguistic expression of uncertainty (hedging vs. confident language) in an LLM energy advisor’s output affect users’ reliance on its advice (e.g., agreement rate, appropriate reliance)?"
    * **Critique:** While "agreement rate" is a straightforward measure of reliance, the concept of "appropriate reliance" is more complex and critical (Parasuraman & Riley, 1997; Lee & See, 2004). The proposal does not sufficiently detail how "appropriate reliance" will be operationalized. Appropriate reliance depends on the objective accuracy of the LLM's advice. If the LLM's advice is always accurate in the experimental setting, then any level of reliance might be deemed "appropriate," which would not be a revelatory finding. Conversely, if the LLM's advice varies in accuracy, the study must clearly articulate how this accuracy is determined (ground truth) and manipulated. Without this, assessing whether reliance is "appropriate" (i.e., relying on correct advice and distrusting incorrect advice) is not possible.
    * **Assumption:** The proposal assumes that linguistic cues of uncertainty will be a primary driver of reliance. However, the *content* of the advice and its perceived plausibility, irrespective of linguistic style, might exert a stronger influence (Mercier, 2020). The interplay between linguistic style and advice content (and its actual accuracy) needs to be considered.

* **RQ2 (Trust & Confidence):** "How does the linguistic expression of uncertainty in the LLM’s output influence users’ subjective trust in the advisor and confidence in its recommendations?"
    * **Critique:** This RQ is well-grounded. However, the proposal should elaborate on the specific facets of trust being investigated (e.g., cognitive trust, affective trust, trust in competence, trust in integrity) as these can be differentially affected (McKnight et al., 2002). The distinction between confidence *in a specific recommendation* versus overall trust *in the advisor* is important and should be maintained in measurement.

* **RQ3 (Calibration):** "Does the linguistic expression of uncertainty in the LLM’s output improve users’ calibration, i.e. the alignment between their confidence in the advice (or their own final decisions) and the objective accuracy of those decisions?"
    * **Critique:** This is a strong RQ, aligning well with calls for improving human-AI decision-making (Steyvers et al., 2025). The key challenge, similar to RQ1, lies in defining and manipulating the "objective accuracy of those decisions" or the LLM's advice. Calibration of confidence in the LLM's advice can only be assessed if the advice's accuracy is known to the researchers for each instance. Furthermore, the proposal should consider whether it is measuring calibration of confidence in the *LLM's judgment* or calibration of confidence in the *user's own judgment after exposure to the LLM*.
    * **Missed Opportunity:** The cognitive mechanisms through which linguistic uncertainty might improve calibration could be more explicitly hypothesized. For instance, hedged language might promote more systematic (System 2) processing of the advice, leading to a more considered judgment of its accuracy and thus better calibration (Alter et al., 2007; Evans & Stanovich, 2013).

* **RQ4 (Individual Differences & Knowledge):** "How do individual differences – such as propensity to trust technology, AI literacy, energy knowledge/literacy (both factual and perceived), and numeracy – moderate the effects of linguistic uncertainty on reliance, trust, and calibration? Additionally, to what extent do users’ baseline energy knowledge or estimation accuracy predict their trust calibration and reliance patterns?"
    * **Critique:** The inclusion of individual differences is crucial. The distinction between factual and perceived knowledge is a strength. However, the proposal should specify *a priori* hypotheses about the direction of these moderating effects. For instance, will higher AI literacy make individuals more sensitive to hedging as an indicator of LLM fallibility, leading to better calibration? Or could it lead to more critical scrutiny regardless of linguistic cues? The proposal also assumes that baseline energy knowledge directly predicts trust calibration. The mechanism needs to be articulated: individuals with higher energy knowledge may be better at detecting inaccuracies in LLM advice, thereby allowing for more accurate calibration of their trust (Attari et al., 2010).
    * **Practical Consideration:** Investigating numerous moderators simultaneously can strain statistical power. The proposal might benefit from prioritizing a subset of these individual differences based on the strongest theoretical rationale or prior findings.

**Novelty, Logical Structure, and Justification**

* **Novelty:** The application of linguistic uncertainty cues from LLMs to the domain of household energy advice, specifically linking it to trust calibration and considering energy-specific individual differences, is novel. It builds upon existing HRI research by focusing on a specific, socially relevant application where human judgment is often flawed (Attari et al., 2010).
* **Logical Structure:** The RQs progress logically from direct effects (reliance, trust) to more nuanced cognitive outcomes (calibration) and moderating factors.
* **Justification:** The RQs are generally well-justified by the cited literature streams. However, the proposal could strengthen its theoretical grounding by more explicitly integrating cognitive theories. For example, the discussion of how users update their mental models of the LLM based on its linguistic style and perceived accuracy (related to Steyvers et al., 2025) could be deepened. Theories on source credibility (Pornpitakpan, 2004) could also be invoked to explain why hedged language might sometimes increase trust (if perceived as honest self-assessment) or decrease it (if perceived as incompetence).

**Deficiencies and Missed Opportunities**

1.  **Operationalization of LLM Advice Accuracy:** The most significant deficiency is the lack of detail on how the LLM's advice accuracy will be handled as an experimental variable. This is fundamental for assessing "appropriate reliance" (RQ1) and "calibration" (RQ3).
2.  **Cognitive Mechanisms:** The proposal identifies *what* it will study but could be more explicit about the *why* – the underlying cognitive processes. For example, how does processing hedged language differ from confident language, and how does this difference impact downstream reliance and trust judgments from a cognitive load or dual-process perspective?
3.  **Nature of Energy Advice:** The type of energy advice (e.g., estimating appliance usage, recommending behavioral changes, providing technical information) might interact with the effects of linguistic uncertainty. Users might have different expectations for certainty for different types of advice. This nuance is currently missing.
4.  **Behavioral Outcomes:** While reliance and agreement are measured, including a measure of behavioral intention or actual choice (even in a simulated task) based on the LLM's advice could provide stronger evidence of impact.

**Improvement Ideas and Alternative Approaches**

To address the identified deficiencies and enhance the proposal's contribution, the following experimental designs are proposed, integrating methodologies and insights from the requested literature:

**Experimental Design 1: Calibrated Reliance on LLM Energy Estimations**

* **Objective:** To assess how linguistic uncertainty and LLM advice accuracy affect users' energy estimations, reliance, and calibration, drawing on Attari et al. (2010) and Steyvers et al. (2025).
* **Phases:**
    1.  **Baseline Estimation (Attari-style):** Participants provide estimates for the annual energy consumption (kWh/year) of various household appliances and activities (Attari et al., 2010). This measures their baseline energy knowledge/misperceptions.
    2.  **LLM Interaction & Evaluation:** Participants are presented with a series of energy estimation questions. For each:
        * They first provide their own estimate and confidence in that estimate.
        * They are then shown an LLM's estimate for the same item. This LLM output is manipulated in a 2 (Linguistic Style: Confident vs. Hedged) x 2 (LLM Advice Accuracy: Correct vs. Incorrect – with predefined, verifiable ground truth) between-subjects or within-subjects design. The "incorrect" answers should be plausibly incorrect, reflecting common misestimations.
        * Participants rate their agreement with the LLM's estimate, their confidence in the LLM's specific estimate, and then provide a final estimate.
    3.  **Calibration and Trust Assessment:**
        * **Calibration:** Calculate calibration scores (e.g., Brier scores, reliability diagrams) by comparing participants' confidence ratings in the LLM's estimates (or their own final estimates) against the known accuracy of the LLM's (or their final) estimates (Steyvers et al., 2025).
        * **Appropriate Reliance:** Assess whether participants are more likely to revise their estimates towards correct LLM advice and away from incorrect LLM advice (signal detection analysis could be applied here – hits, misses, false alarms, correct rejections of LLM advice).
        * **Subjective Trust:** Measure overall trust in the LLM as an energy advisor using validated scales (e.g., Jian et al., 2000; Mayer et al., 1995).
* **Individual Differences (RQ4):** Measure energy literacy (e.g., DeWaters & Powers, 2011), AI literacy, numeracy, and propensity to trust technology.
* **Cognitive Psychology Link:** This design allows exploration of anchoring effects (initial estimate as anchor, LLM advice as potential shift) and how linguistic style influences susceptibility to the anchor or the magnitude of adjustment.

**Experimental Design 2: LLM Uncertainty and Intervention Efficacy for Energy Conservation Actions**

* **Objective:** To investigate whether an LLM energy advisor, expressing varied linguistic uncertainty, can effectively correct misperceptions about energy conservation actions (Marghetis & Landy, 2019) and how this compares to or interacts with simpler interventions. This design also incorporates elements of expert decision-making (Kantenbacher & Attari, 2021).
* **Phases:**
    1.  **Baseline Perception:** Participants rate the perceived energy savings and difficulty of various conservation actions (e.g., replacing lightbulbs, adjusting thermostat, unplugging devices).
    2.  **Intervention Conditions (Between-Subjects):**
        * **Condition A (Control):** No intervention.
        * **Condition B (Simple Intervention):** Participants receive concise, factual corrective information about common misperceptions for a subset of actions (inspired by Marghetis & Landy, 2019).
        * **Condition C (LLM Advisor - Confident):** Participants ask the LLM about specific conservation actions. The LLM provides advice using confident language. The advice could include some "expert rules of thumb" (Kantenbacher & Attari, 2021) for prioritizing actions but is not explicitly framed as an intervention.
        * **Condition D (LLM Advisor - Hedged):** Same as C, but the LLM uses hedged language.
        * **Condition E (LLM Advisor + Cognitive Forcing - Bucinca et al. inspired):** Before receiving LLM advice (which could be confident or hedged, or this could be a further factor), participants are prompted to list potential downsides or limitations of relying on AI for such advice (Bucinca et al., 2021).
    3.  **Post-Intervention Assessment:**
        * Participants re-rate the perceived energy savings and difficulty of the conservation actions (including those targeted by interventions).
        * Measure their willingness to adopt these actions.
        * Assess trust in the LLM (for Conditions C, D, E) and confidence in their post-intervention ratings.
* **Cognitive Psychology Link:** This design examines how different forms of information presentation (direct correction vs. LLM-mediated advice with varying uncertainty) impact belief updating and behavioral intentions. The cognitive forcing function aims to promote more critical engagement (System 2 thinking) with the LLM's advice.

**Experimental Design 3: Exploring User Mental Models of LLM Uncertainty in Energy Planning**

* **Objective:** To delve deeper into users' mental models of LLM capabilities and uncertainty when using an LLM for a more complex energy planning task.
* **Scenario:** Participants are tasked with creating a personalized plan to reduce their household energy consumption by a certain percentage.
* **Phases:**
    1.  **Initial Plan Draft:** Participants first outline their own initial ideas for the plan.
    2.  **LLM Co-Planning:** Participants interact with an LLM to refine or develop their plan. The LLM's responses regarding the feasibility, potential savings, and confidence in its suggestions are manipulated (Confident vs. Hedged language). The LLM might occasionally provide advice that is suboptimal or overlooks crucial contextual factors relevant to the user (if discoverable from minimal user input).
    3.  **Evaluation and Reflection:**
        * Participants rate the helpfulness, trustworthiness, and perceived intelligence of the LLM.
        * They indicate which LLM suggestions they would incorporate into their final plan and why.
        * **Mental Model Probes (Steyvers et al., 2025 inspired):** "How well do you think the LLM understood your specific situation?" "What aspects of energy planning do you think this LLM is good/bad at?" "When the LLM used [hedged/confident] language about a suggestion, what did that make you think about its reliability for *that specific suggestion*?"
        * Participants are asked to rate their confidence in the final plan's effectiveness.
* **Data Analysis:** Qualitative analysis of justifications and mental model probes, alongside quantitative measures of plan quality (if assessable against criteria), reliance on LLM suggestions, and trust.
* **Cognitive Psychology Link:** This design focuses on how users build and modify their mental models of the LLM's capabilities, limitations, and its expressions of uncertainty during a goal-directed interaction. It also touches upon how users integrate their own knowledge (Attari et al., 2010) with AI input.

**Strengthening Justification with Cognitive Psychology:**

Across all designs, it is essential to connect findings back to established cognitive principles. For instance:

* **Dual-Process Theories:** Does hedged language systematically encourage more deliberative (System 2) thinking, while confident language promotes more heuristic (System 1) processing? (Evans & Stanovich, 2013). Cognitive load associated with processing different linguistic styles could also be explored.
* **Trust as a Heuristic:** Users may employ trust in the LLM as a cognitive shortcut, particularly in complex domains like energy use where their own knowledge is limited (Gigerenzer & Gaissmaier, 2011). Linguistic uncertainty cues could modulate the perceived reliability of this heuristic.
* **Confirmation Bias:** How does the LLM's expressed confidence (or lack thereof) interact with users' pre-existing beliefs about energy solutions? Confident LLM advice that aligns with prior beliefs might be accepted uncritically, while hedged advice conflicting with prior beliefs might be easily dismissed.

**Conclusion**

The proposed research is on a promising track. By sharpening the operationalization of key constructs like "appropriate reliance" and "objective accuracy," explicitly addressing the role of LLM advice accuracy as an experimental factor, and further embedding the RQs and hypotheses within established cognitive theories, the study can significantly enhance its rigor and impact. The alternative experimental designs offered aim to provide concrete pathways for integrating seminal works in energy perception, HRI, and uncertainty communication to create a novel and insightful contribution to understanding how humans interact with and can best utilize AI energy advisors. The overarching goal should be to not only identify effects but to understand the cognitive mechanisms driving them, thereby informing the design of more effective and trustworthy human-AI systems for critical societal challenges like energy conservation.

**References (APA Style, example format from provided information):**

* Alter, A. L., Oppenheimer, D. M., Epley, N., & Eyre, R. N. (2007). Overcoming intuition: Metacognitive difficulty activates analytic reasoning. *Journal of Experimental Psychology: General, 136*(4), 569–576.
* Attari, S. Z., DeKay, M. L., Davidson, C. I., & Bruine De Bruin, W. (2010). Public perceptions of energy consumption and savings. *Proceedings of the National Academy of Sciences, 107*(37), 16054–16059.
* Bucinca, Z., Malley, M., & felled, E. (2021). Trust or to Think: Cognitive Forcing Functions Can Reduce Overreliance on AI in AI-assisted Decision-making. *Proceedings of the ACM on Human-Computer Interaction, 5*(CSCW2), 1-31.
* DeWaters, J. E., & Powers, S. E. (2011). Energy literacy of secondary students in New York State (USA): A measure of knowledge, affect, and behavior. *Energy Policy, 39*(3), 1699-1710.
* Evans, J. St. B. T., & Stanovich, K. E. (2013). Dual-Process Theories of Higher Cognition: Advancing the Debate. *Perspectives on Psychological Science, 8*(3), 223-241.
* Gigerenzer, G., & Gaissmaier, W. (2011). Heuristic decision making. *Annual Review of Psychology, 62*, 451-482.
* Jian, J.-Y., Bisantz, A. M., & Drury, C. G. (2000). Foundations for an empirically determined scale of trust in automated systems. *International Journal of Cognitive Ergonomics, 4*(1), 53-71.
* Kantenbacher, J., & Attari, S. Z. (2021). Better rules for judging joules: Exploring how experts make decisions about household energy use. *Energy Research & Social Science, 74*, 101947.
* Lee, J. D., & See, K. A. (2004). Trust in automation: Designing for appropriate reliance. *Human Factors, 46*(1), 50–80.
* Marghetis, T., Attari, S. Z., & Landy, D. (2019). Simple interventions can correct misperceptions of home energy use. *Nature Energy, 4*(9), 751–757.
* Mayer, R. C., Davis, J. H., & Schoorman, F. D. (1995). An integrative model of organizational trust. *Academy of Management Review, 20*(3), 709-734.
* McKnight, D. H., Choudhury, V., & Kacmar, C. (2002). Developing and validating trust measures for e-commerce: An integrative typology. *Information systems research, 13*(3), 334-359.
* Mercier, H. (2020). *Not born yesterday: The science of who we trust and what we believe*. Princeton University Press.
* Parasuraman, R., & Riley, V. (1997). Humans and automation: Use, misuse, disuse, abuse. *Human Factors, 39*(2), 230–253.
* Pornpitakpan, C. (2004). The persuasiveness of source credibility: A critical review of five decades' evidence. *Journal of Applied Social Psychology, 34*(2), 243-281.
* Steyvers, M., Lee, M. D., Miller, B., & Hemmer, P. (2025). What large language models know and what people think they know. *Manuscript referenced in prompt, assuming 2025 is target publication or working paper date.* (Actual citation details may vary).






--------


# https://notebooklm.google.com/notebook/5f89be29-389a-4d18-8ef1-adb57ce564b9?pli=1

### Evaluation of the "Gorman - AI Energy Study Proposal"

The proposal centers on understanding how the linguistic expression of uncertainty in an LLM energy advisor's output affects user reliance, trust, and calibration. It posits that household energy decision-making is plagued by cognitive biases and knowledge gaps, such as the underestimation of high-energy activities and overestimation of low-energy ones. An AI advisor, therefore, has the potential to guide users, but its effectiveness hinges on how users perceive and utilize its advice. This sets the stage for examining trust calibration in the context of AI-assisted energy decisions.

The proposed structure includes:

*   **Introduction & Justification:** Highlights cognitive biases and knowledge gaps in energy use, citing relevant literature (e.g., Attari et al., 2010; Marghetis et al., 2019).
*   **Research Questions (RQs) & Hypotheses (Hs):** Focus on the impact of linguistic uncertainty on reliance, trust, calibration, and the moderating/predictive roles of individual differences (including energy literacy/knowledge) and baseline knowledge/estimation accuracy.
*   **Methods:** Describes baseline assessments (energy knowledge/perception, numeracy, AI familiarity/trust propensity), item/scenario selection, an AI advisor interaction task (core task), and post-task questionnaires. The core task involves repeated trials where participants provide initial responses and confidence, receive AI advice (varying in confidence tone and accuracy), and then provide final decisions and confidence, along with trial-specific trust ratings.

#### Evaluation of Construction Relative to Research Questions

The proposed methods appear reasonably well-aligned with the stated research questions.

*   **RQ1 (Reliance):** The procedure explicitly measures participant decisions before and after receiving AI advice, allowing for the assessment of whether participants change their initial decision to align with the AI's recommendation. The manipulation of AI accuracy (correct vs. incorrect advice) across trials permits the examination of *appropriate* reliance (i.e., higher reliance on correct advice than incorrect advice). Measures such as agreement rate and appropriate reliance are directly addressable by this design.

*   **RQ2 (Trust & Confidence):** The inclusion of confidence ratings (initial and final) and both trial-specific and post-task trust ratings provides multiple measures to capture subjective trust and confidence in the AI's recommendations across varying conditions.

*   **RQ3 (Calibration):** By capturing participants' confidence in their initial and final decisions, and comparing these confidence levels to the objective accuracy of those decisions (which can be determined based on the ground truth values associated with each scenario item), the design allows for the measurement of calibration. The systematic variation of AI accuracy and confidence tone enables the investigation of how linguistic uncertainty influences this calibration process.

*   **RQ4 (Individual Differences & Knowledge):** The comprehensive baseline assessments covering various individual difference factors, including objective and subjective energy knowledge/perception and numeracy, directly address the need to explore moderators and predictors of the AI's impact. By collecting these measures *before* the AI interaction, the design appropriately positions them as potential antecedents influencing how participants react to the AI's advice.

In summary, the experimental design, with its manipulation of AI confidence and accuracy and its collection of pre-, within-, and post-task measures, seems logically structured to collect the data necessary to address the research questions.

#### Evaluation of Novelty, Logical Structure, and Justification

*   **Novelty:** Within the scope of the provided sources, the specific focus on using linguistic uncertainty in LLM-generated energy advice to study trust calibration appears to be a novel contribution. While sources discuss trust in AI, LLMs for energy applications, energy literacy and misperceptions, and human-AI collaboration, the proposed study integrates these elements in a specific way to examine a nuanced aspect of AI communication (linguistic uncertainty) and its cognitive impact (trust calibration). Prior work on energy feedback has explored various formats and frequency, but not explicitly the linguistic framing of uncertainty in AI advice.

*   **Logical Structure:** The structure follows a standard experimental design pipeline: establish theoretical basis and questions -> measure baseline characteristics -> expose participants to manipulated conditions -> measure outcomes -> analyze results. The sequential nature of the core task trials (initial response -> AI advice -> final decision) logically facilitates the measurement of reliance and the assessment of how AI input influences human judgment. The positioning of baseline assessments before the core task minimizes potential contamination effects.

*   **Justification Against Literature:** The justification for the study is well-grounded in the literature on energy-related cognitive biases and knowledge gaps. The proposed role of an AI advisor as a tool to address these issues is a logical extension, and the exploration of trust calibration is directly relevant to the challenge of ensuring users appropriately utilize such tools. The connection to trust calibration theories is explicitly made, and the study design attempts to capture this by assessing the alignment between confidence and accuracy, building on work like Skitka et al. (1999) on over/underreliance. The proposal effectively uses the identified cognitive challenges in energy perception as the problem space that an AI advisor could potentially address, thus justifying the investigation into factors influencing the adoption and effective use of such an advisor.

Overall, the proposal presents a coherent and justified study design that appears novel within the provided context and logically constructed to test its hypotheses.

### Deficiencies, Inaccuracies, and Missed Opportunities

While the proposal is strong, a meticulous critique reveals several areas for potential refinement or deeper exploration:

1.  **Specificity of Targeted Misconceptions:** The proposal notes that scenarios are "crafted based on common scenarios or misconceptions identified earlier (often related to the appliances or actions from the estimation task, for consistency)". However, the specific nature of these misconceptions or scenarios is not detailed. Research has identified specific types of energy misperceptions, such as the overestimation of low-impact actions (like lighting) and underestimation of high-impact actions (like heating/cooling). Kempton and Montgomery (1982) and Van Den Broek and Walker (2019) highlighted the use of simplifying heuristics that lead to these biases. Explicitly stating *which* well-documented misconceptions or heuristics are being targeted in the scenarios would strengthen the connection between the energy cognition literature and the experimental task. This would allow for a more precise analysis of whether the AI's advice effectively challenges or reinforces specific biased mental models.

2.  **Operationalizing "Appropriate Reliance":** While the design allows for measuring different reliance patterns based on AI accuracy, the term "appropriate reliance" as a measure for RQ1 could be defined more rigorously. It typically refers to relying on the AI when it is correct and *not* relying on it when it is incorrect (or demonstrating less reliance on incorrect advice). This could be operationalized as a difference score or a correlation between AI accuracy and participant reliance/agreement across trials.

3.  **Ecological Validity of the Task:** The task involves reacting to discrete energy-related questions. While informative, this differs from complex, multi-faceted household energy planning and decision-making, which involves trade-offs, sequences of actions, and integration of information over time. The proposal mentions a "simulated household planning task" in a related study idea, suggesting an alternative approach. The current task measures response to specific pieces of advice, which is valuable, but might not fully capture how users integrate AI advice into broader, more complex energy management behaviors. The use of an online format, while practical, also warrants consideration regarding its external validity compared to in-situ interactions with energy systems or advisors.

4.  **AI Model Transparency and Capabilities:** The study relies on an "LLM Energy Advisor". The specific LLM used and its general characteristics (e.g., underlying knowledge, potential biases, reasoning processes) are not described. Different LLMs might exhibit varying capabilities or tendencies that could influence how uncertainty is expressed or how advice is generated. While focusing on linguistic output is key, understanding the nature of the AI generating it provides crucial context.

5.  **Role of AI Explanation Quality:** The AI provides an "explanation for the estimate". The quality or type of this explanation (beyond confidence tone) could significantly impact trust and reliance. For example, an explanation grounded in expert heuristics or numerical data might be perceived and processed differently than a general, unstructured explanation. The proposal could consider manipulating or analyzing the content of these explanations to see how explanation type interacts with linguistic uncertainty. This connects to research on AI transparency and explainability.

6.  **Feedback as a Dynamic Process:** The proposal explicitly states that in-task feedback (e.g., revealing the ground truth after a trial) will not be provided to observe natural dynamics but is noted as future work. While studying natural trust dynamics is valid, incorporating feedback (which is a core component of many energy interventions and learning processes) could provide richer insights. How does linguistic uncertainty affect learning from feedback, and how does feedback, in turn, influence the perception and use of uncertain advice over time?

7.  **Philosophical Underpinnings and Cognitive Mechanisms:** While cognitive biases are mentioned, a deeper engagement with the theoretical underpinnings of *why* these biases exist or persist (e.g., bounded rationality, cognitive load, dual-process models emphasizing intuitive vs. deliberate processing) could strengthen the analysis. How does the presentation of AI advice, particularly with varying uncertainty, engage these different cognitive processes? The proposal could explicitly link its findings back to specific theories of human judgment and decision-making under uncertainty.

### Improvement Ideas and Alternate Approaches

Drawing upon the rich landscape of energy cognition research and studies on human-AI interaction, several avenues for refining or extending the proposed research emerge. A core principle in these alternative designs is the integration of methods used to probe human understanding of energy with the study of how AI advice impacts this understanding and subsequent decisions.

**Core Idea:** Combine human estimation/judgment tasks related to energy use (mirroring methods from Attari, Kantenbacher, Marghetis, Landy) with exposure to LLM advice, systematically varying the AI's output (including uncertainty and explanation style) and measuring changes in human perception, confidence, and reliance. Incorporate insights from Steyvers et al. (2025) on what LLMs know and what users think they know, and Bucinca et al. (2021) on mitigating overreliance.

**Alternative Design 1: The "Estimate-Receive-Evaluate" Cycle**

*   **Framework:** Integrates measurement of existing mental models/heuristics with the impact of AI feedback.
*   **Procedure:**
    1.  **Initial Estimation/Heuristic Elicitation:** Participants are presented with various energy-related judgments (e.g., estimating appliance energy use, comparing the impact of different actions, judging payback periods). Similar to Kantenbacher and Attari (2021), they could be asked to explain their reasoning or the "rules" they use. This provides insight into their current heuristics and knowledge gaps.
    2.  **AI Advice (Manipulated):** For each judgment task, an LLM provides an answer or recommendation. This advice is manipulated along key dimensions:
        *   **Accuracy:** Correct vs. Incorrect (potentially targeting specific, common errors identified in Phase 1 or prior literature).
        *   **Linguistic Uncertainty:** Confident vs. Hedged.
        *   **Explanation Type:** Numerical feedback (e.g., providing wattage or kWh over a period, similar to interventions in Marghetis et al., 2019 or information displays) vs. Heuristic feedback (e.g., explicitly stating an expert heuristic relevant to the judgment) vs. Standard LLM explanation.
    3.  **Evaluation and Re-Estimation:** Participants evaluate the AI's advice (trust, perceived accuracy, helpfulness). Crucially, they then have the opportunity to revise their initial estimate or judgment and provide a final confidence rating.
*   **Measures:** Change in estimation accuracy, adoption of expert heuristics (if provided), confidence calibration (initial vs. final confidence vs. objective accuracy), reliance (change from initial judgment), and subjective ratings of the AI.
*   **Rationale:** This design directly tests how different forms of AI-provided information (uncertainty, numerical data, expert heuristics) impact specific energy-related judgments and the underlying cognitive strategies used by individuals. It moves beyond simple agreement to assess whether the AI helps correct misperceptions and improve calibrated understanding.

**Alternative Design 2: AI Nudges in a Simulated Decision Task**

*   **Framework:** Applies behavioral economics and nudging principles combined with AI capabilities, focusing on actual choice behavior in simulated scenarios.
*   **Procedure:**
    1.  **Scenario Presentation:** Participants face realistic energy-related decision scenarios (e.g., choosing between appliances, selecting insulation options, interpreting an energy bill, deciding on thermostat settings). These scenarios are designed to make common biases or heuristics relevant (e.g., framing effects, difficulty with probabilistic thinking or complex calculations).
    2.  **AI Nudge/Recommendation (Manipulated):** Before or during the decision, an LLM provides a "nudge" or recommendation. These nudges are systematically varied:
        *   **Linguistic Uncertainty:** Confident vs. Hedged.
        *   **Content/Type:** Simple recommendation vs. Nudge highlighting a consequence (e.g., cost savings over time, environmental impact) vs. Nudge referencing a social norm.
        *   **Cognitive Load/Forcing:** Some conditions could include elements that either simplify the decision (reducing cognitive load, leveraging System 1 processing) or require more deliberation (cognitive forcing functions, engaging System 2 processing). For example, requiring a written justification for a decision counter to the AI's advice.
    3.  **Decision and Evaluation:** Participants make the decision and then evaluate the AI's nudge and their confidence in their choice.
*   **Measures:** Decision outcome (e.g., choosing the energy-efficient option), decision time, confidence, perceived difficulty, subjective ratings of the AI.
*   **Rationale:** This design investigates the practical impact of AI communication on energy-relevant choices, exploring how linguistic uncertainty interacts with different types of nudges and cognitive processes to influence behavior. Incorporating cognitive forcing functions from Bucinca et al. (2021) would allow testing ways to mitigate over-reliance when the AI is incorrect but confident.

**Alternative Design 3: Investigating Mental Models of AI Energy Advisors**

*   **Framework:** Focuses on the user's understanding of the AI itself, drawing on work on mental models in human-computer interaction and AI literacy.
*   **Procedure:**
    1.  **Baseline Assessments:** Include detailed measures of AI literacy, specifically targeting user beliefs about LLMs' capabilities, limitations (e.g., hallucination, access to real-time data, source of knowledge), and how they handle uncertainty. Incorporate insights from Steyvers et al. (2025) regarding what people *think* LLMs know.
    2.  **AI Interaction (Varied AI Behavior):** Participants interact with an AI energy advisor that exhibits systematically varied behaviors:
        *   **Linguistic Uncertainty:** As in the original proposal.
        *   **Consistency:** The AI is consistently accurate/inaccurate or inconsistently accurate/inaccurate across trials.
        *   **Self-Correction/Admission of Error:** In some conditions, the AI might explicitly acknowledge limitations or correct a previous error.
    3.  **Post-Interaction Mental Model Assessment:** Use qualitative (interviews, think-aloud protocols) and quantitative measures to probe participants' mental models of the AI. Questions would explore how they believe the AI arrives at its answers, why it expresses uncertainty (or confidence), and how they evaluate its reliability based on their interaction history.
*   **Measures:** Detailed descriptions of participants' AI mental models, changes in AI literacy, trust calibration across interaction instances, perceived trustworthiness and competence ratings.
*   **Rationale:** Understanding *how* users conceptualize the AI's capabilities and limitations is crucial for effective human-AI teaming. This design directly investigates how the AI's communication style and behavior shape these mental models and how these models, in turn, influence trust and reliance. It provides a deeper cognitive perspective beyond simply measuring behavioral outcomes.

**Integrating Steyvers et al. (2025) and Bucinca et al. (2021):**

Findings from Steyvers et al. (2025) regarding common misperceptions about LLM knowledge or capabilities could be used to inform the baseline AI literacy assessment. For instance, if people tend to overestimate LLMs' access to real-time data or their ability to perform complex reasoning, these specific beliefs could be assessed. This could be included as a factor in RQ4, predicting how users interpret uncertain advice or calibrate their trust.

Bucinca et al.'s (2021) work on cognitive forcing functions to reduce overreliance on AI offers a valuable intervention strategy. In any of the above designs, a condition could be added where participants are prompted to deliberate or justify their decisions when their initial judgment conflicts with the AI's advice, particularly when the AI is highly confident. This tests whether such interventions mitigate potential overreliance stemming from the AI's confidence cue, especially for individuals prone to deference or with lower domain knowledge. This directly addresses concerns about potential negative impacts of AI on human judgment and agency.

```ascii
+---------------------------+
| LITERATURE BASE:          |
| - Energy Cognition (Bias, |
|   Literacy, Heuristics)   |
|   |
| - AI & Energy (LLMs, CA,  |
|   Recommenders)           |
|  |
| - Human-AI Interaction    |
|   (Trust, Reliance, Calib)|
|     |
+---------------------------+
             |
             V
+---------------------------+
| PROPOSED STUDY (Gorman)   |
| - RQ: Uncertainty ->      |
|   Reliance, Trust, Calib, |
|   Individual Diff    |
| - Method: Baseline -> AI  |
|   Interact (Manipulated   |
|   Uncertainty, Accuracy)  |
|   -> Post        |
+---------------------------+
             |
             V
+---------------------------+
| CRITIQUE & OPPORTUNITIES  |
| - Specificity of Target   |
|   Bias/Heuristic          |
| - Ecological Validity     |
| - AI Model Context        |
| - Explanation Role        |
| - Dynamic Trust/Feedback  |
| - Deeper Cognition Theory |
+---------------------------+
             |
             V
+---------------------------+
| IMPROVEMENT IDEAS /       |
| ALTERNATE DESIGNS         |
| - Combine Estimation + AI |
|   Feedback + Re-Estimate  |
|   (Addressing Bias/Heuristics) |
| - AI Nudges in Decision   |
|   Tasks (Behavioral Impact)|
| - Study Mental Models of  |
|   AI Advisors (AI Literacy)|
| - Incorporate:            |
|   - Specific Misperceptions |
|              |
|   - Expert Heuristics     |
|                   |
|   - Numerical/Heuristic   |
|     Feedback      |
|   - Cognitive Forcing     |
|                       |
|   - AI Literacy Beliefs   |
|                  |
+---------------------------+
```

In conclusion, the "Gorman - AI Energy Study Proposal" lays a solid foundation for investigating a critical aspect of human-AI interaction in a socially relevant domain. By systematically evaluating the impact of linguistic uncertainty in AI energy advice, it addresses important questions about reliance, trust, and calibration. The proposal is well-justified by existing literature on energy cognition and appears logically structured. However, enhancing the specificity of the targeted cognitive biases, expanding the scope to include the nature of AI explanations, considering tasks with higher ecological validity, and explicitly integrating insights on AI literacy and cognitive forcing could significantly deepen the study's theoretical contribution and practical relevance. The suggested alternative designs offer concrete pathways to explore these enriched avenues, building directly upon the strong base provided by the foundational research in energy cognition and human-AI collaboration cited in the sources. Such theoretically informed experimental designs are crucial for developing AI tools that not only provide accurate information but are also used appropriately and effectively by cognitively bounded human decision-makers facing complex challenges like energy conservation.








-------




As a cognitive science expert meticulously evaluating research proposals, I have reviewed the provided outline for the "Gorman - AI Energy Study Proposal: Calibrating Trust in an LLM Energy Advisor: The Impact of Linguistic Uncertainty". This proposal aims to explore the dynamics of human trust and reliance when interacting with an AI energy advisor, specifically investigating the effects of linguistic uncertainty in the AI's output and the role of individual differences, particularly energy literacy. The study design, integrating baseline assessments with an interactive task, shows potential for illuminating complex human-AI collaboration. However, a critical evaluation reveals several areas where the proposal could be strengthened in terms of thoroughness, theoretical grounding, and novelty.

### Evaluation of the Gorman - AI Energy Study Proposal

The proposed study is structured into two phases: Phase 1 involves baseline assessments of energy knowledge, numeracy, and AI familiarity/trust propensity; Phase 2 is the core experimental task where participants interact with a simulated AI advisor presenting energy-related scenarios with manipulated linguistic uncertainty and accuracy. This structure is logically sound, aiming to measure prerequisite individual characteristics before observing interaction behavior.

**Evaluation of Research Questions and Design Alignment:**

*   **RQ1 (Reliance):** How does linguistic uncertainty affect reliance (agreement rate, appropriate reliance)?. The proposed method directly addresses this by observing participants' final decisions after receiving AI advice and comparing them to their initial responses and the ground truth. Reliance is captured by whether participants change their initial answer after seeing the AI's advice. Appropriate reliance, defined elsewhere as accepting correct AI suggestions and rejecting incorrect ones (Litvinova et al., 2024; Bucinca et al., 2021), can be assessed by comparing the participant's final decision against the ground truth based on whether the AI's advice was correct or incorrect. The within-subjects manipulation of AI accuracy (correct vs. incorrect) and uncertainty (hedged vs. confident) across trials is appropriate for evaluating differential reliance patterns.
*   **RQ2 (Trust & Confidence):** How does linguistic uncertainty influence subjective trust and confidence?. The design includes post-trial questionnaires asking for immediate trust ratings for the AI's advice on that specific trial, as well as participant confidence ratings in their initial and final decisions. Post-task questionnaires also assess overall trust and perceived accuracy. This multi-faceted approach to measuring subjective trust and confidence aligns well with RQ2. The manipulation of linguistic uncertainty is the key variable here.
*   **RQ3 (Calibration):** Does linguistic uncertainty improve calibration (alignment between confidence and objective accuracy)?. Calibration is defined as the alignment between confidence in advice/decisions and objective accuracy. The design captures confidence ratings (initial and final) and the ground truth for each scenario. By comparing these confidence ratings against the objective correctness of the final decision across conditions (hedged vs. confident AI advice), the study can evaluate calibration. This appears well-aligned.
*   **RQ4 (Individual Differences & Knowledge):** How do individual differences (trust propensity, AI literacy, energy knowledge/literacy, numeracy) moderate these effects, and how does baseline knowledge predict calibration/reliance?. Phase 1 explicitly measures these individual differences. The proposal articulates a rationale: higher domain knowledge might allow users to better detect AI errors and calibrate trust. The study design intends to use the Phase 1 data as moderators and predictors in the analysis of Phase 2 outcomes (reliance, trust, calibration). This is a strong point of the design, allowing for the exploration of *for whom* and *under what conditions* uncertainty expressions are effective. The inclusion of both objective knowledge measures (energy estimation task) and subjective self-assessments of knowledge is valuable.

**Deficiencies and Missed Opportunities:**

1.  **Theoretical Depth:** While the proposal mentions "cognitive biases" and "miscalibrated mental models" in the introduction and references dual-process theory (Bucinca et al., 2021), the experimental design description does not explicitly articulate how specific cognitive frameworks (e.g., dual-process theory, heuristic-analytic processing, resource-rational analysis) inform the *mechanisms* by which linguistic uncertainty or individual differences are hypothesized to impact reliance and trust. Bucinca et al. (2021) used cognitive forcing functions to *compel* deeper processing, suggesting that standard explanations might not be enough; users may rely on heuristics about the AI's reliability rather than analytically evaluating each piece of advice. How does linguistic uncertainty interact with System 1 (intuitive) vs. System 2 (analytical) processing? Does hedging encourage more analytical thought, or is it simply a cue that gets integrated into a heuristic about the AI's confidence?
    *   **Deficiency:** Lack of explicit theoretical articulation guiding the predictions beyond general expectations.
    *   **Missed Opportunity:** The design could be more explicitly framed within a dual-process framework, predicting *when* and *how* linguistic cues might trigger more effortful processing or affect heuristic-based evaluation of the AI.

2.  **Operationalization of "Uncertainty Expression":** The manipulation is described as "hedged vs. confident tone". While examples are provided (e.g., "Definitely..." vs. "I'm not entirely sure, but..."), the proposal could benefit from a more detailed description of how this manipulation is standardized and validated across all scenarios. How is "hedging" quantified or ensured to be consistent? Given the potential for complex, context-dependent interpretations of language, particularly from LLMs (Myers & Chater, 2024), ensuring the manipulation is perceived and processed as intended is crucial.
    *   **Deficiency:** Limited detail on the precise nature and consistency of the linguistic uncertainty manipulation.

3.  **Task Realism and Engagement:** The scenarios are described as energy-related questions/problems and linked to common misconceptions and appliances from the estimation task. While this enhances ecological validity related to energy use, the interaction is with a "simulated AI energy advisor (actually a scripted LLM output)". The lack of genuine interactivity, the scripted nature of responses, and the absence of real-time reasoning or adaptation might limit the generalizability of findings to interactions with true generative AI systems. Furthermore, the "decision" involves stating a likely action or sticking with an answer, not engaging in a real-world behavior with consequences.
    *   **Deficiency:** Potential limitations in ecological validity due to simulated, scripted AI interaction and hypothetical decisions.
    *   **Missed Opportunity:** The study could explore the impact of different *types* of explanations (e.g., feature-based vs. example-based, as explored by Casolin et al., 2024), or the depth of argumentation (Spatscheck et al., 2024), which have been shown to influence reliance, rather than solely focusing on tone. Integrating explanation style with uncertainty expression could provide richer insights.

4.  **The Role of Feedback:** The proposal explicitly states no immediate accuracy feedback is given during trials, which is a valid design choice to observe natural trust dynamics. However, feedback is crucial for learning and calibrating trust over time (Love et al., 2024). While variations exploring feedback are mentioned, the current design captures only a snapshot. How would linguistic uncertainty interact with experience and outcome feedback?
    *   **Deficiency:** The cross-sectional nature of the core interaction phase limits insights into how trust and reliance evolve with feedback and repeated interaction.

5.  **Connection to Expert Knowledge/Heuristics:** The proposal leverages Attari et al. (2010) and Marghetis et al. (2019) for the energy estimation task and identifying misconceptions. It also includes Kantenbacher & Attari (2021) in the references and discusses incorporating objective energy knowledge measurement. However, the design does not explicitly incorporate the *expert heuristics* documented by Kantenbacher and Attari (2021) into the AI's explanations or the assessment of participant knowledge/strategy. Understanding whether participants' reliance patterns are influenced by whether the AI's explanation aligns with or contradicts known expert heuristics would add significant value.
    *   **Deficiency:** Missed opportunity to explicitly integrate expert heuristics from Kantenbacher & Attari (2021) into the AI's advice structure or the analysis of user responses.

**Novelty and Justification Against Literature:**

The proposal's combination of measuring objective energy knowledge (estimation task) and examining its moderating role on trust calibration in an AI interaction context, alongside the manipulation of linguistic uncertainty, appears reasonably novel based on the provided excerpts. While individual components (energy misperceptions, trust calibration, AI uncertainty communication, individual differences in AI interaction) have been studied, their joint investigation in this specific domain is a valuable contribution. The justification relies appropriately on documented knowledge gaps and biases in energy perception and the need to understand factors influencing trust and reliance on AI advice.

However, the justification could be stronger by more explicitly linking the chosen manipulation (linguistic uncertainty) to psychological theories of judgment and decision-making under uncertainty, beyond merely stating it's a form of uncertainty communication. While Steyvers et al. (2025) are referenced regarding what LLMs know and what people think they know, the specific mechanism by which *linguistic expression* of uncertainty influences human perception and processing is not deeply explored based on this or other sources in the proposal's outline.

### Improvement Ideas and Alternate Proposals

Building on the strengths of the proposed design and addressing the identified deficiencies, here are several brainstormed ideas combining methods from Attari, Kantenbacher, Marghetis, Landy, Steyvers, and Bucinca:

**Conceptual Framework for Combining Energy Knowledge, Heuristics, and AI Interaction:**

Consider a framework where a user's internal "model" of energy use (comprising factual knowledge, subjective beliefs, and learned heuristics) interacts with the AI's external "model" (its predictive capability and how it communicates its outputs). Trust calibration occurs when the user appropriately updates their confidence and behavior based on evaluating the AI's output against their own model, potentially influenced by the AI's stated uncertainty or explanation style.

```ascii
+---------------------+      +-----------------------+
| Human Internal Model|      |   AI External Model   |
| - Factual Knowledge |<---->| - Predictive Capacity |
| - Subjective Beliefs|      | - Communication Style |
| - Heuristics        |      |   (Uncertainty, Expl) |
+---------------------+      +-----------------------+
          ^                            ^
          |                            |  Interaction/Evaluation
          |                            |
+---------------------------------------------+
|             Judgment & Decision-Making      |
| - Confidence Calibration                    |
| - Reliance (Appropriate/Over/Under)         |
| - Behavioral Choices (e.g., energy saving)  |
+---------------------------------------------+
```

**Novel Survey/Experiment Ideas:**

1.  **Heuristic-Guided AI Explanation Study:**
    *   **Methodology:** Adapt the estimation task from Attari et al. (2010) and Marghetis et al. (2019) to assess users' baseline energy knowledge and identify common novice heuristics (see Kantenbacher & Attari, 2021, Supplementary Table 2). Then, in the AI interaction phase, present scenarios requiring energy judgments. Manipulate the *style* of the AI's explanation:
        *   Condition A: AI provides a standard explanation.
        *   Condition B: AI's explanation incorporates a relevant expert heuristic (from Kantenbacher & Attari, 2021).
        *   Condition C: AI's explanation directly addresses and corrects a common novice misconception or heuristic identified in Phase 1 (similar to interventions in Marghetis et al., 2019).
    *   **Measurements:** Beyond standard reliance/trust metrics, measure user confidence in the AI's *explanation* itself. After the interaction, assess if users adopt or report using the expert heuristics provided by the AI. Evaluate whether alignment between the AI's explanation style and user's pre-existing heuristics (or misconceptions) affects reliance and calibration.
    *   **Justification/Novelty:** Directly integrates the heuristics work (Kantenbacher & Attari, 2021) into AI design, testing whether framing AI advice using principles aligned with expert reasoning improves understanding and appropriate reliance, particularly for users holding specific novice biases. This moves beyond just linguistic tone to content and structure of explanations, linking to research on explainable AI (XAI).

2.  **Meta-Cognitive Feedback and AI Trust Calibration:**
    *   **Methodology:** In Phase 1, use the energy estimation task. After the participant provides their estimates, provide *immediate, personalized feedback* showing the actual energy values and highlighting areas where their estimates were significantly off (e.g., underestimating high-energy activities). Frame this feedback as revealing "common misconceptions" or "areas for improved understanding."
    *   **Manipulation:** In the AI interaction phase, manipulate the AI's uncertainty (hedged vs. confident) as in the original proposal.
    *   **Measurements:** Compare trust calibration and reliance between the feedback group and a control group who did not receive personalized feedback on their estimates. Does making users aware of their knowledge gaps and biases influence how they interpret the AI's uncertainty cues and calibrate their trust? This connects to the proposal's discussion of user education.
    *   **Justification/Novelty:** Investigates whether improving users' meta-cognitive awareness of their own biases and knowledge limitations, using methods from the energy perception literature (Marghetis et al., 2019), improves their ability to appropriately calibrate trust in an AI advisor. This addresses the "for whom" question by actively intervening to potentially change the user's internal model.

3.  **Adversarial Design with AI and Human Heuristics:**
    *   **Methodology:** Design scenarios where the AI provides advice that is subtly wrong, specifically by reflecting common *novice* heuristics or biases (e.g., overestimating the impact of turning off lights). Include conditions where the AI's wrong advice is delivered with high confidence vs. hedging.
    *   **Measurements:** Assess participants' ability to detect errors when the AI's error aligns with their own likely misconceptions. Does hedging make users more critical even when the AI is wrong in a familiar way? Does confidence make them accept advice that reinforces their own bias?
    *   **Justification/Novelty:** Explores the vulnerability of users to AI advice that aligns with their pre-existing biases, a critical safety and ethical concern. This tests whether common cognitive biases can create "blind spots" in trust calibration, even with uncertainty cues or explanations. It adopts an "adversarial" perspective common in AI evaluation.

4.  **Dual-Process Driven Cognitive Forcing:**
    *   **Methodology:** Incorporate elements of the cognitive forcing functions from Bucinca et al. (2021) into the AI interaction. For example, on certain trials, require participants to explicitly *justify* why they chose to accept or reject the AI's advice, or compare the AI's explanation to their own reasoning *before* making a final decision.
    *   **Manipulation:** Vary the type of cognitive forcing (e.g., justification prompt, comparison task) and potentially combine it with the AI's linguistic uncertainty.
    *   **Measurements:** Evaluate if cognitive forcing functions, by encouraging more analytical processing (System 2), mediate the relationship between AI uncertainty and appropriate reliance, particularly for individuals lower in Need for Cognition.
    *   **Justification/Novelty:** Directly applies a cognitive intervention technique (Bucinca et al., 2021) within the AI energy advising context to explore *how* users process AI advice and explanations, adding a mechanistic layer to the study of trust calibration and reliance.

These alternative proposals leverage the strengths of the original design while integrating specific methodologies and findings from the referenced literature to create more theoretically grounded and potentially impactful studies. By explicitly designing interventions or analyses around documented energy misperceptions, expert heuristics, meta-cognitive feedback, and cognitive processing theories, researchers can gain a deeper understanding of how to design AI advisors that foster appropriate reliance and truly enhance human decision-making in domains like energy conservation.






# https://notebooklm.google.com/notebook/3a30ce58-c87e-4e3d-8f89-cec677a8e5d2



**Evaluation of "Gorman - AI Energy Study Proposal"**

The proposal presents a theoretically grounded approach to examining the interplay between user perceptions of energy use, individual differences, and interactions with an AI energy advisor, specifically focusing on the linguistic expression of uncertainty in the AI's output. The stated objective is to understand how AI communication impacts user reliance, trust, and calibration in the context of energy decision-making.

1.  **Evaluation of Construction to Answer Research Questions:**

    *   **RQ1 (Reliance):** How does linguistic uncertainty affect reliance?. The proposed methodology employs a within-subjects design where participants interact with a simulated AI advisor delivering advice with varying linguistic uncertainty (hedging vs. confident) and accuracy. Reliance is operationalized by observing whether participants change their initial answer after receiving AI advice and their final confidence rating. While these measures capture behavioral reliance, the concept of "appropriate reliance" is mentioned but not explicitly defined or measured within the core task description. Appropriate reliance typically involves accepting correct advice and rejecting incorrect advice. The current structure allows for measuring overall reliance on the AI's advice (e.g., proportion of times advice is followed) across accuracy levels, which can indirectly inform appropriate reliance if analyzed in conjunction with AI accuracy. Explicitly measuring reliance on correct vs. incorrect advice would more directly address appropriate reliance.

    *   **RQ2 (Trust & Confidence):** How does linguistic uncertainty influence subjective trust and confidence?. The proposal includes robust measures of subjective trust and confidence at both the trial-specific level ("How trustworthy/helpful do you think the assistant’s answer was?" on a Likert scale) and the post-task overall system level ("overall trust," "perceived accuracy," "likelihood of future use"). This multi-faceted assessment provides a solid foundation for answering RQ2. The inclusion of both immediate per-trial ratings and retrospective overall ratings is a strength, capturing different aspects of the trust construct.

    *   **RQ3 (Calibration):** Does linguistic uncertainty improve calibration?. Calibration is defined as the alignment between confidence and objective accuracy. The design captures participants' initial and final confidence ratings, and the accuracy of the AI's advice is manipulated. By comparing participant confidence (before and after AI advice) with the objective correctness of their final decision on each trial (which can be determined relative to the "Actual ground truth value" mentioned in the item list), the study can assess calibration pre- and post-AI interaction, and how linguistic uncertainty affects this alignment. Methodological details on how calibration will be statistically assessed (e.g., calibration curves, Brier scores) would strengthen this section. The current structure is well-suited to address this question, provided appropriate analytical methods are employed.

    *   **RQ4 (Individual Differences & Knowledge):** How do individual differences moderate effects? To what extent does baseline knowledge predict trust calibration and reliance?. The proposal includes comprehensive baseline assessments covering energy knowledge/perception (objective and subjective estimation tasks), numeracy, AI familiarity, and trust propensity. These measures are appropriately positioned before the experimental task to capture baseline characteristics. The hypothesis that higher energy knowledge predicts better trust calibration/reliance is directly testable through moderation analyses incorporating these baseline variables. The breadth of individual difference measures is a strength.

2.  **Evaluation of Novelty:** The proposal exhibits strong novelty by explicitly integrating research on public misperceptions of energy use (e.g., Attari et al., 2010; Marghetis et al., 2019) with the emerging field of human-AI interaction, particularly concerning trust calibration and uncertainty communication with Large Language Models (LLMs) (e.g., Steyvers et al., 2025). The specific application of LLM linguistic uncertainty manipulation in the domain of energy advice to address known cognitive biases is a novel contribution.

3.  **Evaluation of Logical Structure:** The study follows a logical structure: baseline assessments to characterize participants, followed by a controlled experimental interaction task where key variables are manipulated, and concluding with post-task measures to capture overall perceptions. The within-subjects design allows for efficient testing of the effects of AI advice characteristics (uncertainty, accuracy) on individual behavior. The placement of the energy estimation task after basic individual surveys but before AI interaction is strategic, engaging participants with the domain while minimizing potential influence from AI advice on their initial knowledge assessment.

4.  **Justification Against Literature:** The proposal effectively justifies its research questions by highlighting the significant knowledge gaps and systematic misperceptions in household energy use documented in the literature (Attari et al., 2010; Lesic et al., 2018; Marghetis et al., 2019). It correctly identifies that people tend to underestimate high-energy activities and overestimate low-energy ones, preferring curtailment over efficiency improvements, contrary to expert recommendations. This gap motivates the potential utility of an AI advisor. The proposal then connects this to the challenge of ensuring users appropriately trust and rely on AI advice, drawing upon literature on AI trust calibration and the impact of uncertainty communication. Key studies supporting the prevalence of misperceptions and the use of heuristics (Schille-Hudson et al., 2019; Kantenbacher & Attari, 2021; Van Den Broek & Walker, 2019) and the importance of trust in AI (Bucinca et al., 2021; Steyvers et al., 2025) are cited, providing a strong foundation for the research. The justification for examining individual differences, particularly energy knowledge, is also well-supported, aligning with findings that factors like numeracy and environmental attitudes correlate with more accurate perceptions.

**Deficiencies and Missed Opportunities**

Despite its strengths, the proposal has some areas for improvement:

*   **Definition of "Appropriate Reliance":** As noted, a clear, operational definition of "appropriate reliance" is needed. Analyzing reliance separately for correct and incorrect AI advice would be crucial.
*   **Ecological Validity:** Using a scripted LLM output, while necessary for control, inherently limits ecological validity. Real-world interaction with an LLM might involve dynamic conversation, follow-up questions, and different types of uncertainty. While beyond the scope of this specific proposal, acknowledging this limitation and discussing how findings might translate to more dynamic AI interactions would be beneficial.
*   **Mechanism of Influence:** While the study will identify *whether* linguistic uncertainty impacts trust, reliance, and calibration, it could delve deeper into *why*. Collecting qualitative data on participants' reasoning processes (e.g., think-aloud protocols during the task or open-ended questions about why they trusted/distrusted the AI) could provide valuable insights into the cognitive mechanisms at play. For instance, do hedged statements encourage more critical evaluation? Do confident but incorrect statements lead to greater overreliance, as suggested by literature on Automation Bias? (Not directly in sources, but relevant to the concept of overreliance).
*   **Translating Perception to Action:** The study focuses heavily on perceptions, judgment, and decision-making accuracy in hypothetical scenarios. While these are crucial antecedents, the ultimate goal in energy conservation research is often behavioral change. The proposal could briefly discuss how the findings might inform the design of AI tools aimed at promoting actual energy-saving behaviors, bridging the gap between improved judgment and effective action.
*   **Hidden Costs:** While the proposal mentions cognitive biases and misperceptions, it could explicitly connect these to the "energy efficiency gap" literature, which discusses factors beyond simple information deficits, such as hidden costs (transaction costs, perceived quality differences) that influence adoption of efficient technologies (Attari & Rajagopal, 2015). An AI advisor could potentially address some of these by providing information on subsidies or installer availability, but the current proposal does not explore this function.

**Improvement Ideas and Alternate Approaches**

Building upon the strengths of the current proposal and incorporating insights from the provided literature, several research directions emerge:

1.  **Integrating Expert Heuristics into AI Advice for Enhanced Calibration:**

    *   *Concept:* Design a study where participants first estimate energy use for various appliances, similar to Attari et al. (2010) and Marghetis et al. (2019). This establishes their baseline perceptions and likely use of novice heuristics (Van Den Broek & Walker, 2019). Then, participants interact with an AI advisor providing energy-saving tips or estimations.
    *   *Manipulation:* In different conditions, the AI's advice incorporates explicit expert heuristics identified by Kantenbacher and Attari (2021). For example, instead of just giving a number, the AI might say, "Replacing your old refrigerator will save a lot of energy because appliances that need to be cooled while they are working use a lot of energy," directly stating an expert heuristic. Conditions could vary the type of heuristic presented (e.g., function, component, external cue), or combine heuristics with numerical estimates.
    *   *Outcome Measures:* Assess the impact of heuristic-informed AI advice on:
        *   Improvement in energy estimation accuracy post-interaction (pre- vs. post-test).
        *   Adoption of expert heuristics in subsequent judgment tasks.
        *   Trust in the AI advisor.
        *   Intention to adopt specific energy-saving behaviors linked to the heuristics presented.
        *   Calibration of confidence in energy judgments.
    *   *Rationale:* This directly tests whether integrating validated expert knowledge in the form of heuristics can effectively correct novice misperceptions and improve energy literacy, as suggested by Kantenbacher and Attari (2021). It moves beyond just providing numerical information to addressing the underlying cognitive shortcuts people use. This approach aligns with the idea of decision aids supporting better choices.

2.  **Using AI-Provided Feedback and Explanations to Enhance Trust Calibration:**

    *   *Concept:* Extend the Gorman proposal's core design. Participants estimate energy use and receive AI advice with varying uncertainty and accuracy. However, in this variation, after the participant provides their final decision and confidence rating for a trial, they receive explicit feedback on the *accuracy* of their final decision, potentially compared to an expert answer or actual data.
    *   *Manipulation:* Conditions could manipulate the nature of the feedback:
        *   Accuracy feedback only (e.g., "Your estimate was incorrect").
        *   Accuracy feedback + simple explanation (e.g., "Incorrect, because HVAC systems use significantly more energy than lighting").
        *   Accuracy feedback + heuristic-based explanation (e.g., "Incorrect, remember that devices that primarily heat or cool use a lot more energy than people think").
        *   Vary the source of the feedback (presented as from the AI advisor itself vs. from an independent "expert validation system").
        *   Vary the timing (immediate vs. delayed).
    *   *Outcome Measures:* Track how different feedback types influence:
        *   Changes in trust and reliance on the AI over subsequent trials.
        *   Improvement in confidence calibration over time (does confidence align better with accuracy after feedback?).
        *   Accuracy of decisions on later, similar trials.
        *   Users' mental models of the AI's capabilities and limitations.
    *   *Rationale:* This approach tests whether explicitly highlighting performance gaps (either the user's or the AI's) and providing explanations can improve trust calibration over repeated interactions. It leverages the concept that understanding *why* information is correct or incorrect is crucial for learning and refining mental models. This addresses a missed opportunity in the initial Gorman proposal (lack of in-task feedback) and directly tests methods for improving calibration beyond just varying AI communication style.

3.  **AI as a Goal-Oriented Planning Aid Tailored to User Perceptions:**

    *   *Concept:* Shift the focus from judgment tasks to behavioral planning. Participants report their current energy behaviors and estimate energy use for various activities/appliances, revealing their misperceptions and priorities (Attari et al., 2010; Lesic et al., 2018). They are then given a hypothetical energy reduction goal (e.g., save $20/month, reduce kWh by 15%).
    *   *Manipulation:* An AI advisor provides recommendations for achieving this goal. Conditions could vary how the AI presents recommendations:
        *   Ordering/prioritizing recommendations based on actual savings vs. perceived difficulty/hassle (drawing on Rasch models from Starke, 2019; Starke & Willemsen, 2024).
        *   Framing recommendations using different units (kWh, percentage, monetary, following Canfield et al., 2017 or Poster_Quarto_And_Manuscript), potentially aligning with the user's preferred mental representation (Gabe-Thomas et al., 2016).
        *   Explicitly correcting misperceptions within the recommendations (e.g., "While turning off lights helps, focusing on reducing your heating/cooling use will have a much larger impact").
        *   Providing information on hidden costs or practical steps for adoption (drawing on Attari & Rajagopal, 2015).
    *   *Outcome Measures:* Assess:
        *   The quality of the energy-saving plan created by the participant based on the AI's recommendations (e.g., calculated total kWh savings of planned actions).
        *   Intention to adopt the recommended behaviors.
        *   Perceived feasibility and effort associated with the recommended plan.
        *   Trust in the AI's ability to provide effective advice.
    *   *Rationale:* This approach leverages AI as a practical decision aid for behavioral change, addressing the disconnect between knowledge/perception and effective action. By tailoring advice presentation based on psychological principles (framing, perceived difficulty, misperceptions), it aims to improve the likelihood of users adopting high-impact behaviors.

4.  **Investigating Cognitive Forcing Functions in AI to Mitigate Overreliance:**

    *   *Concept:* Integrate the idea of cognitive forcing functions (Bucinca et al., 2021) into the AI interaction task to encourage critical evaluation, particularly when the AI might be incorrect.
    *   *Manipulation:* Within the experimental trials (similar to Gorman's design, with varying AI accuracy and uncertainty), introduce conditions where the AI's advice (especially if the advice is incorrect or counter-intuitive based on common misperceptions) is accompanied by a prompt designed to encourage deeper processing. Examples: "Before accepting this, consider why this might be the case," "Does this align with your understanding?", "Think about the energy principles involved."
    *   *Outcome Measures:* Assess:
        *   Reliance on AI advice (especially incorrect advice) compared to a control condition without forcing functions.
        *   Accuracy of final decisions.
        *   Confidence calibration.
        *   Self-reported cognitive effort or engagement during the trial.
        *   How individual differences (e.g., AI literacy, numeracy, trust propensity) moderate the effectiveness of forcing functions.
    *   *Rationale:* This directly addresses the risk of overreliance on AI, particularly when users have limited domain knowledge or the AI presents information confidently but erroneously. It explores behavioral interventions within the AI interface to promote appropriate skepticism and critical thinking, contributing to the design of more trustworthy AI systems.

In summary, the "Gorman - AI Energy Study Proposal" provides a strong foundation for exploring the complex relationship between user perception, individual differences, and AI communication in the energy domain. By addressing the noted deficiencies and exploring the proposed alternative directions, future research can significantly advance our understanding of how to design effective AI-powered tools that not only provide accurate information but also support appropriate user trust and promote meaningful energy conservation behaviors.




# https://notebooklm.google.com/notebook/b9b3533c-ddc0-49e3-b438-9e1f05272f9e?pli=1

As a meticulous Critic Agent specializing in cognitive psychology, I have undertaken a thorough examination of the "Gorman - AI Energy Study Proposal" to ascertain its conceptual rigor, methodological soundness, and contributions to the literature concerning human-AI interaction in the domain of energy conservation. My evaluation proceeds through a structured analysis, employing principles of critical appraisal consistent with psychological research standards.

```ascii
Critique Process:
1.  Deconstruct Proposal: Identify core research questions, hypotheses, methods, and theoretical justifications.
    |
    v
2.  Evaluate Against RQs: Assess method alignment with each research question.
    |
    v
3.  Evaluate Against Literature: Compare claims and methods to existing knowledge from provided sources.
    |
    v
4.  Assess Novelty & Structure: Determine originality and logical flow.
    |
    v
5.  Identify Gaps & Weaknesses: Pinpoint deficiencies, inaccuracies, or missed opportunities based on sources and cognitive principles.
    |
    v
6.  Synthesize Critique: Formulate a comprehensive evaluation.
    |
    v
7.  Brainstorm Alternatives: Propose new research avenues integrating key concepts and sources.
```

**Evaluation of the "Gorman - AI Energy Study Proposal"**

The "Gorman - AI Energy Study Proposal" posits an experimental design to investigate the impact of linguistic uncertainty in Large Language Model (LLM) energy advisor output on user reliance, trust, calibration, and the moderating role of individual differences, particularly energy knowledge. The proposal centers on a within-subjects, hybrid trust calibration task wherein participants evaluate AI advice across varied accuracy and uncertainty conditions.

**Evaluation Against Research Questions:**

*   **RQ1 (Reliance):** How does linguistic uncertainty affect users' reliance on AI advice (agreement rate, appropriate reliance)? The proposed method of having participants provide an initial answer/confidence, receive AI advice (manipulating tone and accuracy), and then provide a final decision/confidence directly addresses this question. Reliance is operationalized by observing whether the participant changes their decision to align with the AI's advice, and presumably, "appropriate reliance" would be measured by whether this shift occurs more often when the AI is correct compared to when it is incorrect. This aligns with the concept of studying when people defer to AI recommendations and when they resist them.
*   **RQ2 (Trust & Confidence):** How does linguistic uncertainty influence subjective trust and confidence? The design incorporates pre- and post-task questionnaires assessing general trust and self-reflection on trust. More critically, it includes a brief post-trial questionnaire asking about immediate trust/helpfulness of the AI's advice for that specific trial. This granular measure is well-suited to capture fluctuations in subjective trust linked to the manipulated uncertainty/accuracy on a trial-by-trial basis, providing richer data than a global measure alone. This resonates with studies on trust in AI systems.
*   **RQ3 (Calibration):** Does linguistic uncertainty improve calibration (alignment between confidence and objective accuracy)? Calibration is a key concept in metacognition, referring to the correspondence between one's subjective confidence and objective performance (Juslin et al., 2000; Lichtenstein et al., 1982 - *Information from outside sources, to be verified independently*). The proposal captures initial and final confidence ratings and implicitly links these to the objective accuracy of the AI's advice and the participant's final decision. Measuring calibration requires comparing confidence judgments to accuracy. The design allows for computing calibration scores (e.g., using a calibration curve or mean squared error) by comparing the stated confidence in the final decision (or the AI's advice) against its objective correctness. This structure appears capable of assessing whether the AI's linguistic uncertainty improves this alignment, a critical aspect for effective human-AI collaboration.
*   **RQ4 (Individual Differences & Knowledge):** How do individual differences (including energy knowledge/literacy) moderate these effects? The proposal includes baseline assessments of energy knowledge/perception, numeracy, AI familiarity, and trust propensity. This is a strength, as prior research consistently highlights the role of individual differences, such as energy literacy, in understanding energy information and making decisions. Specifically, the literature review correctly identifies that energy experts have more accurate estimates than novices, and that misperceptions exist regarding energy use. Assessing objective and subjective energy knowledge *before* the AI interaction is methodologically sound to avoid confounding effects of the interaction itself on self-reported knowledge. The hypothesis that users with higher energy knowledge might calibrate trust more effectively is theoretically grounded in the idea that domain expertise or greater cognitive capacity allows for better evaluation of external information, including potentially flawed AI outputs.

**Evaluation Against Literature (Justification and Novelty):**

The proposal is well-justified by the existing literature on energy misperceptions and the emerging field of human-AI interaction. It correctly identifies the systematic inaccuracies in public perceptions of energy use, including the underestimation of high-energy activities and overestimation of low-energy ones. This phenomenon, sometimes termed "compression bias," and the reliance on potentially erroneous heuristics underscore the potential value of an AI advisor, while simultaneously highlighting the challenge of ensuring appropriate trust and reliance given these pre-existing cognitive biases.

The integration of AI assistance into energy planning and advice is a relevant and timely area of research. The proposal builds upon existing discussions of AI assistance in complex tasks like energy planning and directly addresses the critical factors of trust and reliance in AI advisors. The focus on *linguistic uncertainty* as a variable is particularly relevant given the nature of LLMs and their potential for generating confident but incorrect information ("hallucination"). Manipulating the AI's tone (hedging vs. confident) to see its impact on reliance and calibration is a novel application of uncertainty communication principles within this domain. Prior work has explored trust calibration in AI and communication of uncertainty in AI, but specifically applying linguistic tone manipulation in an energy advice context appears to be a valuable contribution. The proposal appropriately cites key works in both energy perception (Attari, Marghetis, Landy, Kantenbacher) and AI interaction/trust (Bucinca, Steyvers - although Steyvers et al. is cited as 2025, indicating it may be a forthcoming work, which adds to the novelty angle).

The use of a hybrid trust calibration task is a sound methodological approach for studying human-AI interaction, allowing for the observation of both independent judgments and responses to AI input across varying levels of AI accuracy and uncertainty. This is preferable to designs that solely measure post-AI confidence or reliance without capturing the user's initial state.

**Logical Structure:**

The logical structure flows well from the identified problem (energy misperceptions, need for effective energy-saving decisions) to the proposed solution (AI advisor) and the core research question (how to ensure appropriate trust/reliance via uncertainty communication). The literature review establishes the need for external support due to human cognitive limitations and biases in this domain, positioning the AI advisor as a potential solution. It then grounds the investigation into trust and reliance by highlighting the inherent challenges and the importance of calibration. The methods are logically designed to manipulate key variables (AI uncertainty, accuracy) and measure the hypothesized outcomes (reliance, trust, calibration) while accounting for potential moderating factors (individual differences).

**Deficiencies, Inaccuracies, and Missed Opportunities:**

While the proposal is conceptually strong and methodologically promising, a meticulous critique reveals several areas for potential refinement or consideration:

1.  **Operationalization of Linguistic Uncertainty:** The proposal describes manipulating linguistic uncertainty via "hedged vs. confident tone". The specific linguistic markers used to achieve this manipulation are not detailed. The effectiveness and ecological validity of this manipulation are crucial. As noted in source, operationalizing uncertainty in AI communication can be challenging, and the chosen method (e.g., token generation probability highlighting vs. likelihood of editing) can influence user perception. The proposal should specify *how* the AI responses are scripted to convey these tones and ideally validate this manipulation with a pilot study to ensure participants perceive the intended difference in uncertainty. Subtle linguistic cues might not be sufficient, or overly strong cues might seem unnatural for an advisor.
2.  **Ecological Validity of Simulated AI:** The use of a "simulated AI energy advisor (actually a scripted LLM output)" is practical for experimental control. However, it sacrifices some ecological validity compared to interaction with a live, dynamic LLM. Users may have different expectations or interaction styles with a truly conversational agent versus a static display of pre-generated text. While the proposal mentions conversational agents in the broader context, the core task seems to be text-based question-answer pairs. Future work, or a variation, could explore the impact of voice-based interaction or more dynamic dialogue.
3.  **Nuance in Trust and Reliance:** The proposal measures reliance by observing decision changes and captures trial-specific trust. However, trust is a multifaceted construct (Mayer et al., 1995 - *Information from outside sources, to be verified independently*), often involving dimensions like competence, integrity, and benevolence. While perceived competence is likely addressed by accuracy and confidence ratings, other aspects of trust might be missed. Reliance is also complex; users might rely on AI for different reasons (e.g., cognitive offloading, perceived expertise, laziness). More detailed qualitative or quantitative measures could explore the *reasons* behind reliance or lack thereof, providing deeper insights into the psychological mechanisms at play.
4.  **Connecting AI Advice to Actions:** The proposal focuses on evaluating AI advice and making hypothetical decisions based on it. A significant challenge in energy conservation research is the gap between intention/knowledge and actual behavior change. While measuring hypothetical actions is a necessary step in this controlled environment, the proposal doesn't extensively discuss how these findings might translate to influencing real-world energy-saving behaviors. Future studies could link advisor interaction to simulated planning tasks (like those in source) or even actual behavioral interventions.
5.  **Integration of Energy Literacy Measures:** While baseline energy knowledge is assessed, the proposal could more explicitly integrate findings from energy literacy research into the experimental task design. For instance, presenting AI advice that directly contradicts known novice heuristics (e.g., overestimating light bulb energy use) could be a powerful manipulation to observe how users with varying energy literacy levels react to AI advice that challenges their pre-existing (potentially inaccurate) mental models. The estimation task is a good start, but using specific items known to elicit common misperceptions could enhance this aspect.
6.  **Alternative Explanations for Confidence:** While linguistic uncertainty is the manipulated variable, user confidence in the AI or their own decision might also be influenced by other factors in the AI's explanation (e.g., clarity, length, inclusion of specific details like units or comparisons). The proposal mentions the AI's explanation is displayed, but does not specify if its content is standardized or varies alongside the tone manipulation. Uncontrolled variation in explanation content could be a confound. Prior work emphasizes the importance of clear communication of energy information and using understandable units.
7.  **Missed Opportunity for Comparing AI vs. Human Advice:** The proposal examines human interaction with AI. An interesting comparison, building on expertise literature, could involve presenting some advice as coming from a human energy expert. This could provide a benchmark for AI trust and reliance and explore whether users react differently to uncertainty or perceived accuracy depending on the source (human vs. AI).
8.  **Theoretical Frameworks:** While the proposal mentions cognitive offloading and human-AI collaboration, explicitly grounding the work in a broader decision-making framework (e.g., dual-process theories, bounded rationality) could provide a richer interpretation of the results. How do users balance intuitive reliance on AI cues (like confidence tone) with more analytical processing of the advice content, particularly when their initial judgments conflict with the AI? This ties into the concept of cognitive load and whether AI assistance reduces it appropriately or introduces new cognitive demands (e.g., evaluating AI trustworthiness).
9.  **Granularity of Energy Information:** Energy advice can be presented at different levels of granularity (e.g., whole-home vs. appliance-specific). The proposal mentions scenarios about heating/cooling, appliances, lighting, insulation. Varying the type or granularity of the advice could interact with both AI uncertainty and user energy literacy, as people have differing understandings and misperceptions at different levels.

**Improvement Ideas and Alternate Proposals:**

Drawing upon the strengths of the "Gorman - AI Energy Study Proposal," the insights from the identified literature on energy perception, heuristics, expertise (Attari, Kantenbacher, Marghetis, Landy), and AI uncertainty/trust (Steyvers, Bucinca, Gorman proposal, Bo et al.), here are several alternative or enhanced research proposals:

**Alternate Proposal 1: The Heuristic Calibration Study**

*   **Core Idea:** Investigate how AI advice, explicitly linked to common energy heuristics, impacts user trust calibration and decision-making, moderated by initial heuristic use and energy literacy.
*   **Frameworks:** Builds on heuristic-based decision making, energy literacy, and AI trust calibration.
*   **Design:**
    *   **Phase 1 (Baseline):** Participants complete an energy estimation task similar to Attari et al. (2010) and Schille-Hudson et al. (2019), assessing their estimates for various appliances. Include questions eliciting their *reasoning* or cues used (e.g., "Why do you think a large appliance uses more energy?") to identify reliance on common heuristics (e.g., Size heuristic, Frequency of Use heuristic). Also measure objective/subjective energy literacy.
    *   **Phase 2 (AI Interaction):** Participants receive energy-saving advice from an AI advisor. Manipulate:
        *   **AI Accuracy:** Correct vs. Incorrect advice (as in Gorman proposal).
        *   **AI Explanation Style:**
            *   **Heuristic-Aligned:** Explanation uses or references a common, often flawed, novice heuristic (e.g., "This saves energy because turning things off always helps a lot").
            *   **Expert-Aligned:** Explanation uses principles or cues aligned with expert heuristics (e.g., "This appliance uses a lot of energy because it generates heat/cold," based on Kantenbacher & Attari (2021)).
            *   **Uncertainty:** Vary linguistic tone (hedged vs. confident) *within* each explanation style.
    *   **Measures:** After each AI advice trial, capture initial/final decision and confidence, trust ratings, and perceived helpfulness of the explanation. Post-task, assess overall trust and shifts in heuristic use.
*   **Novelty:** This design directly tests whether AI explanations grounded in different cognitive models (novice heuristics vs. expert heuristics) influence trust and learning, especially when paired with varying accuracy and uncertainty. It moves beyond simply stating the AI's answer to analyzing how the *explanation* affects user processing and reliance, particularly for individuals who strongly rely on specific initial heuristics.

**Alternate Proposal 2: Visualizing Uncertainty and Energy**

*   **Core Idea:** Examine how different visual representations of AI uncertainty and energy information impact trust calibration and planning accuracy, building on research into data visualization for energy feedback and uncertainty communication.
*   **Frameworks:** Integrates feedback visualization, energy planning tasks, trust calibration, and visual communication of uncertainty.
*   **Design:**
    *   **Phase 1 (Baseline):** Assess baseline energy literacy and planning abilities using a task similar to the introductory study described in source or a simple planning task. Measure individual differences like numeracy.
    *   **Phase 2 (Planning with AI Feedback):** Participants complete a complex energy planning task (e.g., allocating energy usage for a simulated household, similar to source). An AI assistant provides feedback or recommendations throughout the task. Manipulate:
        *   **Feedback Format:**
            *   **Text-only:** AI feedback/recommendations provided as text, varying linguistic uncertainty.
            *   **Visualized Uncertainty:** AI feedback/recommendations are paired with visual cues representing the AI's uncertainty (e.g., probability distributions, confidence intervals, color-coding based on confidence score). The visual cues could be based on concepts from Steyvers et al. (2025) regarding what LLMs "know".
            *   **Integrated Energy Visualization:** Feedback integrates visual representations of energy use (e.g., graphs, diagrams of energy flow) alongside recommendations, potentially showing the impact of proposed changes visually.
        *   **Feedback Accuracy:** Some feedback is objectively incorrect or suboptimal for the planning task.
    *   **Measures:** Measure the quality of the final energy plan (feasibility, savings potential), cognitive load during planning, user satisfaction, trust in the AI system, and participant calibration (comparing their confidence in the plan or specific recommendations against objective plan quality/feedback accuracy).
*   **Novelty:** This study combines the manipulation of AI uncertainty communication with different *modalities* (text vs. visual) and integrates it into a more complex, multi-step planning task rather than isolated question-answer trials. It tests whether visual representations of uncertainty, potentially linked to LLM internal states (per Steyvers et al.), can improve trust calibration and facilitate better complex decision-making compared to linguistic cues alone. It also connects AI assistance explicitly to the outcome of creating a plan, linking feedback mechanisms to behavioral goals.

**Alternate Proposal 3: Forcing Critical Evaluation Study**

*   **Core Idea:** Adapt "cognitive forcing functions" (Bucinca et al., 2021) to the energy domain to counteract potential over-reliance on confident but incorrect AI advice, exploring the interaction with user energy literacy and the AI's uncertainty expression.
*   **Frameworks:** Applies cognitive forcing functions to energy decision-making, integrates cognitive biases/heuristics, AI trust/reliance, and energy literacy.
*   **Design:**
    *   **Phase 1 (Baseline):** Assess baseline energy literacy (estimation task, knowledge questions).
    *   **Phase 2 (AI Interaction with Forcing Functions):** Participants receive energy-saving advice from an AI advisor (varying accuracy and linguistic uncertainty as in Gorman proposal). After receiving advice, and *before* making a final decision, participants in experimental conditions are prompted to engage in a cognitive forcing function (CFF). Manipulate:
        *   **AI Accuracy & Uncertainty:** As in Gorman proposal.
        *   **Cognitive Forcing Function (Between-subjects):**
            *   **No CFF (Control):** Standard interaction.
            *   **Explanation CFF:** User must briefly explain *why* the AI's advice might be correct or incorrect.
            *   **Counter-Heuristic CFF:** User is prompted to explicitly consider if they are relying on a common (potentially flawed) energy heuristic (e.g., "Are you assuming this appliance uses little energy because it's small?").
            *   **Knowledge Check CFF:** User must answer a brief, simple factual question related to the domain of the advice (e.g., "Is kWh a measure of energy or power?").
    *   **Measures:** Measure initial/final decision and confidence, trial-specific trust, reliance (change in decision), and appropriate reliance (following correct vs. incorrect advice). Track time spent on each trial to assess cognitive load induced by CFFs. Post-task, assess perceived helpfulness and intrusiveness of the CFFs.
*   **Novelty:** This study directly investigates interventions designed to mitigate potential negative consequences of AI advice (over-reliance on confident errors) in the energy domain. It tests whether different types of CFFs, informed by common energy misperceptions and heuristics, are effective, and how their effectiveness interacts with the AI's presentation (uncertainty) and the user's prior knowledge. This moves the research towards designing AI systems that not only provide advice but also incorporate mechanisms to encourage critical evaluation and prevent inappropriate reliance.

These alternative proposals aim to build upon the strong foundation laid by the "Gorman - AI Energy Study Proposal" by more deeply integrating existing knowledge about energy perception, heuristics, and the complexities of human cognition into the study of human-AI interaction for energy conservation. By focusing on the interaction between user characteristics (like energy literacy and heuristic use), AI communication styles (linguistic uncertainty, visualization, explanation framing), and cognitive interventions (forcing functions), future research can provide more targeted and effective strategies for designing AI systems that truly support, rather than hinder, informed and sustainable energy decision-making.

**References**

Attari, S. Z., DeKay, M. L., Davidson, C. I., & Bruine De Bruin, W. (2010). Perceptions of energy consumption and savings. *Proceedings of the National Academy of Sciences*, *107*(37), 16054-16059.
Bo, A., Chen, S., Jia, T., & Zhang, H. (2024). To Rely or Not to Rely? Evaluating Interventions for Appropriate Reliance on Large Language Models. *Preprint*, University of Toronto.
Bucinca, N., Glikson, E., Bucinca, L., Feng, S., & जूनागम, J. (2021). Trust or to Think: Cognitive Forcing Functions Can Reduce Overreliance on AI in AI-assisted Decision-making.
Chatzigeorgiou, A. I., & Andreou, A. S. (2021). A systematic review on feedback research for residential energy behavior change through mobile and w. *Renewable and Sustainable Energy Reviews*, *145*, 110994.
Cranmer, S., Ramachandran, K., & Moulik, S. (2023). Getting to 30 GW by 2030 Visual preferences of coastal residents for offshore wind farms on the US. *Renewable and Sustainable Energy Reviews*, *179*, 113287.
Delgado, R., & Shealy, T. (2018). Opportunities for greater energy efficiency in government facilities by. *Journal of Sustainability Education*, *20*.
Fischer, C. (2008). Feedback on household electricity consumption: A tool for saving energy. *Energy Efficiency*, *1*(1), 79-104.
Frederiks, E. R., Stenner, K., & Hobman, E. V. (2015). Household energy use: Applying behavioural economics to understand consumer decision-making and beha. *Energies*, *8*(1), 573-609.
Gabe-Thomas, E., Walker, I., & Lomas, K. (2016). Householders’ Mental Models of Domestic Energy Consumption Using a Sort-And-Cluster Method to Ident. *PLOS ONE*, *11*(8), e0160441.
Gerlich, R. (2025). AI Tools in Society Impacts on Cognitive Offloading and the Future of Critical Thinking.
Giudici, F., Salvadori, C., Balint, T., Balint, A., Mincu, M., & Casati, F. (n.d.). Persuasive Conversational Agents to Foster Sustainable Behaviours Design, Evaluation, and Technolog.
Gupta, S., Bodas, M., Popovic, T., & Choudhary, A. (2015). Decision-Making Impacts on Energy Consumption Display Design.
He, T., Jazizadeh, F., & Arpan, L. (2024). Social comparison feedback in decision-making context Environmental externality levels and psycholo. *Journal of Environmental Psychology*, *92*, 102187.
Herrmann, D., Gratch, J., & Wortley, L. (2018). Does data visualization affect users’ understanding of electricity consumption. *Journal of Environmental Psychology*, *56*, 107-116.
Kantenbacher, J., & Attari, S. Z. (2021). Better rules for judging joules: Exploring how experts make decisions about household energy use. *Energy Research & Social Science*, *73*, 101911.
Karlin, B., Zinger, J. F., & Ford, R. (2015). The effects of feedback on energy conservation: A meta-analysis. *Psychological Bulletin*, *141*(6), 1205-1227.
Kim, Y., & Maher, M. L. (2023). The effect of AI-based inspiration on human design ideation. *International Journal of Design Creativity and Innovation*, *11*(2), 135-160.
Lesic, V., de Bruin, W. B., Davis, M. C., Krishnamurti, T., & Azevedo, I. M. L. (2018). Consumers’ perceptions of energy use and energy savings: A literature review. *Environmental Research Letters*, *13*(3), 033004.
Lesic, V., Glasgow, B. P., Krishnamurti, T., de Bruin, W. B., Davis, M. C., & Azevedo, I. M. L. (2019). Comparing consumer perceptions of appliances’ electricity use to appliances’ actual direct-metered c. *Environmental Research Letters*, *14*(2), 024009.
Rakitta, S., & Wernery, J. (2021). Cognitive Biases in Building Energy Decisions copy. *Energy and Buildings*, *249*, 111209.
Sanguinetti, M., & Atzori, M. (2024). Conversational Agents for Energy Awareness and Efficiency: A Survey. *Electronics*, *13*(2), 401.
Santillán, H. E. N., & Cedano, K. C. (2023). Energy Literacy A Systematic Review of the Scientific Literature. *Sustainability*, *15*(18), 13756.
Schille-Hudson, E. B., Margehtis, T., Miniard, D., Landy, D., & Attari, S. Z. (2019). Big, hot, or bright? Integrating cues to perceive home energy use. *Journal of Environmental Psychology*, *66*, 101362.
Sintov, N. D., & Schultz, P. W. (2015). Unlocking the potential of smart grid technologies with behavioral science. *Frontiers in Psychology*, *6*, 977.
Starke, A. (2019). Supporting energy-efficient choices using Rasch-based recommender interfaces.
Starke, A., & Willemsen, M. C. (2024). Psychologically Informed Design of Energy Recommender Systems: Are Nudges Still Effective in Tailore. In *Psychology of Technology: Opportunities and Challenges for Psychological Theory and Practice* (pp. 1-18). Springer International Publishing.
Starke, A., Willemsen, M. C., & Snijders, C. (2020). Beyond “one-size-fits-all” platforms: Applying Campbell's paradigm to test personalized energy advic. *Energy Research & Social Science*, *65*, 101471.
Starke, A., Willemsen, M. C., & Snijders, C. (2021). Using explanations as energy-saving frames: A user-centric recommender study. *International Journal of Human-Computer Studies*, *154*, 102661.
Steyvers et al. (2025). What large language models know and what people think they know.
Van Den Broek, K. L., & Walker, I. (2019). Heuristics in energy judgement tasks. *Journal of Environmental Psychology*, *62*, 95-104.
Wolske, K. S., & Stern, P. C. (2018). Contributions of psychology to limiting climate change: Opportunities through consumer behavior. *Annual Review of Environment and Resources*, *43*, 31-58.
Excerpts from "AI_Energy_Study_Ideas".
Excerpts from "Abrahamse et al_2005_A review of intervention studies aimed at household energy conservation.md".
Excerpts from "Attari - 2021 - Transforming energy use.pdf".
Excerpts from "Attari et al. - 2016 - Energy conservation goals What people adopt, what they recommend, and why.pdf".
Excerpts from "Attari_Rajagopal_2015_Enabling energy conservation_decision_aid.md".
Excerpts from "Bird and Legault - 2018 - Feedback and Behavioral Intervention in Residential Energy and Resource Use a Review.pdf".
Excerpts from "Canfield et al_2017_Perceptions of electricity-use communications.md".
Excerpts from "Carrus et al. - 2021 - Psychological Predictors of Energy Saving Behavior A Meta-Analytic Approach.md".
Excerpts from "Gorman - AI Energy Study Proposal".
Excerpts from "pd2.md".





Drawing on established principles in cognitive psychology and human-computer interaction, the "Gorman - AI Energy Study Proposal" outlines a methodologically rigorous approach to investigating the intricate dynamics of human reliance and trust in artificial intelligence within the domain of household energy management. The study is designed to explore how the presentation of information, specifically the linguistic expression of uncertainty by an AI energy advisor, influences user perceptions, decision-making, and ultimately, the calibration of trust. This aligns with cognitive science research into how humans process complex information, form mental models of systems, and integrate feedback to guide behavior. Understanding these processes is crucial for designing effective AI systems that support, rather than hinder, optimal decision-making in critical areas such as energy conservation.

The proposed study delves into theoretical issues fundamental to cognitive science, including the role of mental models in understanding complex systems like energy consumption, the impact of feedback mechanisms on learning and decision-making, and the influence of individual differences on information processing and behavior. By examining how users respond to AI advice presented with varying degrees of linguistic uncertainty, the research seeks to contribute to the growing body of knowledge on trust calibration in human-AI collaboration.

To elucidate the structural and conceptual underpinnings of this proposal, we can represent key aspects using ASCII diagrams. These diagrams serve as cognitive aids, providing a simplified visual representation of the study's design, hypothesized relationships, and measurement approach, akin to how diagrams and visualizations are employed in research to convey complex information structures.

### Diagram 1: Overall Study Flow

The study follows a sequential design, progressing through distinct phases to collect baseline data before introducing the core experimental manipulation and measuring subsequent outcomes. This structure is critical for establishing pre-existing individual differences and knowledge levels independently of the AI interaction, thereby mitigating potential confounding effects.

```ascii
                  +-----------------------------------+
                  | START                             |
                  | Study Onboarding & Instructions     |
                  +-----------------------------------+
                                    |
                                    v
                  +-----------------------------------+
                  | PHASE 1: BASELINE ASSESSMENTS     |
                  | (Pre-Task Survey Battery)         |
                  |-----------------------------------|
                  | - Individual Differences Measures |
                  |   (Trust Propensity, AI Literacy, |
                  |    Numeracy, AI Familiarity)      |
                  | - Energy Knowledge & Perception   |
                  |   (Objective Knowledge, Subjective|
                  |    Perception, Estimation Task)   |
                  +-----------------------------------+
                                    |
                                    v
                  +-----------------------------------+
                  | PHASE 2: AI INTERACTION TASK      |
                  | (Core Task - 4 Trials)            |
                  |-----------------------------------|
                  | For each Trial (Scenario):        |
                  | - Present Scenario & AI Response  |
                  |   (Estimate, Explanation)         |
                  |   -> Linguistic Uncertainty Manip.|
                  | - Participant Evaluation          |
                  |   (Confidence, Likely Action,     |
                  |    Trust Rating for Scenario)     |
                  +-----------------------------------+
                                    |
                                    v
                  +-----------------------------------+
                  | POST-TASK QUESTIONNAIRES          |
                  | (Overall Perceptions & Reflection)|
                  |-----------------------------------|
                  | - Overall Trust in AI System      |
                  | - Understanding of LLM Caps/Lims  |
                  | - Self-Reflection on Trust Use    |
                  | - Perceived Overall Accuracy      |
                  | - Likelihood of Future Use/Relianc|
                  | - Mental Model of AI              |
                  +-----------------------------------+
                                    |
                                    v
                  +-----------------------------------+
                  | END                               |
                  +-----------------------------------+
```

This diagram visually maps the progression of the experiment. Phase 1 is dedicated to capturing stable individual characteristics and domain-specific knowledge *before* participants are exposed to the experimental manipulation. This ensures that baseline cognitive factors and prior understanding are measured without being influenced by the AI interaction itself. Phase 2 introduces the core task where participants interact with the AI under different experimental conditions (the linguistic uncertainty manipulation occurs here within the AI's responses). Data collected in this phase captures immediate responses to the AI's advice for specific scenarios. Finally, post-task questionnaires gather overarching perceptions and reflections, providing a more holistic view of the user's experience and evaluation of the AI system. This phased approach aligns with experimental design principles aimed at isolating the effects of the independent variable while accounting for potential moderating factors.

### Diagram 2: Conceptual Model – Manipulation to Outcomes

This diagram illustrates the hypothesized relationships between the primary independent variable (Linguistic Uncertainty) and the key outcome variables (Reliance, Trust, Calibration), highlighting the expected moderating role of individual differences. This framework allows researchers to test specific hypotheses about how variations in AI communication style affect user engagement and evaluation.

```ascii
+-----------------------+
| Independent Variable  |
| Linguistic Uncertainty |
| (Hedging vs. Confident)|
| in AI Output          |
+-----------------------+
          |
          | (Influence on User Processing
          |  of AI Advice)
          v
+-----------------------+    MODERATED BY
| User's Processing &   | <-------------+-----------------------+
| Evaluation of AI      |               | Individual Differences  |
| Advice & Explanation  |               | (Energy Knowledge/Lit.,|
+-----------------------+               | Trust Propensity,     |
          |                               | Numeracy, AI Literacy) |
          |                               +-----------------------+
          | (Leads to Outcomes related
          |  to Engagement & Evaluation)
          +----------------------------> +-----------------------+
          |                              | Reliance on AI Advice |
          |                              | (e.g., Agreement Rate,|
          |                              |  Appropriate Reliance)|
          |                              +-----------------------+
          |
          +----------------------------> +-----------------------+
          |                              | Subjective Trust in AI|
          |                              | (Perceived Dependability|
          |                              |  Reliability)         |
          +----------------------------> +-----------------------+
                                         | Confidence in AI Rec. |
                                         | & Final Decisions     |
                                         +-----------------------+
                                                |
                                                v
                                         +-----------------------+
                                         | Calibration           |
                                         | (Alignment of Confidence|
                                         |  with Objective Accuracy)|
                                         +-----------------------+
```

This conceptual model posits that the way an AI expresses uncertainty directly impacts how users process its advice. Hedged language ("It seems this might save...") versus confident language ("This will definitely save...") is hypothesized to alter user perceptions of the AI's competence and the reliability of its information. This influence is not expected to be universal; rather, it is anticipated to be moderated by individual differences. For instance, individuals with higher energy literacy might process uncertain advice differently than those with lower literacy, potentially relying more on their own knowledge or being more critical of the AI's limitations. Similarly, someone with high trust propensity might be less sensitive to hedging than someone who is generally skeptical of technology. The model then links this processing to key outcomes: reliance on the advice for decision-making, subjective feelings of trust in the AI, and confidence in the information provided. A critical outcome measure is calibration, which assesses the alignment between a user's confidence in the AI's advice (or their subsequent decision) and the *actual* accuracy of that advice or decision. Well-calibrated trust is a hallmark of effective human-AI teams, where individuals appropriately rely on the AI when it is competent and override it when it is not. This aligns with research on human-AI collaboration which emphasizes the importance of mutual understanding and appropriate reliance.

### Diagram 3: Focus on Measurement and Key Relationships

This diagram focuses on the specific measures collected in Phase 1 and highlights their predicted relationships with the primary outcome variables in Phase 2 and the post-task phase. It emphasizes how individual cognitive factors and baseline knowledge serve as predictors or moderators of user interaction with the AI.

```ascii
+-------------------------------------+
| PHASE 1: BASELINE MEASURES          |
+-------------------------------------+
| - Objective Energy Knowledge/Lit.   |
|   (e.g., Estimation Accuracy)       |
|-------------------------------------|
| - Subjective Energy Knowledge/Perc. |
|-------------------------------------|
| - Numeracy                          |
|-------------------------------------|
| - Trust Propensity (General Tech)   |
|-------------------------------------|
| - AI Literacy (Knowledge of AI     |
|   Capabilities/Limitations)       |
+-------------------------------------+
          |
          | (Predicted Influence as Predictors
          |  or Moderators on AI Interaction Outcomes)
          +---------------------------------------------------+
          |                                                   |
          v                                                   v
+-------------------------------------+           +-------------------------------------+
| PHASE 2 / POST-TASK OUTCOMES        |           | PHASE 2 / POST-TASK OUTCOMES        |
| (Influenced by Baseline & AI Manip.)|           | (Influenced by Baseline & AI Manip.)|
+-------------------------------------+           +-------------------------------------+
| - Reliance on AI (Agreement, Action)| | - Subjective Trust (Overall)        |
|-------------------------------------|           |-------------------------------------|
| - Calibration (Confidence-Accuracy) | | - Mental Model of AI                |
+-------------------------------------+           |-------------------------------------|
                                                | - Perceived AI Accuracy             |
                                                +-------------------------------------+
```

This diagram underscores the role of baseline measures collected in Phase 1. Objective energy knowledge, for example, measured through estimation tasks and factual questions, provides an indicator of the user's pre-existing cognitive structure regarding energy consumption – their mental model of the domain. The accuracy of these initial estimations is hypothesized to predict how well a user can calibrate their trust in the AI's estimates. Similarly, individual differences in trust propensity and AI literacy are measured to understand how general attitudes and prior experience influence interaction with the AI. These baseline factors are not merely descriptive; they are theorized to interact with the AI's linguistic style to shape crucial outcomes like reliance, subjective trust, and calibration. The diagram highlights that metrics like reliance and calibration are central to understanding the effectiveness of the human-AI collaboration in this task, while measures like overall subjective trust and mental model of the AI provide insight into the user's psychological relationship with the system. The deliberate separation of baseline measurement from the interaction phase is a key methodological consideration to ensure the integrity of these variables as true predictors or moderators.

In summary, these diagrams provide a structured overview of the "Gorman - AI Energy Study Proposal". They depict the logical flow of the experiment, the hypothesized causal relationships between the AI's communication style and user outcomes (mediated by individual differences), and the critical measures employed to capture these complex interactions. By rigorously investigating these facets of human-AI interaction in the context of energy decision-making, the study stands to contribute valuable insights into designing AI systems that not only provide information but also foster appropriate and effective human reliance and trust. This research aligns with the broader cognitive psychology goal of understanding human interaction with complex systems, particularly in increasingly prevalent distributed cognitive environments involving artificial agents.








Drawing upon established principles within cognitive psychology and the burgeoning field of human-AI interaction, the Gorman - AI Energy Study Proposal presents a compelling research design aimed at elucidating the dynamics of trust calibration in the context of an LLM-based energy advisor. This inquiry builds upon and contributes to several distinct, yet interconnected, research streams, allowing for a nuanced examination of how users process and respond to AI-generated advice in a practical decision-making scenario. Evaluating the study's connection to existing literature can be facilitated by visualizing its core components and their relationships within broader theoretical landscapes.

### Framework Connections: Visualizing the Gorman Study

To articulate the study's position within the existing body of knowledge, we can delineate its key relationships using ASCII diagrams. These diagrams serve as graphical representations of the proposed relationships and how they align with concepts explored in the provided sources.

#### Diagram 1: The Core Human-AI Interaction Model

The fundamental structure of the Gorman study investigates the impact of a specific characteristic of AI output—linguistic uncertainty—on user perceptions and behaviors, mediated by internal cognitive factors. This aligns with a general model of human-AI interaction where AI input is processed by the user, leading to specific outcomes.

```ascii
+---------------------+     +----------------------+     +-------------------------+
| AI Advice Output    | --> | User Cognitive       | --> | User Outcomes           |
| - Value, Explanation|     | Processing & State   |     | - Reliance on AI        |
| - Linguistic Uncert|     | - Individual Diffs   |     | - Subjective Trust/Conf |
|          |     |   (Energy Lit, AI Lit,|     | - Trust Calibration     |
+---------------------+     |    Numeracy, Trust P)|     |              |
                            | - Mental Model of AI |     | (Aligned trust w/ accur) |
                            |      |     +-------------------------+
                            +----------------------+
                                       |
                                       |
                                       +---------------------------+
                                        Interaction during Task Phase
                                          

             ^
             |
             |
  +------------------------------------------------------------+
  | Broader Research Context:                                  |
  | - Human-AI Interaction / Collaboration                     |
  |   * Exploring factors influencing collaboration intent     |
  |   * Studying human-AI teams and convergence                |
  | - Trust in AI Systems / LLM-based Planners                 |
  | - AI Advisors / Conversational Agents                      |
  +------------------------------------------------------------+
```

As illustrated in Diagram 1, the study positions the AI's output, characterized by linguistic uncertainty, as the primary independent variable. This output is received and processed by the human user, whose cognitive state is influenced by pre-existing individual differences such as energy literacy, AI literacy, numeracy, and propensity to trust technology. The user also develops a mental model of the AI advisor, which likely interacts with these individual differences and the AI's communication style to shape outcomes. The key outcomes measured are user reliance on the AI, their subjective trust and confidence in its recommendations, and the critical concept of trust calibration—the alignment between the user's confidence and the AI's objective accuracy. This entire process unfolds during an interactive task phase. This fundamental structure resonates with established lines of inquiry in human-AI interaction, which explore collaborative dynamics, factors driving collaboration intent, trust in AI systems, and the utility of AI advisors or conversational agents in specific domains. The concept of convergence with AI advice, explored in studies on human-AI teams, also aligns with the measure of user reliance.

#### Diagram 2: Individual Differences as Moderators

A significant contribution of the Gorman study lies in its examination of how individual user characteristics moderate the relationship between AI advice and user behavior and perception. This multilevel perspective is crucial in understanding the complex interplay at the human-AI interface.

```ascii
                   +---------------------+
                   | AI Advice Output    |
                   | - Linguistic Uncert|
                   |               |
                   +---------------------+
                             |
                             | (Effect on User Outcomes)
        +---------------------------------+
        |         MODERATED BY            | <--- Individual Differences influence the
        | +-----------------------------+ |      strength/nature of this effect.
        | | Individual Differences:     | |
        | | - Energy Literacy           | |
        | | - AI Literacy               | |
        | | - Numeracy                  | |
        | | - Trust Propensity          | |
        | +-----------------------------+ |
        +---------------------------------+
                             |
                             |
                   +-------------------------+
                   | User Outcomes           |
                   | - Reliance              |
                   | - Trust Calibration     |
                   +-------------------------+

             ^
             |
             |
  +-----------------------------------------------------------------+
  | Related Theoretical Concepts & Measurement:                   |
  | - Information Processing & Cognitive Theories                 |
  |   * How individuals process and integrate information          |
  |   * Impact of presentation formats on cognitive processing   |
  | - Path Models / Structural Equation Modeling (for analysis)   |
  | - Measurement of AI literacy dimensions                       |
  | - Measurement of energy literacy/knowledge (objective/subjective)|
  +-----------------------------------------------------------------+
```

Diagram 2 emphasizes the moderating role of individual differences. The effect of how the AI communicates uncertainty on user reliance and trust calibration is not expected to be uniform across all individuals. For instance, someone with high energy literacy might be better equipped to critically evaluate the AI's advice regardless of its linguistic framing, while someone with low AI literacy might rely more heavily on surface cues like perceived confidence. This aspect of the study connects deeply with cognitive theories regarding individual differences in information processing and how background knowledge (like energy literacy or numeracy) impacts the interpretation of information. Research on energy literacy specifically identifies its potential influence on energy-related outcomes. Similarly, work on AI literacy explores different dimensions of understanding AI and its implications. Methodologically, studies investigating such relationships often employ path models or structural equation modeling to evaluate the direct and indirect effects, as seen in research on energy-saving attitudes and knowledge or AI literacy and self-efficacy.

#### Diagram 3: Situated within the Energy Domain Context

Placing the study within its specific application domain—household energy decision-making—highlights its relevance to research on technology acceptance and user support in the energy sector.

```ascii
+---------------------+     +-------------------------+     +-------------------------+
| Energy Decision Task| --> | LLM-based AI Advisor    | --> | User Interaction &      |
| (Household Context) |     | (Provides Estimates,    |     | Perception              |
|     |     | Explanations, Uncert.)  |     | - Confidence in AI      |
+---------------------+     |              |     | - Trust Ratings         |
                            +-------------------------+     | - Action (Accept/Verify)|
                                       |                    |                   |
                                       |                    +-------------------------+
                          +-----------------------------------------------------------------+
                          | Connects to Application-Specific Research:                      |
                          | - Energy Feedback Systems & Strategies                          |
                          |   * Investigating effectiveness of different strategies         |
                          |   * Examining digital platforms for feedback                    |
                          | - Digital Twins (Energy)                                        |
                          |   * Empowering humans through natural language interaction    |
                          | - Conversational Agents for Energy Awareness and Efficiency   |
                          |   * Exploring potential for engagement through dialogue       |
                          | - Information Presentation Formats (Energy Use Communications)|
                          +-----------------------------------------------------------------+
```

Diagram 3 illustrates the specific context of the Gorman study, an LLM-based AI advisor assisting with energy-related decisions. This directly engages with the growing body of research on using AI and conversational agents in the energy domain to influence user behavior and support decision-making. The AI advisor can be seen as a form of digital feedback or information delivery system, akin to those studied in energy feedback research which examines various strategies and digital platforms. The concept of digital twins in the energy sector is also relevant, particularly when coupled with AI to empower humans through natural language interaction regarding system aspects. The study's focus on how information is presented (via explanation and linguistic uncertainty) also links to research on information presentation formats in energy-use communications. The outcome measures, such as confidence ratings and intended actions (accept/verify/reject), capture user responses that are directly relevant to evaluating the utility and acceptance of such energy-focused AI tools.

### Philosophical Underpinnings

The Gorman study, through its focus on user trust and calibration, implicitly engages with philosophical questions regarding the nature of human-AI collaboration and agency. By examining *calibrated trust*, the research seeks to understand how users can develop a balanced reliance on AI systems—neither blindly trusting nor completely dismissing their outputs. This goal reflects a desire for effective *co-creation* or collaboration, where the human leverages the AI's capabilities appropriately.

Furthermore, the investigation into individual differences touches upon the diverse cognitive architectures and prior experiences that humans bring to bear when interacting with artificial intelligence. This acknowledges that the "user" is not a monolithic entity, but rather an individual whose background knowledge (e.g., energy literacy) and psychological predispositions (e.g., trust propensity) shape their interaction experience and outcomes. This perspective aligns with cognitive psychology's emphasis on individual variability in information processing and decision-making.

In summary, the Gorman - AI Energy Study Proposal is well-situated within the existing landscape of human-AI interaction and energy research. By rigorously investigating the impact of linguistic uncertainty on trust calibration, while accounting for critical individual differences, the study promises to provide valuable insights into the design and implementation of trustworthy AI advisors in practical, ecologically relevant domains like household energy management.



--------






# https://notebooklm.google.com/notebook/e2db05b8-b367-4198-8530-7e75709e6277?pli=1

### Diagram 4: Connecting AI Linguistic Uncertainty to Communication and Trust Literature

This diagram links the core independent variable of the Gorman study—AI linguistic uncertainty—to broader research areas concerning communication characteristics, their impact on trust and perception, and the challenge of appropriate reliance in human-AI systems.

```ascii
+-----------------------------------+
| Gorman Study: IV                  |
| AI Linguistic Uncertainty          |
| (Hedging vs. Confident Language)  |
+-----------------------------------+
              |
              | Impacts Communication Style
              v
+-----------------------------------+
| Literature: Communication         |
| Characteristics & Perception      |
| (e.g., Source Credibility,        |
| Information Framing, Tone)        | (Canfield et al., 2017)
+-----------------------------------+
              |
              | Influence on User Appraisal
              v
+-----------------------------------+
| Literature: Trust in AI / Systems |
| (Conceptualization, Antecedents,  |
| Subjective vs. Objective Trust)   | (Ng & Zhang, 2025),
|                                   | (Bach et al., 2024),
|                                   | (Sun, 2023),
|                                   | (Diebel et al., 2025)
+-----------------------------------+
              |
              | Leads to (Gorman DVs)
              v
+-----------------------------------+
| Gorman Study: DVs                 |
| - Reliance on AI Advice           |
| - Subjective Trust & Confidence   |
| - Calibration                     |
+-----------------------------------+

```

**Explanation:** This diagram illustrates how the experimental manipulation in the Gorman study—the AI's linguistic expression of uncertainty—fits within a larger body of literature. The way an AI communicates, including its use of hedging or confident language, falls under the umbrella of communication characteristics studied in fields like HCI and communication science. This includes research on how the framing of information or characteristics of the source (in this case, the AI) influence user perception. This perception, in turn, is a key factor influencing user trust in technology and AI systems. The literature on trust in AI is extensive, covering various conceptualizations (e.g., user behavior, machine attributes, context) and antecedents. The Gorman study specifically examines subjective trust and confidence, along with the behavioral outcome of reliance. A critical element, calibration, refers to aligning subjective confidence/trust with the AI's objective accuracy, a concept central to ensuring appropriate use of AI advice. By manipulating linguistic uncertainty, the Gorman study directly probes how a specific communication feature affects these well-established trust and reliance dynamics, seeking to contribute to the understanding of how to design AI communication to foster calibrated trust (cf. Casolin et al., 2024; Niraula et al., 2025).

### Diagram 5: Grounding Individual Differences and Knowledge in Cognitive & Psychological Theory

This diagram connects the moderating variables identified in the Gorman study—various individual differences and knowledge measures—to their theoretical underpinnings in cognitive psychology and related fields, emphasizing their role in information processing, decision-making, and human variability.

```ascii
+-------------------------------------+
| Gorman Study: Moderating Variables  |
| Individual Differences & Baseline   |
| Knowledge                           |
|-------------------------------------|
| - Trust Propensity (General, AI)    | (Scholz et al., 2025)
| - AI Literacy                       | (Almatrafi et al., 2024)
| - Numeracy                          |
| - Energy Knowledge/Literacy (Factual| (Canfield et al., 2017),
|   & Perceived, Est. Accuracy)     | (Van Den Broek et al., 2025)
+-------------------------------------+
                 |
                 | Influence via
                 v
+-------------------------------------+
| Literature: Cognitive Processes     |
| & Individual Factors                |
|-------------------------------------|
| - Information Processing Capacity   | (Bittner et al., 2024),
|   (e.g., Cognitive Load Theory)     | (Farrell & Lewandowsky, 2018)
| - Knowledge Representation & Mental | (Van Den Broek et al., 2025),
|   Models                            | (Liang & Banks, 2025),
|                                     | (Fernandez et al., 2017)
| - Decision Making Under Uncertainty | (Kvam et al., 2024),
|                                     | (Callaway et al., n.d.)
| - Learning & Adaptation             | (Collins et al., 2025)
| - Dispositional Traits/Attitudes    | (Scholz et al., 2025),
|                                     | (Litvinova et al., 2024)
| - Expertise Effects                 | (Canfield et al., 2017),
|                                     | (Niraula et al., 2025)
+-------------------------------------+
                 |
                 | Moderates IV-DV Relationship
                 v
+-------------------------------------+
| Gorman Study: IV -> DVs effects     |
| (e.g., Uncertainty -> Reliance)     |
+-------------------------------------+

```

**Explanation:** Cognitive science emphasizes that interactions with information, whether from other humans or AI, are filtered through an individual's pre-existing cognitive architecture and characteristics. The Gorman study explicitly measures several such factors: general propensity to trust, AI-specific trust propensity, AI literacy (familiarity, understanding of limitations), numeracy, and energy-domain knowledge/literacy. These variables are grounded in a wealth of psychological literature. Trust propensity is a well-studied dispositional trait influencing how individuals approach new trustees, including automated systems. AI literacy reflects an individual's understanding of AI capabilities and limitations, crucial for effective human-AI collaboration. Numeracy impacts the ability to process quantitative information and uncertainty. Domain-specific knowledge, such as energy literacy, influences how individuals understand information within that domain and their ability to evaluate external advice.

These individual differences impact core cognitive processes relevant to the study. Information processing capacity can be affected by cognitive load (Sweller et al., 2011, cited in Bittner et al., 2024), potentially altering how linguistic nuances are perceived. Pre-existing mental models of the energy domain (Van Den Broek et al., 2025) and of the AI itself (Liang & Banks, 2025) shape how the AI's advice is interpreted and integrated. Decision-making under uncertainty is a core area of cognitive modeling, and factors like numeracy and domain knowledge are known to influence these processes. By including these moderators, the Gorman study aligns with the cognitive science principle that individual variability significantly impacts responses to stimuli and interventions (cf. Canfield et al., 2017; Niraula et al., 2025), aiming to understand not just *if* uncertainty communication matters, but *for whom* and *why*.

### Diagram 6: Situating the Experimental Task within Applied Cognitive Science Methodologies

This diagram connects the specific experimental task design of the Gorman study—using energy-related scenarios and an AI advisor—to methodologies and applications common in applied cognitive science, particularly those involving simulation, scenario-based evaluation, and the use of computational agents.

```ascii
+-----------------------------------+
| Gorman Study: Experimental Task   |
| AI Energy Advisor Interaction     |
| (Scenario-based evaluation)       |
+-----------------------------------+
              |
              | Employs Methodologies/Concepts from
              v
+-----------------------------------+
| Literature: Applied Cognitive Sci |
| & Human-AI Interaction Methods    |
|-----------------------------------|
| - Scenario-Based Experiments      | (Niraula et al., 2025),
|   / Vignette Studies              | (Diebel et al., 2025)
| - Simulation Environments         | (Fernandez et al., 2017),
|                                   | (He et al., 2025),
|                                   | (Guo et al., 2024)
| - Evaluation of AI Agents         | (Mei et al., 2024),
|   (e.g., Turing-style tests,      | (Chen et al., 2025),
|   Performance metrics)            | (Aceves & Evans, 2024)
| - Task Design for Cognitive Study | (Farrell & Lewandowsky, 2018),
|   (e.g., Decision Tasks,          | (Canfield et al., 2017)
|   Estimation Tasks)               | (Brounen et al., 2013)
| - Assessment of Domain Knowledge  | (Canfield et al., 2017),
|   (e.g., Quizzes, Estimation)     | (Van Den Broek et al., 2025),
|                                   | (Brounen et al., 2013)
+-----------------------------------+
              |
              | Contributes Findings to
              v
+-----------------------------------+
| Literature: Human-AI Teaming      |
| & Collaborative Performance       | (Myers et al., 2024),
|                                   | (He et al., 2025)
| (Specific to Energy Domain)       | (Starke et al., 2020),
|                                   | (Brandsma & Blasch, 2019)
+-----------------------------------+

```

**Explanation:** The Gorman study utilizes a scenario-based experimental task where participants interact with an AI advisor providing energy-related advice. This methodological approach is a common and effective tool in cognitive science and HCI for studying human behavior in controlled, simulated environments. Scenario or vignette studies are frequently used to evaluate responses to different AI behaviors or information presentations. The use of an AI agent as a participant or tool within an experiment is also increasingly common, with research focusing on evaluating their performance against human benchmarks or studying human interaction with them. The specific task elements, such as presenting prompts, estimates, and explanations, are analogous to tasks designed to study human decision-making, estimation accuracy, and information processing. The pre-task assessment of energy knowledge through quizzes and estimation tasks aligns with methodologies used to measure domain-specific literacy and its impact on behavior. By employing these established methods within the context of human-AI energy advising, the Gorman study directly contributes to the growing literature on human-AI teaming and collaborative performance. Furthermore, by focusing on the energy domain, it builds upon existing work examining how information and feedback influence energy-saving behaviors.

In summary, the Gorman - AI Energy Study Proposal is deeply embedded within established research paradigms in cognitive science, HCI, and social science. Its investigation of linguistic uncertainty connects to literature on communication and trust formation in AI. Its focus on individual differences draws upon decades of psychological research into human variability and cognitive processes. Finally, its experimental design leverages standard methodologies for evaluating human interaction with technology and assessing domain-specific knowledge. These diagrams illustrate how the proposed research questions, variables, and methods are informed by, and aim to contribute to, these interconnected bodies of work.





--------

# https://notebooklm.google.com/notebook/b9b3533c-ddc0-49e3-b438-9e1f05272f9e?pli=1

Drawing upon the provided sources and adopting the persona of an expert in cognitive psychology, this analysis critiques the proposed Gorman - AI Energy Study and situates it within the existing body of literature concerning human-AI interaction, decision-making, and energy conservation. The study design, which examines the impact of linguistic uncertainty in AI energy advice on user reliance, trust, calibration, and the moderating role of individual differences, aligns well with several established lines of research.

To illustrate these connections, three ASCII diagrams are provided, mapping key components of the Gorman study to relevant frameworks and prior empirical work found within the source material. These diagrams utilize a simplified representation of information flow and relationships, employing standard ASCII characters for structure.

```ascii
+-------------------------------------+
| Gorman Study: Individual Factors    |
| Moderators of AI Advice Impact      |
|-------------------------------------|
| - Trust Propensity (General, AI)    | (Gerlich, 2025;
| - AI Literacy                       | Chen et al., 2025)
| - Numeracy                          | (Sobkow et al., 2025)
| - Energy Knowledge/Literacy (Factual| (Canfield et al., 2017;
|   & Perceived, Est. Accuracy)     | Frederick et al., 2011)
+-------------------------------------+
                 |
                 | Influence via
                 v
+-------------------------------------+
| Literature: Cognitive Processing    |
| & Individual Differences in D.M.    |
|-------------------------------------|
| - Information Processing Capacity   | (Implied by bounded rationality,
|   (e.g., Cognitive Load Theory)     | Kahneman, 2003; Sweller, 1988)
| - Knowledge Representation & Mental | (Van Den Broek et al., 2025;
|   Models of Systems/Domains         | Huang & Cakmak, 2015;
|                                     | Rakitta & Wernery, 2021)
| - Expertise Effects                 | (Canfield et al., 2017)
| - General Trust & Specific Reliance | (Gerlich, 2025; Rebholz et al., 2024;
|   Dynamics                          | Chen et al., 2025; He et al., 2025)
+-------------------------------------+

```

**Diagram 1 Explanation:** This diagram highlights the role of individual differences, conceptualized as moderating variables in the Gorman study, and connects them to relevant cognitive psychology literature on information processing and judgment. The Gorman proposal explicitly includes measures of general and AI-specific trust propensity, AI literacy, numeracy, and various facets of energy knowledge. These individual factors are hypothesized to influence how users interact with and respond to the AI energy advisor, particularly in the context of linguistic uncertainty.

The connection to cognitive processing literature is evident. An individual's capacity to process information, a core concept in cognitive load theory (Sweller, 1988), can impact their ability to understand complex energy information or AI explanations. Users with higher numeracy, for example, are documented to exhibit more accurate application of decision rules and greater resistance to framing effects (Sobkow et al., 2025), skills potentially crucial for evaluating quantitative energy advice. Energy literacy, encompassing both factual knowledge and perceived understanding, has been shown to correlate with more accurate planning and perceptions of energy use (Canfield et al., 2017; Frederick et al., 2011). This suggests that prior domain knowledge shapes how new information, such as AI advice, is integrated and evaluated. Mental models, which represent an individual's understanding of how a system works (Van Den Broek et al., 2025; Huang & Cakmak, 2015), are also influenced by existing knowledge and can determine how users interpret AI behavior and explanations. Furthermore, a user's general propensity to trust technology or AI (Gerlich, 2025) forms a baseline that interacts with system-specific factors (like linguistic uncertainty) to determine reliance and trust calibration (Rebholz et al., 2024; Chen et al., 2025; He et al., 2025). Expertise, a related concept to knowledge and literacy, is known to affect how individuals process domain-specific information and make decisions (Canfield et al., 2017). Thus, examining these individual differences allows the Gorman study to explore how stable cognitive characteristics and knowledge levels interact with dynamic AI interaction factors.

```ascii
+-------------------------------------+
| Gorman Study: Core Interaction      |
| AI Energy Advisor & Uncertainty     |
|-------------------------------------|
| - AI Provides Energy Advice         | (Giudici et al., 2021;
|   with Explanation & Value          | Michelon et al., 2025;
|                                     | Sanguinetti & Atzori, 2024)
| - Linguistic Uncertainty (Hedging   | (Gorman Study Proposal)
|   vs. Confidence) Manipulated       |
+-------------------------------------+
                 |
                 | Influences perceived
                 v
+-------------------------------------+
| Literature: Information Framing,    |
| Communication & Cognitive Biases    |
|-------------------------------------|
| - Framing Effects                   | (Tversky & Kahneman, 1981;
|   (Presentation Format Matters)     | Starke, 2019;
|                                     | Shealy et al., 2016)
| - Communication of Risk/Uncertainty | (Lipkus, 2007; Peters, Hart,
|                                     | & Fraenkel, 2011;
|                                     | Rebholz et al., 2024)
| - Heuristics & Biases in Judgment   | (Tversky & Kahneman, 1974;
|   (e.g., Anchoring, Availability)   | Rakitta & Wernery, 2021;
|                                     | Van Den Broek & Walker, 2019)
+-------------------------------------+

```

**Diagram 2 Explanation:** This diagram illustrates the central experimental manipulation in the Gorman study: the linguistic expression of uncertainty in the AI's advice. The study examines how presenting the same energy-related information with varying degrees of expressed confidence or hedging influences user responses. This directly relates to psychological research on information framing, communication, and cognitive biases.

The way information is presented, or "framed," is well-established to influence judgment and decision-making (Tversky & Kahneman, 1981). Starke (2019) and Shealy et al. (2016) provide examples of how framing is used to promote energy-efficient choices. Presenting energy consumption in different units (e.g., kWh, percentage, monetary cost) impacts planning accuracy (Canfield et al., 2017). The Gorman study extends this by exploring linguistic framing, specifically regarding uncertainty. Research on communicating risk and uncertainty (Lipkus, 2007; Peters, Hart, & Fraenkel, 2011) is highly relevant, as it investigates how people understand and react to probabilistic or uncertain information. The AI's explanation and the linguistic style used to convey the estimate's certainty act as a form of communication framing. Users rely on heuristics, or mental shortcuts, when making judgments, especially under uncertainty (Tversky & Kahneman, 1974; Rakitta & Wernery, 2021; Van Den Broek & Walker, 2019). Linguistic cues about confidence or uncertainty could trigger different heuristics or interact with existing biases (e.g., anchoring to a confidently stated value). The study's focus on how linguistic style impacts the evaluation of advice connects to work on conversational user interfaces and how explanations influence advice taking (Rebholz et al., 2024). Thus, manipulating linguistic uncertainty allows the Gorman study to probe how subtle aspects of AI communication interact with fundamental cognitive processes related to information evaluation and judgment formation.

```ascii
+-------------------------------------+
| Gorman Study: Outcomes & Calibration|
| User Responses to AI Advice         |
|-------------------------------------|
| - Confidence in AI Estimate         | (Gorman Study Proposal)
| - Likelihood of Action (Accept,     | (Rebholz et al., 2024)
|   Verify, Reject Advice)          |
| - Trust in AI Response/System       | (Gerlich, 2025; Chen et al., 2025)
| - Calibration (Confidence vs.       | (Gorman Study Proposal)
|   Objective Accuracy)               |
| - Likelihood of Future Reliance     | (Gorman Study Proposal)
+-------------------------------------+
                 |
                 | Related to and Predicts
                 v
+-------------------------------------+
| Literature: Trust, Reliance,        |
| Decision Making & Behavior Change   |
|-------------------------------------|
| - Trust Calibration Models          | (Rebholz et al., 2024;
|   (Alignment of Trust and Reliance) | Chen et al., 2025; He et al., 2025)
| - Advice Taking & Reliance Dynamics | (Rebholz et al., 2024)
| - Decision Making Under Uncertainty | (Kahneman, 2003)
| - Relationship between Intentions,  | (Carrus et al., 2021)
|   Attitudes & Behavior              |
| - Factors Influencing Energy        | (Karlin et al., 2015;
|   Conservation Behavior             | Rakitta & Wernery, 2021)
+-------------------------------------+

```

**Diagram 3 Explanation:** This diagram focuses on the primary outcome variables measured in the Gorman study: user confidence, intended action (reliance), subjective trust, calibration, and likelihood of future use. These outcomes are directly related to psychological research on trust, reliance on decision aids, and the factors that influence behavior change, particularly in the context of energy conservation.

A central theme in the Gorman study is trust calibration, which refers to the alignment between a user's trust or confidence in an AI system and the system's actual capabilities or accuracy (Rebholz et al., 2024; Chen et al., 2025; He et al., 2025). The study aims to see if linguistic uncertainty improves calibration, meaning users might be less confident and reliant when the AI expresses uncertainty, ideally in situations where the AI is less likely to be accurate. This directly builds on models of trust and reliance in automation and decision support systems (van Dongen & van Maanen, 2013). The measure of likelihood of action (accept, verify, reject) is a behavioral indicator of reliance, a key component of trust calibration (Rebholz et al., 2024). Subjective trust measures capture the user's feeling towards the AI's dependability and reliability (Gerlich, 2025; Chen et al., 2025). Ultimately, the goal is to understand how AI advice influences user decisions, which relates to the broader literature on decision making, including decisions made under uncertainty (Kahneman, 2003). In the energy domain, such decisions are linked to intentions and behaviors regarding energy saving (Carrus et al., 2021). Understanding how AI influences reliance and calibration can inform the design of interventions aimed at promoting actual energy conservation behaviors, drawing on insights from meta-analyses on the effectiveness of feedback and other factors influencing energy use (Karlin et al., 2015). By examining these outcomes, the Gorman study contributes to the growing body of work on how to design AI systems that not only provide information but also foster appropriate reliance and facilitate desirable user behavior in real-world contexts.

In conclusion, the Gorman - AI Energy Study Proposal is theoretically grounded in and empirically connected to established areas within cognitive psychology and human-computer interaction. Its focus on individual differences, information framing through linguistic uncertainty, and outcome measures related to trust, reliance, and calibration positions it to provide valuable insights into the complex dynamics of human interaction with AI advisors in the critical domain of energy conservation.




---------

# https://notebooklm.google.com/notebook/3a30ce58-c87e-4e3d-8f89-cec677a8e5d2

The Gorman study proposes an investigation into how the linguistic expression of uncertainty by a large language model (LLM) energy advisor influences user behavior and perceptions, considering the role of individual differences such as energy knowledge and numeracy. This research connects several key areas within cognitive psychology, particularly those related to human-AI interaction, judgment and decision-making under uncertainty, and the processing of domain-specific information. The following ASCII diagrams illustrate these connections between the Gorman study's design and relevant prior literature found within the provided sources.

The first diagram details the moderating variables examined in the Gorman study and their ties to established cognitive constructs and individual factors discussed in existing research.

```ascii
+-------------------------------------+
| Gorman Study: Moderating Variables  |
| Individual Differences & Baseline   |
| Knowledge                           |
|-------------------------------------|
| - Trust Propensity (General, AI)    | (Scholz et al., 2025)
| - AI Literacy                       | (Almatrafi et al., 2024)
| - Numeracy                          |
| - Energy Knowledge/Literacy (Factual| (Canfield et al., 2017),
|   & Perceived, Est. Accuracy)     | (Van Den Broek et al., 2025)
+-------------------------------------+
                 |
                 | Influence via
                 v
+-------------------------------------+
| Literature: Cognitive Processes     |
| & Individual Factors                |
|-------------------------------------|
| - Information Processing Capacity   | (Bittner et al., 2024),
|   (Farrell & Lewandowsky, 2018)     | (e.g., Cognitive Load Theory)
| - Knowledge Representation & Mental | (Van Den Broek et al., 2025),
|   Models                            | (Liang & Banks, 2025),
|                                     | (Fernandez et al., 2017)
| - Decision Making Under Uncertainty | (Kvam et al., 2024),
|                                     | (Callaway et al., n.d.)
| - Learning & Adaptation             | (Collins et al., 2025)
| - Dispositional Traits/Attitudes    | (Scholz et al., 2025),
|                                     | (Litvinova et al., 2024)
| - Expertise Effects                 | (Canfield et al., 2017),
|                                     | (Niraula et al., 2025)
+-------------------------------------+

```

The Gorman study explicitly examines how individual differences moderate the effects of AI uncertainty on user responses. These individual differences include general and AI-specific trust propensity, AI literacy, numeracy, and both objective and subjective energy knowledge/literacy. This approach aligns with established research highlighting the role of individual factors in information processing and decision-making. For instance, numeracy, the ability to understand and use numerical information, has been shown to influence the accurate application of decision rules and resistance to biases like the framing effect. Higher numeracy is associated with enhanced financial knowledge and more consistent risk perception. Similarly, existing literature underscores the importance of domain-specific knowledge and literacy, such as energy literacy, in understanding information and making accurate judgments. Mental models, representing individuals' understanding of a system or domain, are also crucial cognitive structures influencing how people interact with and make decisions within that domain. By assessing these factors, the Gorman study aims to understand how pre-existing cognitive capacities and knowledge structures interact with the AI's communication style to affect outcomes like trust calibration. Research also indicates that dispositional traits and attitudes can influence engagement with information and decision-making processes.

The second diagram focuses on the central interaction component of the Gorman study: a human user receiving advice from an AI energy advisor, and the resulting user behaviors and perceptions related to trust and reliance.

```ascii
+-------------------------------------+
| Gorman Study: AI Interaction Task   |
| Receiving AI Energy Advice &        |
| User Response                       |
|-------------------------------------|
| - AI Advisor Response (Estimate,    | (Michelon et al., 2025),
|   Explanation, Confidence)          | (Cecil et al., 2024)
| - User Evaluation (Confidence in AI,|
|   Likely Action, Trust in Response) | (Chen et al., 2024),
+-------------------------------------+  (He et al., 2025),
                 |                       (Salinzadeh et al., 2024)
                 | Influence on
                 v
+-------------------------------------+
| Literature: Human-AI Collaboration  |
| & Advice Taking                     |
|-------------------------------------|
| - Trust in AI Systems               | (Cecil et al., 2024),
|                                     | (Chen et al., 2024),
|                                     | (He et al., 2025),
|                                     | (Salinzadeh et al., 2024),
|                                     | (on_AI_Surveys)
| - Reliance on AI Advice             | (Cecil et al., 2024),
|                                     | (He et al., 2025),
|                                     | (Salinzadeh et al., 2024)
| - Advice Taking & Integration       | (Cecil et al., 2024),
|   (Accept, Verify, Reject)          | (He et al., 2025)
| - Transparency & Explainability     | (Cecil et al., 2024),
|                                     | (Giudici et al., 2024),
|                                     | (on_AI_Surveys)
+-------------------------------------+
                 |
                 | Ultimately affects
                 v
+-------------------------------------+
| Gorman Study: Key Outcomes          |
| Reliance, Trust, Confidence,        |
| Calibration                         |
+-------------------------------------+
```

The core of the Gorman study involves participants interacting with an AI energy advisor providing estimates and explanations for energy-related scenarios. This interaction is a form of human-AI collaboration and advice taking, a growing area of research. The study assesses user confidence in the AI, trust in its responses, and the likelihood of acting on the advice (accepting, verifying, or rejecting). This mirrors research investigating how users interact with AI assistants and the factors influencing their trust and reliance. Trust in AI systems is a critical variable affecting user reliance. Factors such as the perceived competence of the AI, its transparency (e.g., providing explanations or sources), and the user's prior experiences or expectations play a role. Studies on AI in various domains, including creative processes and decision-making tasks, explore these dynamics. The Gorman study contributes specifically by examining these dynamics within the context of energy management advice. Transparency, which can be conveyed through explanations, is noted as important for trust.

The third diagram highlights the specific manipulation in the Gorman study – the linguistic expression of uncertainty – and links it to cognitive processes related to processing uncertain information and judgment calibration.

```ascii
+-------------------------------------+
| Gorman Study: Key Manipulation      |
| Linguistic Uncertainty in AI Output|
|-------------------------------------|
| - Hedging Language                  | (Gorman Study Design)
| - Confident Language                | (Gorman Study Design)
+-------------------------------------+
                 |
                 | Impacts the processing of
                 v
+-------------------------------------+
| Literature: Uncertainty & Judgment  |
|-------------------------------------|
| - Processing Uncertain Information  | (Canfield et al., 2017),
|                                     | (Sources on Numeracy/Biases)
| - Risk Perception                   | (Sources on Numeracy/Biases)
| - Judgment Calibration              | (Kvam et al., 2024),
|                                     | (Callaway et al., n.d.)
| - Communication of Likelihoods      | (Sources on Numeracy/Biases)
+-------------------------------------+
                 |
                 | Affects
                 v
+-------------------------------------+
| Gorman Study: Key Outcomes          |
| Reliance, Trust, Confidence,        |
| Calibration                         |
+-------------------------------------+
```

A central feature of the Gorman study is the manipulation of the AI's communication style to express either linguistic uncertainty (hedging) or confidence. This manipulation directly relates to the cognitive process of understanding and responding to uncertain information. While the provided sources do not contain specific literature on the linguistic expression of AI uncertainty *per se*, they include studies on how individuals process information, including numerical information and risks. The study design aims to test whether variations in the AI's linguistic cues about uncertainty can improve users' calibration, which is the alignment between their confidence in the advice (or their own decision) and the objective accuracy of that information. Literature on judgment calibration, although not detailed in the provided excerpts beyond the mention of specific studies, explores factors that help individuals better match their confidence levels to the actual accuracy of their judgments. The processing of probabilities and percentages, often used to convey uncertainty, is known to be influenced by factors like numeracy and presentation format. By examining how linguistic uncertainty affects calibration in the energy domain, the Gorman study investigates a nuanced aspect of human-AI cognitive interaction. Research on communication formats for energy information, such as using absolute units versus percentages or monetary terms, also highlights how presentation impacts comprehension and planning accuracy. Different communication styles can influence how users perceive and utilize information, particularly in domains where quantitative understanding is necessary.

In summary, the Gorman study draws upon established cognitive principles concerning individual differences, human-AI interaction dynamics, and the processing of uncertain information. By systematically varying the AI's communication of uncertainty and measuring a range of user responses and individual characteristics, the research aims to provide insights into designing AI advisors that facilitate appropriate user trust and reliance in practical domains like household energy management.





--------


# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1


Drawing upon the provided literature, I shall delineate the structural components of the proposed Gorman - AI Energy Study and several potential alternative research designs aimed at enhancing human-AI interaction, utilizing ASCII diagrams to illustrate the conceptual pathways. This approach aligns with the cognitive psychology perspective, focusing on how individuals process information, form mental representations, and interact with intelligent systems, considering variables such as literacy, trust, and decision-making processes. The exploration of varied design frameworks is essential for advancing our understanding of human-AI collaboration, a critical area given the increasing integration of artificial intelligence into diverse aspects of life.

```ascii
                       .---------------------.
                       | Phase 1: Pre-Task   |
                       | Survey Battery      |
                       '---------------------'
                                   |
                                   | Assesses Stable Traits & Baseline Knowledge
                                   v
            .-------------------------------------------.
            | Individual Differences & Knowledge (IVs)  |
            |-------------------------------------------|
            | - Propensity to Trust Technology          |
            | - AI Literacy (Self-assessed knowledge,   |
            |   Understanding limitations like hallucination)
            | - Energy Knowledge/Literacy (Objective    |
            |   knowledge, Appliance estimation task,   |
            |   Subjective feelings)
            | - Numeracy (Percentages, Probabilities)   |
            '-------------------------------------------'
                                   |
                                   | Flows sequentially after Phase 1
                                   v
                       .---------------------.
                       | Phase 2: Interactive|
                       | Task Phase          |
                       '---------------------'
                                   |
                                   | Multiple trials per participant (within-subjects)
                                   v
                   .-------------------------------------------.
                   | AI Advisor Interaction (Simulated LLM)    |
                   |-------------------------------------------|
                   | Scenario Presentation (Energy-related)    |
                   | AI Response Displayed:                    |
                   | - Estimated Value                         |
                   | - Explanation for Estimate                |
                   |                                           |
                   | --- Experimental Manipulations (IVs) ---  |
                   | - Linguistic Uncertainty (Hedged vs.      |
                   |   Confident Tone)                         |
                   | - AI Accuracy (Correct vs. Incorrect)     |
                   '-------------------------------------------'
                                   |
                                   | For each scenario/trial
                                   v
                 .-----------------------------------------------------.
                 | Participant Evaluation (Measures/DVs)               |
                 |-----------------------------------------------------|
                 | - Confidence in AI's Estimate (Slider)              |
                 | - Likely Action (Accept, Verify, Reject) - Reliance |
                 | - Trust in AI's Response (Likert scale)             |
                 '-----------------------------------------------------'
                                   |
                                   | Repeated across trials (e.g., 4 trials)
                                   v
                       .---------------------.
                       | Post-Task           |
                       | Questionnaires      |
                       '---------------------'
                                   |
                                   | Assesses Overall Perceptions and Mental Model
                                   v
             .----------------------------------------------------------.
             | Post-Scenario Trust & Perception (Measures/DVs)          |
             |----------------------------------------------------------|
             | - Overall Trust in AI system (Dependability, Suspicion)  |
             | - Understanding of LLM Capabilities/Limitations        |
             | - Self-reflection on Over-/Under-Trust                 |
             | - Overall Perceived Accuracy (Slider)                    |
             | - Likelihood of Future Use/Reliance                      |
             | - Mental Model of AI (Source of answers, limitations)    |
             | - Optional Open-ended Feedback                           |
             '----------------------------------------------------------'
                                   |
                                   | Analysis focuses on:
                                   | - Reliance (Agreement rate, Appropriate Reliance)
                                   | - Trust & Confidence
                                   | - Calibration (Alignment of confidence/decisions with accuracy)
                                   | - Moderating role of Individual Differences/Knowledge
                                   v
                             .-----------.
                             | Findings  |
                             '-----------'
```

**Analysis of the Gorman - AI Energy Study Design**

The proposed Gorman study design employs a quantitative approach rooted in experimental psychology and human-computer interaction, specifically addressing issues of trust calibration and reliance in human-AI decision-making. The design is structured to first establish baseline individual differences and domain-specific knowledge *before* participants interact with the AI, a methodologically sound practice to avoid confounding factors and ensure unbiased baseline measurements. This initial phase includes assessments of traits like propensity to trust technology and specific literacies, notably AI literacy and energy literacy, the latter including both objective measures (estimation tasks, knowledge questions) and subjective perceptions. The inclusion of numeracy acknowledges the role of quantitative understanding in processing energy-related information.

The core of the study is the interactive phase, utilizing a within-subjects design where participants encounter multiple energy-related scenarios. Within this phase, the critical manipulations are the linguistic expression of uncertainty in the AI's response (hedged vs. confident tone) and the objective accuracy of the AI's advice (correct vs. incorrect). This manipulation factorial allows for examining how users react not only to the AI's communication style but also to instances where the AI is wrong, which is crucial for studying phenomena like over-reliance and trust calibration.

Following each interaction, participants provide immediate feedback on their confidence, trust, and intended action (acceptance, verification, or rejection of the advice). These responses serve as primary dependent measures of reliance and trust, key constructs in human-AI collaboration literature. The design explicitly aims to measure *appropriate reliance*, which involves relying on the AI when it is correct and not relying on it when it is incorrect. Trust calibration, the alignment between a user's confidence/reliance and the AI's actual accuracy, is a central outcome.

The post-task questionnaires further explore the user's broader perceptions of the AI system and, importantly, their inferred *mental model* of the AI. Mental models, internal cognitive representations of how a system works, are crucial for effective interaction and appropriate reliance. By probing the perceived source of the AI's answers, its capabilities, and limitations, the study seeks to understand the link between mental model formation, trust, and reliance behaviors. The study posits that individual differences, particularly energy knowledge and AI literacy, will moderate the effects of the uncertainty manipulation on these outcomes, suggesting that pre-existing cognitive structures and knowledge influence how users interpret and respond to AI communication. This aligns with findings in related domains like energy literacy, where background knowledge impacts the effectiveness of communication.

The philosophical underpinnings of this design touch upon theories of rational decision-making under uncertainty, human-AI teaming dynamics, and information processing models of trust. It implicitly examines the tension between automated system capabilities and human cognitive biases, particularly noted in the energy domain where misperceptions are common. The use of pre-computed LLM responses is a methodological decision aimed at controlling variability inherent in live AI generation, prioritizing experimental control and the precise isolation of manipulation effects over ecological validity in the interaction itself. However, grounding the task in the realistic energy domain and using stimuli inspired by known energy misperceptions enhances ecological relevance.

```ascii
               .--------------------------------.
               | Potential Alternate Design A:  |
               | Contrastive Explanations Study |
               '--------------------------------'
                              |
                              | Builds on insights into human misconceptions
                              v
              .-----------------------------------.
              | Task Scenario (e.g., Decision Point)|
              '-----------------------------------'
                              |
                              | AI Provides Recommendation (P)
                              v
              .-----------------------------------.
              | Explanation Manipulation (IV)     |
              |-----------------------------------|
              | Condition 1: Unilateral Explanation|
              |   (Lists factors for AI's choice P)|
              |                                   |
              | Condition 2: Contrastive Explanation|
              |   ("Why P rather than Q?")        |
              |   - Highlights dimensions where P   |
              |     differs from plausible human Q |
              |   - Leverages a "mental model" of |
              |     human reasoning to identify Q |
              '-----------------------------------'
                              |
                              | User processes explanation and makes decision
                              v
           .------------------------------------------.
           | Outcome Measures (DVs)                   |
           |------------------------------------------|
           | - Decision Accuracy (Agreement with expert/AI)|
           | - Cognitive Engagement (e.g., response time, |
           |   qualitative feedback analysis)           |
           | - Task Learning (e.g., performance on future|
           |   similar tasks or post-test)              |
           | - Mental Model Quality (Elicitation methods |
           |   pre/post-task)                           |
           '------------------------------------------'
```

**Analysis of Potential Alternate Design A: Contrastive Explanations**

An alternative design framework, drawing from research on explainable AI and human-AI decision-making, could focus on the *type* of explanation provided by the AI. Building on findings that highlight the value of contrastive reasoning in human cognition, this design would experimentally manipulate whether an AI provides a unilateral explanation (justifying its own recommendation P) or a contrastive explanation ("Why P rather than Q?"). Here, Q would represent a plausible alternative that a human might consider, potentially based on a model of common human misconceptions or reasoning biases.

The theoretical basis for this design rests on the idea that contrastive explanations, by explicitly highlighting the distinctions between the AI's suggestion and a likely human response, can foster greater cognitive engagement and enhance task learning. This approach directly targets the human user's *mental model*, aiming to address specific knowledge gaps or incorrect assumptions by showing where their potential reasoning (leading to Q) diverges from the AI's (leading to P). This resonates with cognitive theories emphasizing that explaining *why something else wouldn't happen* can be as informative as explaining *why something did happen*.

Outcome measures would include not only decision accuracy (comparing user choices to an expert or AI ground truth) but also direct assessments of learning and cognitive engagement. Learning could be measured through performance on similar tasks later or via explicit knowledge tests. Mental model elicitation techniques, such as diagramming or structured interviews, could be used pre- and post-interaction to assess how the type of explanation influences the user's understanding of the domain or the AI's reasoning process. This design shifts the focus from simply trusting or relying on the AI to actively promoting understanding and improving the user's own cognitive skills in the domain.

```ascii
                  .---------------------------------.
                  | Potential Alternate Design B:   |
                  | User-Involved Planning/Execution|
                  '---------------------------------'
                                 |
                                 | Based on LLM agents assisting daily tasks
                                 v
                .-------------------------------------.
                | Task Phase (Complex, multi-step)    |
                | (e.g., simulated online task)       |
                '-------------------------------------'
                                 |
                                 | AI Agent Generates Initial Plan
                                 v
                .-------------------------------------.
                | User Involvement Manipulation (IV)  |
                |-------------------------------------|
                | Condition 1: Minimal User Oversight |
                |   (User largely approves plan/steps)|
                |                                     |
                | Condition 2: User-Involved Execution|
                |   (User provides feedback, specifies|
                |    actions, reviews steps)          |
                |   - Could include reflection prompts|
                |     (e.g., "Why this step?", "What  |
                |      alternative?")                |
                '-------------------------------------'
                                 |
                                 | Task execution proceeds based on user involvement
                                 v
             .-----------------------------------------.
             | Outcome Measures (DVs)                  |
             |-----------------------------------------|
             | - Team Performance (Task success rate,  |
             |   Efficiency)                           |
             | - User Trust in Agent                   |
             | - User Agency/Ownership of Outcome      |
             | - User Learning (Understanding task    |
             |   workflow/domain)                      |
             | - Mental Model of Agent's Process     |
             '-----------------------------------------'
```

**Analysis of Potential Alternate Design B: User-Involved Planning/Execution**

Another framework focuses on human-AI collaboration in more complex, multi-step tasks, such as those performed by LLM agents. This design would investigate the impact of the *level* of user involvement in the AI's process, specifically during the planning and execution phases of a task. Instead of the AI simply providing advice or a final answer, it generates a plan, and the user interacts with this plan and the subsequent execution steps.

This approach is grounded in the concept of shared mental models in human-agent teams. Effective collaboration requires team members, including AI agents, to develop a robust shared understanding of the task, roles, and strategies. By requiring user involvement in the planning and execution, this design hypothesizes that users will develop a deeper understanding of the AI's process and the task itself, leading to better performance and potentially more calibrated trust. Including reflection prompts during the process (e.g., asking the user to justify a step or consider alternatives) could further enhance learning and critical engagement, aligning with research on the benefits of explicit self-explanation.

Key outcomes would measure the overall human-AI team performance on the task, user trust in the AI agent, and the user's sense of agency and ownership over the final outcome. Importantly, measures of user learning and their mental model of the agent's operation would capture the cognitive benefits of increased involvement. This design evaluates a different mode of human-AI interaction – one where the human is actively participating and overseeing a semi-autonomous agent, rather than passively receiving advice. It speaks to the philosophical consideration of designing AI to work *with* people, fostering a collaborative partnership. The challenge lies in finding the optimal level of user involvement, avoiding both over-reliance (minimal involvement) and user frustration (excessive micro-management).

```ascii
                  .--------------------------------.
                  | Potential Alternate Design C:  |
                  | Interface Design for Mental    |
                  | Model Formation                |
                  '--------------------------------'
                                 |
                                 | Leverages visualization and interface cues
                                 v
                .-------------------------------------.
                | Task Scenario (e.g., Complex System)|
                | (Interaction with an AI tool)       |
                '-------------------------------------'
                                 |
                                 | AI Tool provides output/recommendations
                                 v
                .-------------------------------------.
                | Interface Design Manipulation (IV)  |
                |-------------------------------------|
                | Condition 1: Baseline Interface     |
                |   (Standard presentation of AI output)|
                |                                     |
                | Condition 2: Enhanced Interface     |
                |   (Includes features designed to    |
                |    support mental models)           |
                |   - Performance visualization (e.g., |
                |     charts comparing AI/human)      |
                |   - Interactive diagrams explaining |
                |     AI components/reasoning path  |
                |   - Visual language cues (e.g., icons,|
                |     typography)                    |
                '-------------------------------------'
                                 |
                                 | User interacts with AI via interface
                                 v
             .-----------------------------------------.
             | Outcome Measures (DVs)                  |
             |-----------------------------------------|
             | - Task Performance/Accuracy             |
             | - Mental Model Quality (Elicitation     |
             |   methods post-task, e.g., diagramming, |
             |   structured queries)                   |
             | - User Trust & Confidence               |
             | - Perceived Transparency/Comprehensibility|
             | - User Engagement                       |
             | - Critical Engagement with AI output  |
             '-----------------------------------------'
```

**Analysis of Potential Alternate Design C: Interface Design for Mental Model Formation**

A third potential design direction focuses on the role of user interface (UI) design in shaping users' understanding of AI and influencing their interaction behaviors. This framework posits that specific interface elements can serve as cognitive aids to help users form more accurate and robust mental models of how an AI system works.

Drawing inspiration from the fields of visualization, human-computer interaction, and even communication design in domains like energy literacy, this design would manipulate the presentation of AI output or system information. For example, incorporating performance visualizations that compare AI performance to human benchmarks or illustrate the AI's decision boundaries could help users gauge the AI's reliability and capabilities. Interactive diagrams could be used to explain the underlying structure or reasoning process of the AI, making complex systems more comprehensible. Varying visual languages or using specific interface metaphors (e.g., technical vs. analog styles) might also influence user expectations and mental models.

The theoretical grounding is in cognitive load theory and theories of visual information processing, suggesting that well-designed interfaces can reduce cognitive effort and facilitate the comprehension of complex information necessary for building accurate mental models. Outcome measures would include task performance, but critically, they would also prioritize the quality of the user's mental model, assessed through methods like diagramming tasks, structured interviews, or prediction tasks. Perceived transparency, comprehensibility, trust, and the user's critical engagement with the AI's output would also be important dependent variables. This design highlights that facilitating user understanding is not solely about the AI's internal workings (explainability) but also about how that information is effectively conveyed through the user interface.

In conclusion, while the Gorman study provides a valuable framework for investigating the impact of linguistic uncertainty and individual differences on trust calibration in a specific domain, these alternative designs illustrate other critical avenues for research in human-AI interaction. Exploring contrastive explanations can deepen task learning and correct misconceptions, investigating user-involved execution can foster shared mental models and user agency in collaborative tasks, and manipulating interface design can directly support the formation of accurate cognitive representations of AI systems. Each approach contributes uniquely to our understanding of how humans interact with AI, moving towards the goal of designing AI systems that are not only capable but also trustworthy, understandable, and conducive to effective human collaboration.






-------

# https://notebooklm.google.com/notebook/b9b3533c-ddc0-49e3-b438-9e1f05272f9e?pli=1


Drawing upon the provided materials, this response outlines the design of the "Gorman - AI Energy Study Proposal" and presents conceptual frameworks for several alternate cognitive psychology studies investigating human-AI interaction within the energy domain. The presentation employs ASCII diagrams to visually represent the structural components and flow of these experimental designs, accompanied by detailed explanations grounded in relevant cognitive science literature.

Applying the perspective of an expert in cognitive psychology, the analysis delves into the theoretical underpinnings motivating each design, evaluating how they address key research questions concerning human decision-making, trust, collaboration, and cognitive processes in the context of energy-related tasks mediated by artificial intelligence, particularly Large Language Models (LLMs).

```ascii
+-------------------------+
| Gorman - AI Energy Study|
|      Proposal Design    |
+-------------------------+
        |
        v
+-------------------------+
| Phase 1: Pre-Task Survey|
| (Baseline Assessments)  |
+-------------------------+
        |
        +-----------------> Section 1: Energy Knowledge & Perception
        |                     - Objective knowledge (household use)
        |                     - Subjective knowledge & efficacy
        |                     - Estimation task (appliance use)
        |
        +-----------------> Section 2: Numeracy Questions
        |                     - Basic understanding (percentages, probabilities)
        |
        +-----------------> Section 3: AI Familiarity & Trust Propensity
                              - Frequency of AI use
                              - AI knowledge/literacy (perceived)
                              - Understanding AI limitations (hallucination, real-time data)
                              - General trust/skepticism propensity
        |
        v
+-------------------------+
| Item/Scenario Selection |
| (Randomly select 4 from|
|  pre-defined list)      |
+-------------------------+
        |                     - Each item includes: User prompt, AI estimate,
        |                       Explanation, Confidence score/level, Ground truth
        v
+-------------------------+
| Phase 2: AI Interaction |
| Task (Core Task)        |
| (4 Trials - one per item)|
+-------------------------+
        |
+-------+-------+
| Scenario      |
| Presentation  |
+---------------+
        |             - Participant shown prompt
        |             - AI Energy Advisor response displayed
        |               (Estimate, Explanation)
        |               - Manipulation occurs here: Linguistic Uncertainty
        |                 (Hedging vs. Confident language in AI response)
        v
+-------------------------+
| Participant Evaluation  |
| (per scenario)          |
+-------------------------+
        |             - Rate confidence in AI estimate (Slider)
        |             - Indicate likely action (Accept, Verify, Reject)
        |             - Rate trust in AI response (Likert scale)
        |
        +--- (Repeat for next scenario, up to 4 trials)
        |
        v
+-------------------------+
| Phase 3: Post-Task      |
| Questionnaires          |
+-------------------------+
        |
        +-----------------> Section 5: Post-Scenario Trust & Perception
                              - Overall trust in AI system (dependability, reliability)
                              - Understanding LLM capabilities/limitations (real-time, reasoning, error)
                              - Self-reflection on over/under-trust
                              - Overall perceived accuracy
                              - Likelihood of future use/reliance
                              - Mental model of AI (source, limitations)
                              - Optional open-ended feedback
        |
        v
       END STUDY
```

**Detailed Explanation of the Gorman - AI Energy Study Proposal Design**

The core framework of the "Gorman - AI Energy Study Proposal," as detailed in the provided sources, is a structured experiment designed to investigate how the linguistic expression of uncertainty by an LLM energy advisor influences human trust, reliance, and calibration in energy-related decision-making. This design addresses key research questions (RQs) focusing on the impact of linguistic uncertainty (hedging vs. confident language) on user reliance (e.g., agreement rate), subjective trust and confidence, and importantly, calibration—the alignment between a user's confidence and the objective accuracy of decisions.

The study unfolds across three distinct phases: a pre-task survey battery, an interactive task phase, and post-task questionnaires.

1.  **Phase 1: Pre-Task Survey Battery (Baseline Assessments):** This initial phase is critical for establishing baseline measures of individual differences and relevant domain knowledge *prior* to any interaction with the AI. Section 1 specifically targets energy knowledge and perception, using questions to gauge both objective understanding of household energy consumption and subjective feelings of efficacy and knowledge. A key addition is an energy estimation task, requiring participants to estimate appliance energy use, providing a more objective measure of energy literacy. This aligns with the importance of background knowledge, or 'energy literacy,' in processing energy-related information and recommendations (Canfield et al., 2017). Section 2 assesses basic numeracy, a cognitive skill potentially influencing the interpretation of quantitative energy information or savings estimates. Section 3 explores participants' familiarity and pre-existing propensity to trust AI systems, including their usage frequency of chatbots like ChatGPT, perceived AI literacy, and understanding of common AI limitations such as the potential for 'hallucination' or lack of real-time data access. This multi-faceted assessment of prior knowledge and attitudes provides crucial covariates for analyzing the effects of the AI interaction.

2.  **Item/Scenario Selection:** Following baseline assessments, participants are presented with a selection of energy-related scenarios or questions. The design specifies random assignment to a subset (e.g., 4) of these items from a pre-defined list. Each item is meticulously constructed to include a user prompt (the energy question or scenario), a specific estimated value provided by the AI, an explanation for that estimate, the AI's confidence level (which is manipulated linguistically), and the actual ground truth value for accuracy comparison.

3.  **Phase 2: AI Interaction Task (Core Task):** This phase constitutes the core experimental manipulation. Participants interact with the AI Energy Advisor for each selected scenario. The scenario is presented, followed by the AI's response containing its estimate and explanation. The critical experimental manipulation resides in the linguistic style of the AI's response, specifically how uncertainty is conveyed – ranging from hedging language (e.g., "It might be around...") to confident language (e.g., "It is approximately..."). After reviewing the AI's response for a given scenario, participants engage in an evaluation process. They rate their confidence in the AI's estimate using a slider, indicate their likely course of action (e.g., accept the advice, verify it, or reject it), and rate their trust in the AI's response for that specific scenario using a Likert scale. This iterative process is repeated for each assigned scenario. The design is structured such that, in the main experiment, participants do *not* receive feedback on the objective accuracy of the AI's responses during the task, allowing researchers to observe natural trust dynamics and reliance patterns. This is a deliberate choice to study trust calibration in the absence of immediate corrective feedback, although the impact of feedback is acknowledged as a potential area for future exploration.

4.  **Phase 3: Post-Task Questionnaires:** The final phase captures participants' overarching perceptions and reflections after completing the interaction task. Section 5 assesses global trust in the AI system experienced across the trials, exploring dimensions like dependability, reliability, and suspicion. It also probes their understanding of LLM capabilities and limitations beyond the specific task interaction, such as whether they believe the AI has access to real-time data or possesses true reasoning capabilities. Participants reflect on their potential over- or under-trust of the AI, provide an overall perceived accuracy rating, and indicate their likelihood of using such an AI advisor in the future. Finally, questions about their mental model of the AI – how they conceptualize its source of information and limitations – are included, offering insights into their internal representation of the system (Norman, 1983). This aligns with research highlighting the importance of mental models in human interaction with technology, including energy systems (Cranmer et al., 2023).

The philosophical underpinning of this study is largely rooted in experimental psychology and cognitive science, specifically focusing on the mechanisms of human judgment and decision-making under uncertainty and the factors influencing trust in automated systems. It seeks to identify causal relationships between a manipulated variable (linguistic uncertainty in AI output) and measurable human responses (reliance, trust, calibration, confidence). The emphasis on calibration speaks to a pragmatic goal: designing AI systems that users can appropriately rely on, neither blindly trusting flawed advice nor dismissing accurate recommendations. This aligns with the broader goal of improving human-AI collaboration outcomes.

***

**Potential Designs from Brainstorming Improvement Ideas / Alternate Approaches**

The provided sources offer several conceptual starting points for cognitive psychology studies exploring human-AI interaction in energy decision-making from different angles than the Gorman study. These alternate approaches often evaluate different types of AI assistance, interaction modalities, or human roles. Below are ASCII diagrams outlining three distinct potential study designs derived from these ideas.

```ascii
+-----------------------------+
| Alternate Design 1          |
| Collaborative Energy Planning|
| (Based on Source Ideas)     |
+-----------------------------+
            |
            v
+-----------------------------+
| Participant Task: Create    |
| Energy Reduction Plan for   |
| Hypothetical Household      |
+-----------------------------+
            |
+-----------+-----------+
| Experimental Conditions |
+-----------+-----------+
     /      |       \
    /       |        \
   v        v         v
+---------+ +---------+ +---------+
| Control | | AI Asst.| | AI Asst.|
| (Plan   | | (Good   | | (Poor   |
| Alone)  | | Quality)| | Quality)|
+---------+ +---------+ +---------+
            |
            v
+-----------------------------+
| Measures                     |
+-----------------------------+
            |
            +--> Quality of Energy Plan (Feasibility, Savings, Comprehensiveness)
            |
            +--> User Satisfaction with AI Assistant
            |
            +--> Cognitive Load (Self-report, Physiology)
            |      - Theoretical Link: Cognitive Offloading, Cognitive Load Theory
            |
            +--> Human-AI Collaboration Effectiveness (e.g., contribution analysis)
            |
            +--> Mental Models of Energy Use (How planning changes understanding)
            |      - Theoretical Link: Mental Models
            |
            +--> Use of Cognitive Strategies (e.g., conceptual combination, repetition of AI ideas)
                   - Theoretical Link: Cognitive Strategies in Ideation
            |
            v
           END STUDY
```

**Detailed Explanation of Alternate Design 1: Collaborative Energy Planning**

This design, explicitly mentioned in multiple sources, shifts the focus from evaluating specific AI feedback or trust in an advisor to examining the *process and outcome* of humans and AI collaborating on a complex task: creating an energy reduction plan for a hypothetical household.

The core of the study involves participants undertaking this planning task. The key manipulation lies in the nature of the AI assistance provided. Participants are randomly assigned to one of three conditions: a control group planning alone, a group collaborating with an AI assistant providing consistently high-quality and feasible suggestions, or a group collaborating with an AI assistant offering inconsistent, sometimes impractical suggestions. This manipulation of AI *quality* directly relates to real-world variability in AI system performance and is distinct from the linguistic uncertainty manipulated in the Gorman study.

Measures in this design capture various aspects of the planning process and its results. The quality of the final energy plan is a primary outcome, assessed based on objective criteria like feasibility, potential savings, and comprehensiveness. User satisfaction with the AI assistant provides subjective feedback on the collaborative experience. Cognitive load is a crucial cognitive measure, exploring whether the AI assistant, particularly the high-quality one, effectively reduces the mental effort required for the complex planning task – a concept known as cognitive offloading. Conversely, a poor-quality AI might *increase* cognitive load if its suggestions are difficult to integrate or evaluate.

Beyond task performance and subjective experience, this design offers rich opportunities to explore human-AI collaboration dynamics. Analyzing how participants integrate AI suggestions (e.g., adopting, modifying, or rejecting them) can reveal the effectiveness of the collaborative process. Drawing from research on human-AI collaboration in creative tasks (Boers et al., 2025), measures could also include the specific cognitive strategies participants employ, such as combining their ideas with AI suggestions, improving upon AI ideas, or simply repeating AI-generated content. This can shed light on whether users actively engage in complex cognitive processes or passively rely on AI output, a concern raised in the context of LLM use in creative ideation. Furthermore, the study could investigate how the collaborative process influences participants' mental models of energy use, assessing whether interacting with the AI helps refine their understanding of energy consumption patterns. This connects to the broader cognitive science literature on mental representations (Gentner & Stevens, 1983) and their role in decision-making.

Philosophically, this design leans into understanding human-AI *symbiosis* or interaction. It asks how different levels of AI competence shape not just the outcome of a joint task, but also the human cognitive experience and collaborative behaviors. It contrasts with the Gorman study's focus on the human response to a fixed AI output style, instead examining the dynamic process of working *with* an AI.

```ascii
+-----------------------------+
| Alternate Design 2          |
| AI Feedback on Energy Plans|
| (Based on Source Ideas)     |
+-----------------------------+
            |
            v
+-----------------------------+
| Participant Task: Create    |
| Initial Energy Plan         |
| for Hypothetical Household  |
+-----------------------------+
            |
+-----------+-----------+
| Experimental Conditions |
+-----------+-----------+
     /      |       \
    /       |        \
   v        v         v
+---------+ +---------+ +---------+
| Positive| | Negative| | No      |
| AI      | | AI      | | Feedback|
| Feedback| | Feedback| | Control |
+---------+ +---------+ +---------+
            |
            v
+-----------------------------+
| Participant Action: Revise  |
| Energy Plan Based on AI    |
| Feedback (or lack thereof)  |
+-----------------------------+
            |
            v
+-----------------------------+
| Measures                     |
+-----------------------------+
            |
            +--> Revisions Made to Plan (Quantity, Quality, Alignment with feedback)
            |
            +--> Subjective Ratings of Feedback (Helpfulness, Persuasiveness)
            |
            +--> Confidence in Final Energy Plan
            |
            +--> Cognitive Processing of Feedback (e.g., time spent reviewing feedback)
            |      - Theoretical Link: Feedback Processing, Learning
            |
            +--> Trust in AI after Feedback (Does feedback valence influence trust?)
            |      - Theoretical Link: Trust in Automation
            |
            +--> Impact on Mental Model (Does feedback change understanding of energy use?)
                   - Theoretical Link: Mental Models
            |
            v
           END STUDY
```

**Detailed Explanation of Alternate Design 2: AI Feedback on Energy Plans**

Building on the idea of plan creation, this design isolates the impact of AI feedback. It is conceptually related to the Gorman study's investigation of AI advice, but focuses specifically on evaluative feedback *after* a human has already produced an initial plan, rather than advice *during* the planning process.

The study begins with participants independently creating an energy reduction plan. This establishes a baseline plan developed solely by the human. The core manipulation is the type of feedback participants subsequently receive from an AI assistant. Conditions include receiving positive feedback (highlighting strengths, minor suggestions), negative feedback (highlighting weaknesses, suggesting significant revisions), or no feedback (control). This explores the valence and nature of feedback as independent variables.

Measures center around the impact of this feedback on the participant's subsequent actions and perceptions. A primary measure is the nature and extent of revisions participants make to their original energy plan after receiving the feedback. This indicates the degree to which they accept and integrate the AI's evaluation and suggestions. Subjective ratings of the feedback itself – how helpful or persuasive it was perceived to be – are also crucial. Confidence in the final, revised (or unrevised) energy plan provides insight into how the feedback influences self-efficacy and certainty.

Cognitive measures could extend to analyzing how participants process the feedback, for example, by tracking the time spent reviewing different types of feedback. This design directly investigates the cognitive processes involved in integrating external evaluations from an AI system, building on theories of feedback and learning. It also allows for an examination of how the *type* of feedback (positive vs. negative) influences trust in the AI going forward, potentially revealing dynamics distinct from trust built (or eroded) during collaborative planning or advisory tasks. As with the collaborative planning study, this design could also assess the impact of feedback on participants' mental models of energy consumption, exploring whether targeted feedback corrects misconceptions or refines understanding.

Philosophically, this design interrogates the role of AI as an evaluator and educator. It considers how humans respond to automated critique and praise in a practical domain like energy use, examining factors influencing the acceptance and integration of external feedback from a non-human source. It touches upon concepts of learning and behavioral adjustment in response to evaluation.

```ascii
+---------------------------------+
| Alternate Design 3              |
| AI Roles: Advisor, Client, Peer|
| (Based on Source Ideas)         |
+---------------------------------+
            |
+-----------+-----------+
| Experimental Conditions |
+-----------+-----------+
     /         |         \
    /          |          \
   v           v           v
+-----------+ +-----------+ +-----------+
| P as Adv. | | P as Adv. | | P compares|
| AI as Cli.| | w/ AI Asst| | to AI plan|
| (Convince)| | (Collaborate)|(or takes Adv)|
+-----------+ +-----------+ +-----------+
     |           |             |
     |           |             |
     v           v             v
+---------------------------------+
| Participant Task & Interaction  |
+---------------------------------+
     |
     |  - **P as Adv, AI as Client:** Participant interacts with LLM
     |    simulating a client, trying to persuade it to reduce energy use.
     |    Focus on persuasive strategies used by human.
     |
     |  - **P as Adv w/ AI Asst:** Participant works with LLM as an assistant
     |    to create plans for AI clients. Focus on how human utilizes AI input
     |    (quality of AI input can be manipulated). Similarities to Alt 1.
     |
     |  - **P compares to AI plan:** Participant creates a plan, then compares it
     |    to an LLM-generated plan (AI as Peer/Planner). OR Participant takes
     |    advice from an LLM planner (AI as Advisor). Similarities to Gorman.
     |
     v
+---------------------------------+
| Measures                         |
+---------------------------------+
     |
     +--> Quality of Plans (Human-only, Human+AI, AI-only)
     |
     +--> Interaction Analysis (Conversation content, Persuasion techniques, Collaboration strategies)
     |      - Theoretical Link: Human-AI Interaction
     |
     +--> Subjective Ratings (Satisfaction with role, Perceived effectiveness)
     |
     +--> Trust/Reliance (In AI assistant, in AI plan/advice)
     |      - Theoretical Link: Trust Calibration, Cost-Benefit Theory of Reliance
     |
     +--> Cognitive Load
     |
     +--> Learning/Strategy Adaptation (Does interaction change human's approach?)
            - Theoretical Link: Human-AI Co-Learning, Metacognition
     |
     v
    END STUDY
```

**Detailed Explanation of Alternate Design 3: AI Roles: Advisor, Client, Peer**

This conceptual design explores the flexibility of LLMs by positioning them in different roles relative to the human participant, as suggested by the source ideas. This framework moves beyond the AI solely being an advisor or assistant and considers scenarios where the AI acts as a 'client' or a 'peer planner.'

The design outlines multiple distinct conditions, each defining a different human-AI relationship:

*   **Participant as Advisor, AI as Client:** In this scenario, the human participant takes on the role of energy expert, and the LLM simulates a household 'client' needing to reduce energy use. The participant's task is to interact with the AI, attempting to *persuade* it to adopt energy-saving measures. This flips the typical human-AI dynamic and allows for studying human persuasive strategies in an AI context. Analysis would focus on the participant's communication style, arguments used, and perceived effectiveness in convincing the AI client.
*   **Participant as Advisor with AI Assistant:** Here, the participant remains the primary advisor, but collaborates with an LLM assistant to develop energy plans for simulated clients. This condition is similar to Alternate Design 1 (Collaborative Planning) and could manipulate the quality of the AI assistant's input to see how humans leverage AI support when they hold the primary decision-making authority. Measures would examine how the human integrates AI suggestions and how the AI's quality affects the human's advising performance and cognitive load.
*   **Participant compares to AI plan (or takes Advice from AI Planner):** This condition reverts closer to the AI-as-advisor paradigm, but potentially introduces a comparative element. Participants might first create their own energy plan and then be shown an alternative plan generated by an LLM acting as a 'peer' or expert planner. The task could then involve comparing the plans, evaluating the AI's plan, or deciding which plan (theirs or the AI's) to adopt. Alternatively, participants could simply receive advice from the AI planner and decide whether to follow it, similar to the Gorman study but potentially with a different framing of the AI's role.

Measures across these varied conditions would need to be adapted to the specific interaction type. Plan quality could be assessed where plans are generated. Interaction analysis, such as coding conversational turns or identifying specific strategies (persuasive, collaborative), would be crucial, drawing on methodologies from studies analyzing human-AI dialogue. Subjective measures of satisfaction with the interaction and perceived effectiveness would be important. Trust and reliance measures could be included, particularly in conditions where the AI provides advice or a plan for the human to adopt. Cognitive load could be assessed to understand the mental effort associated with different roles (advising vs. being advised, collaborating vs. persuading). Finally, these designs offer unique opportunities to study human-AI co-learning and metacognition – for instance, whether trying to teach an AI client improves the human's own understanding, or whether evaluating an AI plan leads to reflection on one's own planning strategies.

The philosophical perspective here is one of distributed cognition and role-taking in human-AI systems. It explores how the designated responsibilities and capabilities of each agent (human and AI) influence their interaction and the resulting outcomes, moving towards a more nuanced understanding of human-AI teams rather than just tool use or advice-taking. It aligns with the broader exploration of human-AI collaboration.

These alternate designs represent distinct avenues for future research in cognitive psychology at the intersection of human-AI interaction and energy behavior, building upon and complementing the foundational questions addressed by the Gorman study. They highlight the diverse ways LLMs can be integrated into experimental paradigms to probe complex cognitive processes in a practical, pro-environmental context.










-----



# https://notebooklm.google.com/notebook/3a30ce58-c87e-4e3d-8f89-cec677a8e5d2


Drawing upon cognitive psychology principles and research in human-AI interaction and energy behavior, the design of decision support systems, such as AI-powered energy advisors, requires careful consideration of how information is presented and how users engage with the system. Below are ASCII diagrams illustrating the design of the current Gorman - AI Energy Study Proposal, along with potential alternative designs informed by relevant literature.

The current design of the Gorman - AI Energy Study Proposal is structured to investigate how linguistic uncertainty and accuracy in an AI advisor's responses affect user reliance, trust, and calibration, while accounting for individual differences such as energy knowledge and AI literacy. The study employs a multi-phase approach involving baseline assessments, a controlled interaction task, and post-task evaluation.

**Diagram 1: Current Gorman - AI Energy Study Proposal Design**

```
+-----------------------------------+
| Phase 1: Baseline Assessments     |
| (Pre-task Survey Battery)         |
+-----------------------------------+
| - Individual Differences (e.g.,   |
|   Trust Propensity, AI Literacy)  |
| - Energy Knowledge & Perception   |
|   (Objective/Subjective, Est.)    |
| - Numeracy                        |
+-----------------------------------+
               |
               v
+-----------------------------------+
| Item/Scenario Selection           |
| (Random Assignment of 4 Items)    |
| - User Prompt                     |
| - AI Estimated Value              |
| - AI Explanation                  |
| - AI Confidence Score/Level       |
| - Actual Ground Truth Value       |
+-----------------------------------+
               |
               v
+-----------------------------------+
| Phase 2: AI Advisor Interaction   |
| (Core Task - 4 Trials, W/in-Sub)  |
+-----------------------------------+
|         +-----------------------+ |
|         | Scenario Presentation | |
|         | - User sees prompt    | |
|         +-----------------------+ |
|                   |               |
|                   v               |
|         +-----------------------+ |
|         | AI Energy Advisor     | |
|         | Response              | |
|         | - Estimated Value     | |
|         | - Explanation         | |
|         | - Linguistic Style:  | |
|         |   Hedged vs. Confident| |
|         | - Accuracy:           | |
|         |   Correct vs. Incorrect| |
|         +-----------------------+ |
|                   |               |
|                   v               |
|         +-----------------------+ |
|         | Participant           | |
|         | Evaluation            | |
|         | - Confidence in AI    | |
|         | - Likely Action       | |
|         | - Trust in AI Response| |
|         +-----------------------+ |
+-----------------------------------+
               | (Repeat for 4 scenarios)
               v
+-----------------------------------+
| Post-Task Questionnaires          |
+-----------------------------------+
| - Overall Trust/Perception        |
| - Understanding AI Capabilities   |
| - Self-reflection on Trust        |
| - Perceived Accuracy              |
| - Likelihood of Future Use/Reliance|
| - Mental Model of AI              |
| - Optional Open Feedback          |
+-----------------------------------+
               |
               v
+-----------------------------------+
| Debrief & Correct Answers         |
+-----------------------------------+
```

This design systematically explores how variations in AI communication (linguistic uncertainty and accuracy) impact user responses, controlling for baseline knowledge and individual traits measured before the AI interaction phase. The lack of immediate accuracy feedback during the interaction is intentional, allowing observation of natural trust dynamics as participants rely on the AI's output and their own evaluations. Post-task measures capture subjective perceptions and potential shifts in mental models regarding the AI's capabilities and limitations. The study anticipates that energy knowledge and estimation accuracy will moderate how users calibrate their trust, ideally leading to greater reliance on correct AI advice and less on incorrect advice.

Based on the broader literature concerning human-AI interaction, particularly in domains like decision support, creative tasks, and energy management, several alternative or complementary designs could be explored to enhance user engagement, learning, and the effectiveness of AI-assisted energy decision-making.

**Brainstorming Idea 1: Incorporating Contrastive Explanations**

Drawing on research suggesting that contrastive explanations (e.g., "Why P rather than Q?") can foster cognitive engagement and learning by highlighting discrepancies between an AI's recommendation (P) and a plausible human alternative (Q) (Buçinca et al., 2024), an alternative design could incorporate this element into the AI's response. This approach goes beyond simply justifying the AI's output (unilateral explanation) to directly address potential user misconceptions or alternative considerations (Buçinca et al., 2024).

**Diagram 2: AI Interaction with Contrastive Explanations**

```
+-----------------------------------+
| AI Advisor Interaction (Trial)    |
+-----------------------------------+
|         +-----------------------+ |
|         | Scenario Presentation | | (Similar to Diagram 1)
|         +-----------------------+ |
|                   |               |
|                   v               |
|         +-----------------------+ |
|         | AI Energy Advisor     | | (Modified Response)
|         | Response              | |
|         | - AI Recommendation (P)| | (e.g., Action/Estimate)
|         | - Predicted Human Alt (Q)| | (Based on mental model/data)
|         | - Contrastive Expl:   | |
|         |   "Why P rather than Q" | | (Highlights key differences)
|         | - Linguistic Style:   | | (Hedging manipulation could apply here)
|         |   Hedged vs. Confident| |
|         +-----------------------+ |
|                   |               |
|                   v               |
|         +-----------------------+ |
|         | Participant           | | (Evaluation could include:)
|         | Evaluation            | | - Understanding explanation
|         |                       | | - Agreement with AI vs. Q
|         |                       | | - Confidence, Action, Trust (as in D1)
|         +-----------------------+ |
+-----------------------------------+
```

In this model, the AI's output is enriched by anticipating common human approaches (Q) and explicitly explaining why its recommendation (P) is different or preferable (Buçinca et al., 2024). This could be particularly valuable in the energy domain, where user intuition or past behavior (Q) may not align with the most effective energy-saving actions (P) (Scott et al., 2011). The "predicted human alt (Q)" could be derived from empirical data on typical behaviors or common misconceptions (Buçinca et al., 2024). The timing of this explanation (before or after the user makes an initial decision) could also be manipulated, as suggested by Buçinca et al. (2024). This design aligns with efforts to build AI systems that leverage human mental models to enhance decision support and potentially upskill users (llm_concat_cleaned.pdf).

**Brainstorming Idea 2: Goal-Oriented Recommender with Tailored Framing**

Current research highlights the importance of tailoring energy advice and recommendations, moving beyond "one-size-fits-all" approaches (Starke et al., 2020; Starke & Willemsen, 2024). Decision aids could allow users to specify multiple goals (e.g., lowest cost, fastest payback, maximum energy savings) and constraints (e.g., budget), and the AI could provide recommendations optimized for these specific criteria (Attari & Rajagopal, 2015). Furthermore, tailoring can extend to *how* information is framed, for example, emphasizing monetary savings versus environmental benefits (Hafner et al., 2019; Starke, 2019).

**Diagram 3: Goal-Oriented & Tailored AI Advisor Interaction**

```
+-----------------------------------+
| Phase 1: Baseline Assessments     |
| (Augmented)                       |
+-----------------------------------+
| - Individual Differences          | (As in Diagram 1)
| - Energy Knowledge/Perception     | (As in Diagram 1)
| - Numeracy                        | (As in Diagram 1)
| - User Goals & Preferences        | (New: Elicit user priorities, e.g.,
|   (Energy-Related)                |   cost, comfort, environment, budget)
+-----------------------------------+
               |
               v
+-----------------------------------+
| Scenario Presentation (Trial)     |
| - Task/Decision Problem Presented | (e.g., How to reduce energy use by 10%
|   OR User Specifies Goal for Item |   within $200 budget)
+-----------------------------------+
               |
               v
+-----------------------------------+
| AI Energy Advisor                 | (Modified Response)
| Response (Tailored)               |
| - Recommended Actions/Strategies  | (Optimized for user's stated goals/prefs)
| - Explanation                     | (Justifying recommendation)
| - Framing Manipulation            | (e.g., Highlight cost savings vs. kWh savings)
| - Presentation Format             | (e.g., Combine text, graphics, tables;
|   Considerations                  |   show in monetary units)
| - Optional: Uncertainty/Confidence| (Manipulation could still apply)
+-----------------------------------+
               |
               v
+-----------------------------------+
| Participant Evaluation            | (Evaluation could include:)
|                                   | - Perceived alignment with goals
|                                   | - Understanding of trade-offs
|                                   | - Likelihood of adopting recommendations
|                                   | - Confidence, Action, Trust (as in D1)
+-----------------------------------+
```

This design shifts the focus from evaluating a single AI estimate to assessing recommendations within the context of user-defined objectives and individual preferences (Jensen et al., 2018; Mongaillard et al., 2024). Tailoring recommendations based on a Rasch scale of energy-saving measures or user attitude has been explored in recommender systems (Starke, 2019; Starke et al., 2020). Presenting information in a way that resonates with user preferences, such as highlighting monetary benefits (Karjalainen, 2011; Gupta et al., 2015), can increase the perceived value and likelihood of adopting recommendations (Starke, 2019). The interface could adapt presentation formats (text, graphs, tables) based on user preferences or cognitive styles (Fischer, 2008; Karjalainen, 2011; Gupta et al., 2015; Canfield et al., 2017).

**Brainstorming Idea 3: Procedural Step-by-Step Guidance for Complex Tasks**

Energy conservation often involves implementing strategies or sequences of actions rather than making single point decisions. Research on AI-powered boosting suggests that conveying abstract strategies effectively requires understandable descriptions (llm_concat_cleaned.pdf). Procedural descriptions, presented as ordered lists of steps, may be more interpretable than static representations like decision trees (llm_concat_cleaned.pdf). This approach could be particularly useful for implementing multi-step energy-saving plans or operating complex smart home devices.

**Diagram 4: AI Advisor Providing Procedural Guidance**

```
+-----------------------------------+
| Scenario Presentation (Trial)     |
| - Task Requiring Multiple Steps   | (e.g., Setting up a smart thermostat schedule
|   or a Strategy                   |   for optimal savings)
+-----------------------------------+
               |
               v
+-----------------------------------+
| AI Energy Advisor                 | (Providing step-by-step plan)
| Response (Procedural)             |
| - Step 1: [Action]                |
| - Step 2: [Action]                |
| - ...                             |
| - Explanation for each step       | (Justification or consequence)
| - Overall Strategy Rationale      | (Why this sequence is effective)
| - Optional: Uncertainty/Confidence| (Manipulation could still apply, e.g.,
|   at Strategy or Step Level       |   "Step 3 *might* require adjustment")
+-----------------------------------+
               |
               v
+-----------------------------------+
| Participant Evaluation/Simulated  | (Evaluation could include:)
| Execution                         | - Understanding of the steps
|                                   | - Perceived ease of execution
|                                   | - Agreement with the strategy
|                                   | - Confidence, Action, Trust (as in D1)
|                                   | - (Potentially simulate following steps
|                                   |   or evaluate step-by-step confidence)
+-----------------------------------+
```

This design focuses on the interpretability and usability of AI advice for practical implementation. Instead of a single recommendation, the AI provides a structured plan. This could be beneficial for tasks that users find cognitively complex or unfamiliar (llm_concat_cleaned.pdf). Evaluating participant understanding of the procedure and their confidence in executing each step could provide deeper insights into the effectiveness of procedural explanations compared to static summaries or single recommendations. While the Gorman study focuses on single-decision estimates, extending to multi-step tasks and evaluating different explanation formats (procedural vs. static) is a logical progression for understanding human-AI collaboration in energy management.

**Brainstorming Idea 4: Human-AI Collaborative Planning and Execution**

Moving beyond the advisor role, AI can act as a collaborator. The "Plan-Then-Execute" framework (He et al., 2025) proposes user involvement in both the planning and execution stages of tasks assisted by LLM agents. This involves the AI generating an initial plan, the user reviewing and editing it, and then a step-by-step execution process where the user provides feedback or approval. This interactive approach aims to calibrate user trust and improve overall outcomes, acknowledging that users can easily mistrust AI plans, even plausible ones (He et al., 2025). This aligns with the concept of hybrid collaborative networks where humans and AI combine strengths (Adu-Kankam et al., 2024; llm_concat_cleaned.pdf).

**Diagram 5: Human-AI Collaborative Planning & Execution Interaction**

```
+-----------------------------------+
| Scenario Presentation (Trial)     |
| - Complex Task Presented          | (e.g., Optimize a complex energy system setting
+-----------------------------------+    or sequence of actions)
               |
               v
+-----------------------------------+
| AI Agent: Initial Plan Generation |
| - AI Proposes a multi-step Plan   | (e.g., for energy system optimization)
+-----------------------------------+
               |
               v
+-----------------------------------+
| User Review & Plan Editing        |
| - User reviews AI's plan          |
| - User can suggest modifications  |
| - AI incorporates feedback/edits  |
+-----------------------------------+
               |
               v
+-----------------------------------+
| Step-by-Step Guided Execution     |
| (Iterative Process)               |
+-----------------------------------+
| +-------------------------------+ |
| | Execute Current Step          | |
| | - AI presents next step       | |
| | - User executes (or simulates) | |
| +-------------------------------+ |
|                |                  |
|                v                  |
| +-------------------------------+ |
| | User Feedback / Approval      | |
| | - User provides feedback      | | (e.g., Success, issue, need for help)
| | - User approves/disapproves   | | (Allows user control)
| +-------------------------------+ |
|                |                  |
|                v                  |
| +-------------------------------+ |
| | AI Adjusts / Proceeds         | |
| | - Based on feedback, AI       | |
| |   adjusts plan or proceeds    | |
| +-------------------------------+ |
+-----------------------------------+
               | (Loop until task complete or terminated)
               v
+-----------------------------------+
| Post-Task Evaluation              | (Evaluation could include:)
|                                   | - Overall task performance/outcome
|                                   | - User trust in the AI agent
|                                   | - Perceived collaboration quality
|                                   | - Effort/satisfaction with the process
+-----------------------------------+
```

This design moves significantly beyond passive advice evaluation toward an active partnership between human and AI. It allows for continuous calibration of trust and reliance through explicit user involvement and feedback loops (He et al., 2025). Evaluating this type of interaction would involve assessing not just outcome metrics (e.g., energy savings achieved in simulation) but also process metrics like the number of edits, feedback points, successful steps, and user-reported trust and satisfaction throughout the collaboration (He et al., 2025). This aligns with the idea that human-AI collaboration can enhance creativity and problem-solving through complementary strengths and interactive processes (llm_concat_cleaned.pdf).

These alternative designs, while differing in their specific focus (explanation format, tailoring, interaction model), are all informed by the principle that effective human-AI interaction, particularly in complex domains like energy management, requires careful consideration of how the AI communicates, how advice is tailored, and how users are involved in the decision or action process. Building on the foundational insights from the current Gorman study regarding the impact of linguistic uncertainty and basic knowledge, these potential designs offer pathways for future research into more sophisticated and collaborative AI energy advisors. Research suggests that designing systems to match user decision-making approaches, whether routine or rational, is crucial (Gupta et al., 2015), and personalized, contextually relevant recommendations are key to driving behavioral change (Scott et al., 2011). Future work could explore how the elements of uncertainty, tailoring, explanation format, and user involvement intersect within these more complex interactive designs.





--------



# https://notebooklm.google.com/notebook/5f89be29-389a-4d18-8ef1-adb57ce564b9?pli=1



Drawing upon the provided sources, we can articulate the design of the "Gorman - AI Energy Study Proposal" and contrast it with various alternative or complementary approaches to human-AI collaboration in cognitive tasks, particularly those involving creative ideation and decision-making in domains like energy use or design. This analysis, grounded in principles from cognitive psychology and human-computer interaction, highlights distinct experimental paradigms and theoretical underpinnings.

### The Gorman - AI Energy Study Proposal Design: Calibrating Trust

The "Gorman - AI Energy Study Proposal" focuses specifically on the cognitive process of trust calibration and reliance in human-AI interaction within the domain of energy decision-making. The core objective is to understand how the linguistic expression of uncertainty in an AI advisor's output influences users' trust, confidence, and calibrated reliance on that advice. This situates the study within cognitive frameworks examining how individuals process potentially uncertain or fallible information from external sources, especially when making consequential decisions (e.g., related to energy use).

The study employs a structured experimental design with distinct phases:

```ascii
                               +--------------------------------+
                               |   Gorman Study: Trust Calibration|
                               +--------------------------------+
                                                |
                 +------------------------------+-----------------------------+
                 |                                                            |
   +-----------------------+            +--------------------------------+            +-----------------------+
   | 1. Baseline Assessments | ---------> | 2. Interactive Task (4 Trials) | ---------> | 3. Post-Task          |
   | (Phase 1)             |            | (Phase 2: Core Interaction)    |            | Questionnaires        |
   |                       |            |                                |            |                       |
   | - Individual Differences|            |   +------------------------+   |            | - Overall AI Trust    |
   |   (Trust Propensity,  |            |   | Trial (x4 repetitions) |   |            | - AI Perception/Mental|
   |   AI Familiarity)     |            |   |                        |   |            |   Model               |
   | - Energy Knowledge    |            |   | Scenario Prompt        |   |            | - Future Use/Reliance |
   |   (Objective & Perc.) |            |   |     |                  |   |            | - Self-Reflection     |
   | - Numeracy            |            |   |     v                  |   |            +-----------------------+
   +-----------------------+            |   | AI Response (Value,     |   |
                                        |   |   Explanation, Conf.)    |   |
                                        |   |     ^ (Uncertainty Manip.) |   |
                                        |   |     |                  |   |
                                        |   |   Participant Evaluates  |   |
                                        |   |   (Conf in AI, Action,   |   |
                                        |   |     Trust in AI)         |   |
                                        |   |     ^ (Key Measures:     |   |
                                        |   |       Reliance, Trust)   |   |
                                        |   |     |                  |   |
                                        |   |   Outcomes (compared     |   |
                                        |   |     to Actual Value)     |   |
                                        |   |     ^ (Calibration Measure)|   |
                                        |   +------------------------+   |
                                        |           ^                    |
                                        |           |                    |
                                        | (Moderated by Baseline        |
                                        |  Characteristics)            |
                                        +--------------------------------+
```
**Explanation of the Design:**

1.  **Baseline Assessments (Phase 1):** Participants first complete surveys measuring individual difference variables hypothesized to moderate human-AI interaction, such as general propensity to trust technology, familiarity with AI, and objective and subjective energy knowledge (energy literacy), along with numeracy skills. These measures are critical from a cognitive perspective as they assess pre-existing knowledge structures, cognitive abilities, and general attitudes that can influence how new information from an AI is processed and trusted.
2.  **Interactive Task (Phase 2):** This phase constitutes the core experimental manipulation and data collection. Participants engage with the AI energy advisor across multiple trials (four specified scenarios). For each scenario, they receive an energy-related query or prompt, followed by the AI's response, which includes an estimated value, an explanation, and a confidence level. The key manipulation here is the linguistic expression of uncertainty in the AI's response (e.g., hedging language vs. confident language), which varies by experimental condition. After reviewing the AI's response, participants provide evaluations: their confidence in the AI's estimate, their likely action (accept, verify, or reject the advice), and their trust in the AI's response for that specific scenario. This iterative interaction loop over multiple trials allows for the observation of dynamic trust formation and reliance patterns.
3.  **Post-Task Questionnaires:** Following the interactive task, participants complete final questionnaires assessing their overall trust in the AI system experienced, their perceptions and mental model of the AI's capabilities and limitations, likelihood of future use, and self-reflections on their reliance behavior. These measures capture higher-level cognitive constructs and behavioral intentions formed after the direct interaction experience.

**Theoretical Connections:** This design directly probes constructs central to cognitive psychology and human-AI interaction:

*   **Trust Calibration:** The alignment between a user's trust/confidence in an AI and the AI's actual accuracy or reliability is a primary focus, particularly how linguistic cues of uncertainty impact this calibration.
*   **Reliance:** Examining whether users appropriately rely on the AI's advice (e.g., accepting accurate advice, rejecting inaccurate advice) is a behavioral outcome linked to trust and calibration.
*   **Information Processing:** The study implicitly investigates how users process and integrate verbal (explanation, linguistic uncertainty) and numerical (estimated value, confidence score) information provided by the AI to form judgments of trust and confidence.
*   **Individual Differences:** Acknowledging that cognitive abilities (numeracy), domain-specific knowledge (energy literacy), and pre-existing attitudes (trust propensity, AI familiarity) modulate how users interact with and trust AI is crucial for designing effective systems for diverse users.

The study aims to contribute insights into designing AI advisors that users can trust appropriately, which is viewed as the ultimate goal for effective human-AI collaboration in the energy domain.

### Alternative Approaches: Frameworks for Human-AI Collaboration in Creativity and Ideation

In contrast to the Gorman study's focus on calibrated reliance in an advisory context, many other sources explore human-AI collaboration through the lens of creativity, idea generation, and design space exploration. These approaches often involve AI in more generative or collaborative roles, engaging different cognitive processes such as divergent thinking, convergent thinking, exploration, combination, and evaluation. Multiple frameworks and system designs are proposed:

**1. AI-Augmented Brainwriting / Collaborative Idea Generation:**

This approach integrates AI into group or individual ideation sessions, often following established methods like Brainwriting. The AI acts as a participant or facilitator, generating ideas or expanding upon human-generated ones.

```ascii
+--------------------------+
| AI-Augmented Brainwriting|
+--------------------------+
            |
+------------------------------+
| 1. Human Idea Generation     |
|    (Individual/Group)        |
|    (Divergent Thinking)      |
+------------------------------+
            |
+------------------------------+
| 2. Share & Review Ideas      |
|    (Group Whiteboard/Tool)   |
+------------------------------+
            |
+------------------------------+
| 3. AI Augmentation Phase     |
|    (Prompting AI based on   |
|     existing ideas/problem)  |
+------------------------------+
            |
+------------------------------+
| 4. AI-Generated Ideas Added  |
|    (New ideas, expansions,  |
|     alternative perspectives)|
+------------------------------+
            |
+------------------------------+
| 5. Human Evaluation &        |
|    Refinement Phase          |
|    (Convergent Thinking,     |
|     Selection, Combination)  |
+------------------------------+
            |
+------------------------------+
|        Iterative Cycle       |
+------------------------------+
```
**Explanation:** This framework involves distinct phases. Humans first generate initial ideas individually or as a group. These are then shared, often in a digital workspace. The AI is then prompted, using the existing ideas or problem statement as context, to generate new ideas or variations. These AI-generated ideas are added to the pool, and the human(s) evaluate, select, and refine the combined set of ideas. This process can be iterative, with AI being consulted multiple times. Some studies investigate the impact of AI ideas on the breadth of human exploration (flexibility).

**Theoretical Connections:** This model aligns with theories of creative problem-solving, emphasizing both divergent (generating many ideas) and convergent (selecting and refining ideas) thinking. The AI serves as a stimulus or co-contributor to expand the "solution space" explored. It also touches upon the Social Interdependence and Motivation (SIAM) theory in collaborative contexts. The challenge of effectively prompting AI to yield diverse and novel ideas (prompt engineering) is a key cognitive interface challenge.

**2. Interface-Centric Design Space Exploration (e.g., Knowledge Graph / Node-based):**

Systems like ConceptVis or Spellburst provide visual interfaces (like knowledge graphs or node-based structures) to help users generate, organize, and explore design concepts or code snippets with AI assistance.

```ascii
+------------------------------------+
| Interface-Centric Exploration      |
| (e.g., Knowledge Graph, Node View) |
+------------------------------------+
                 |
+------------------------------------+
| User interacts with Visual Nodes   |
| (Representing ideas, concepts,     |
| code, etc.)                        |
+------------------------------------+
                 |
+------------------------------------+
| User Prompts AI based on Node(s)   |
| (e.g., "Generate ideas related     |
|  to this node", "Modify this code")|
+------------------------------------+
                 |
+------------------------------------+
| AI Processes Input & Generates     |
| Output (New ideas, code, text,     |
| visual elements)                   |
+------------------------------------+
                 |
+------------------------------------+
| System Visualizes AI Output        |
| as New Nodes, Links, or Edits      |
| on the Graph/View                  |
+------------------------------------+
                 |
+------------------------------------+
| User Explores, Selects, Organizes, |
| and further Interacts with Nodes   |
+------------------------------------+
                 |
+------------------------------------+
|        (Iterative Process)         |
+------------------------------------+
```
**Explanation:** In this model, the interface itself structures the interaction and the information space. Ideas or concepts are represented as nodes in a graph, and the relationships between them are links. Users can interact with these nodes (e.g., clicking, dragging, prompting AI from a node context) to trigger AI generation. The AI's output is then integrated back into the visual structure, allowing users to see the generated content and its relation to existing ideas. This visual organization helps users navigate and manage the potentially large design space generated through AI collaboration.

**Theoretical Connections:** This approach addresses cognitive challenges related to managing complexity and navigating design spaces during ideation. It relates to theories of mental representations and how external visualizations can augment cognitive processes. The node-based structure provides a form of external memory and organizational scaffold, potentially reducing cognitive load compared to managing ideas in a linear list or chat interface. It also incorporates aspects of semantic vs. syntactic representations depending on the domain (e.g., code vs. concepts).

**3. Iterative Refinement and Co-Learning (e.g., Chain-of-Ideas / Teaching AI):**

These frameworks emphasize iterative cycles where humans and AI collaboratively refine outputs or where humans provide feedback to improve the AI's future performance. The "Chain-of-Ideas" (CoI) framework, for instance, structures the generation and refinement of research ideas and experiment designs through linked steps and agent feedback loops. The "Teaching AI" idea explores how human feedback can improve AI's future recommendations.

```ascii
+-------------------------------------+
| Iterative Refinement / Co-Learning  |
+-------------------------------------+
                  |
+-------------------------------------+
| 1. Human Input / Initial Idea       |
|    (e.g., Problem Statement, Draft) |
+-------------------------------------+
                  |
+-------------------------------------+
| 2. AI Generation / Processing       |
|    (e.g., Generate ideas,           |
|     Develop proposals, Draft code,  |
|     Apply CoT, Facet Recombination) |
+-------------------------------------+
                  |
+-------------------------------------+
| 3. Human Evaluation / Feedback      |
|    (Critique output, Rank options,  |
|     Provide corrections, "Teach" AI)|
+-------------------------------------+
                  |
+-------------------------------------+
| 4. AI Refinement / Learning / Next  |
|    Iteration Step                   |
|    (Incorporate feedback, Assess    |
|     novelty/feasibility, Generate   |
|     next step in chain)             |
+-------------------------------------+
                  |
+-------------------------------------+
|         (Iterative Cycle)           |
+-------------------------------------+
```
**Explanation:** This model views human-AI collaboration as a continuous loop of generation, evaluation, and refinement. The human provides input or evaluates AI output, and this feedback directly influences the AI's subsequent performance or the direction of the collaboration. The CoI agent, for example, uses iterative feedback and evaluation steps (e.g., novelty checking, feasibility assessment) to refine generated research ideas and experimental designs. The "Teaching AI" concept directly explores the human cognitive processes involved in providing feedback to an AI and how this might enhance both the AI's capability and the human's metacognitive understanding.

**Theoretical Connections:** This framework connects to theories of human-AI co-learning and metacognition. It emphasizes the iterative nature of creative and problem-solving processes, aligning with models where ideas evolve through cycles of generation, evaluation, and modification. The use of structured prompting techniques like Chain-of-Thought (CoT) within the AI processing step reflects attempts to make the AI's internal processing more transparent or effective, echoing aspects of explainable AI and cognitive simulation. This also touches upon the concept of agency in human-AI interaction, particularly whether users prefer proactive or reactive AI assistance.

### Comparative Analysis and Philosophical Underpinnings

Comparing the Gorman study design with these alternative frameworks reveals fundamental differences in focus and the nature of human-AI collaboration being investigated.

*   **Goal:** The Gorman study targets *calibrated reliance* on AI in a decision-support context, focusing on how users assess and appropriately use AI-provided information. The alternative frameworks focus on *augmenting human creativity and innovation*, using AI to stimulate, generate, or refine ideas in more open-ended tasks.
*   **AI Role:** In the Gorman study, the AI is primarily an *advisor* or *information source* providing estimates and explanations. In the creative frameworks, the AI is often a *collaborator*, *generator*, *stimulus*, or *tool* for exploration.
*   **Cognitive Processes Emphasized:** The Gorman study emphasizes cognitive processes related to evaluation, judgment, confidence assessment, and decision-making under uncertainty. The creative studies highlight divergent thinking (idea generation), convergent thinking (selection, refinement), exploration of search spaces, combination, and potentially metacognition (evaluating one's own or AI's creative process).
*   **Interaction Paradigm:** The Gorman study uses a trial-based question-answering format with detailed post-response evaluation. The creative frameworks employ more interactive paradigms, ranging from collaborative brainstorming sessions to visual graph manipulation and iterative refinement loops.

Philosophically, these different approaches reflect varying conceptualizations of AI's role. The Gorman study implicitly treats AI as a potentially fallible but useful *tool* for providing information, where the user's cognitive task is to correctly assess its trustworthiness and utility. The creative studies often lean towards viewing AI as a *partner* or *co-creator*, exploring the symbiotic potential of human and artificial intelligence working together to achieve novel outcomes. This distinction between AI as a mere tool and AI as a collaborative agent is a significant underpinning in the study of human-AI interaction. Furthermore, the exploration of AI in creativity touches upon the philosophical question of whether creativity is exclusively a human trait or if computational systems can also be considered creative, or at least augment human creativity. Frameworks like computational co-creativity specifically investigate how humans and AI can jointly engage in creative acts.

In conclusion, while the Gorman study provides a detailed look at trust calibration in a specific advisory context using a controlled experimental design, the broader landscape of human-AI collaboration research in cognitive domains encompasses diverse frameworks that leverage AI's generative and interactive capabilities to augment human creativity, explore complex design spaces, and engage in iterative co-refinement processes. These different approaches, while distinct, collectively advance our understanding of the multifaceted cognitive dynamics involved when humans work alongside artificial intelligence.




-------




# https://notebooklm.google.com/notebook/e2db05b8-b367-4198-8530-7e75709e6277?pli=1


Here, I will present an ASCII diagram outlining the design of the "Gorman - AI Energy Study Proposal," followed by diagrams for potential alternate approaches inspired by other concepts discussed in the sources, particularly in the context of cognitive enhancement or different forms of human-AI interaction. These alternative designs aim to explore different facets of human cognition and AI collaboration beyond the specific focus of trust calibration through linguistic uncertainty.

### Gorman - AI Energy Study Proposal: Current Design

The Gorman - AI Energy Study Proposal, as detailed in the provided documentation, focuses on investigating how linguistic uncertainty in AI advice affects user reliance, trust, and calibration in an energy conservation context. The design incorporates baseline measures of individual differences and domain-specific knowledge before exposing participants to AI advice manipulated in its linguistic style. The core interaction involves participants evaluating AI-generated estimates and explanations for energy-related scenarios.

The study follows a structured two-phase approach, culminating in assessments of user response and performance outcomes. Key components include:

*   **Phase 1: Baseline Assessment:** This phase collects data on relatively stable individual traits and pre-existing knowledge relevant to the task domain and AI interaction. This includes propensity to trust technology, AI literacy, numeracy, and crucially, both objective and subjective measures of energy knowledge and estimation ability.
*   **Manipulation:** The primary manipulation occurs within the AI advisor's response during the interaction phase, specifically concerning the linguistic expression of uncertainty (hedging vs. confident language) associated with the AI's estimates.
*   **Phase 2: AI Advisor Interaction:** Participants engage with the AI advisor across multiple trials (specified as 4 scenarios). For each scenario, they receive a prompt, the AI's estimated value and explanation, and then evaluate the AI's response by rating confidence, indicating a likely action (accept, verify, reject), and rating trust for that specific scenario.
*   **Post-Task Assessment:** After the interaction trials, participants complete questionnaires assessing their overall trust in the AI system, perceived accuracy, understanding of AI capabilities and limitations (e.g., hallucination, real-time data access, reasoning), self-reflection on reliance, likelihood of future use, and their mental model of how the AI operates.
*   **Outcomes:** The primary outcomes measured include user reliance (inferred from chosen actions like accept/verify/reject), subjective trust (both per-scenario and overall), and calibration (the alignment between confidence/decisions and the objective accuracy of the AI's estimates).
*   **Moderators:** Individual differences and baseline energy knowledge/literacy assessed in Phase 1 are hypothesized to moderate the effects of linguistic uncertainty on the outcomes.

Here is an ASCII diagram representing this design:

```ascii
+-------------------------------------------------------------------+
|               Gorman - AI Energy Study Proposal Design            |
+-------------------------------------------------------------------+
|                                                                   |
| +-------------------------+                                       |
| | Phase 1: Baseline       |                                       |
| | Assessment              |                                       |
| |-------------------------|                                       |
| | - Individual Differences|                                       |
| |   (Trust Propensity,    |                                       |
| |    AI Literacy, Numeracy)|                                       |
| | - Energy Knowledge/Lit  |                                       |
| |   (Objective, Subjective)|                                       |
| | - Energy Estimation Task|                                       |
| +-------------------------+                                       |
|          |                                                        |
|          V                                                        |
| +---------------------------------------------------------------+ |
| | Phase 2: AI Advisor Interaction (e.g., 4 Trials)              | |
| |---------------------------------------------------------------| |
| | Per Trial:                                                    | |
| | - Scenario Presentation (Prompt)                              | |
| | - AI Response (Estimate, Explanation)                         | |
| |   - LINGUISTIC UNCERTAINTY Manipulation (Hedging vs. Confident)| |
| | - Participant Evaluation                                      | |
| |   (Confidence Rating, Action Choice, Trust Rating)            | |
| +---------------------------------------------------------------+ |
|          |                                                        |
|          V                                                        |
| +-------------------------+                                       |
| | Post-Task Assessment    |                                       |
| |-------------------------|                                       |
| | - Overall Trust         |                                       |
| | - Perceived Accuracy    |                                       |
| | - Mental Model of AI    |                                       |
| | - Future Use/Reliance   |                                       |
| | - Self-Reflection       |                                       |
| +-------------------------+                                       |
|          |                                                        |
|          V                                                        |
| +-------------------------+                                       |
| | Study Outcomes          |<------------------------------------|
| |-------------------------|                                       |
| | - Reliance (Aggregated  |  Moderated by Phase 1 Variables      |
| |   Actions)              |  (Knowledge, Trust Propensity, etc.)|
| | - Subjective Trust      |                                       |
| |   (Trial + Overall)     |                                       |
| | - Calibration (Conf/Dec |                                       |
| |   vs. Accuracy)         |                                       |
| +-------------------------+                                       |
+-------------------------------------------------------------------+
```

This diagram illustrates the flow, starting with the baseline measures, proceeding through the interactive trials where the core manipulation is applied, followed by the post-task assessments, and finally showing the key outcomes influenced (potentially moderated) by the initial individual differences and knowledge. This design is well-suited for examining the direct impact of AI communication style on user trust and reliance calibration in a specific domain.

### Potential Alternate Designs / Brainstorming Improvement Ideas

Drawing inspiration from the broader literature presented in the sources, particularly concerning human-AI collaboration, cognitive enhancement, and alternative interaction paradigms, several alternative experimental designs could be envisioned. These designs might focus on different aspects of cognition or leverage AI in distinct roles compared to the energy advisor setup.

Here are two examples of potential alternate designs:

#### Alternate Design 1: Investigating the Impact of Contrastive Explanations on Learning and Trust Calibration

This design is inspired by the work on contrastive explanations (Bucinca et al., 2024), which suggests that highlighting the differences between an AI's recommendation and a plausible human alternative can foster cognitive engagement and learning. Instead of simply providing the AI's explanation, this design would explicitly contrast it with a predicted human response or misconception. The focus shifts slightly to evaluate not just reliance and trust, but also potential learning or improved understanding of the decision-making process.

*   **Theoretical Basis:** Draws heavily on theories of explanation in AI (XAI) (Gunning, 2017), particularly the idea of contrastive reasoning ("Why P rather than Q?") (Bucinca et al., 2024). It also touches upon mental models, as contrastive explanations can highlight gaps between human and AI mental models (Collins et al., 2024). Evaluation could involve assessing task learning or improved understanding, potentially linking to dual-process theories of cognition and analytical engagement (Litvinova et al., 2024).
*   **Design Components:**
    *   **Phase 1: Baseline Assessment:** Similar to the Gorman study, assess individual differences (e.g., Need for Cognition, AI literacy, domain knowledge). Could potentially assess baseline domain misconceptions or common heuristics.
    *   **Manipulation:** The type of AI explanation provided. Conditions could compare standard explanations to contrastive explanations (e.g., explaining why the AI's estimate/recommendation is better *than* a specific common human error or alternative approach). Factors like the quality or source of the "foil" (the human alternative) could be manipulated (Bucinca et al., 2024).
    *   **Phase 2: Interactive Task:** Participants evaluate scenarios and receive AI advice with either a standard explanation or a contrastive explanation. The task could still be estimation or decision-making, but perhaps framed in a domain where common human errors are known.
    *   **Assessments:** Measure reliance, trust, and calibration as in the Gorman study. Additionally, include measures of task learning (e.g., ability to perform similar tasks later without AI, or ability to explain the correct reasoning), cognitive engagement, or changes in mental models related to the task domain or the AI's logic.
    *   **Outcomes:** Reliance, Trust, Calibration, and crucially, Task Learning/Cognitive Engagement.

Here is an ASCII diagram representing this design:

```ascii
+-------------------------------------------------------------------+
|          Alternate Design 1: Contrastive Explanation Advisor      |
+-------------------------------------------------------------------+
|                                                                   |
| +-------------------------+                                       |
| | Phase 1: Baseline       |                                       |
| | Assessment              |                                       |
| |-------------------------|                                       |
| | - Individual Differences|                                       |
| |   (e.g., Need for Cognition)|                                   |
| | - Domain Knowledge      |                                       |
| | - Baseline Misconceptions?|                                   |
| +-------------------------+                                       |
|          |                                                        |
|          V                                                        |
| +---------------------------------------------------------------+ |
| | Phase 2: AI Advisor Interaction (e.g., N Trials)              | |
| |---------------------------------------------------------------| |
| | Per Trial:                                                    | |
| | - Scenario Presentation (Prompt)                              | |
| | - AI Response (Estimate/Recommendation)                       | |
| |   - EXPLANATION TYPE Manipulation                             | |
| |     (Standard vs. CONTRASTIVE Explanation: "Why P rather than Q")|
| | - Participant Evaluation                                      | |
| |   (Confidence, Action, Trust, Engagement Rating?)             | |
| +---------------------------------------------------------------+ |
|          |                                                        |
|          V                                                        |
| +-------------------------+                                       |
| | Post-Task Assessment    |                                       |
| |-------------------------|                                       |
| | - Overall Trust         |                                       |
| | - Mental Model Changes  |                                       |
| | - Task Learning Measures|                                       |
| | - Future Use/Preference |                                       |
| +-------------------------+                                       |
|          |                                                        |
|          V                                                        |
| +-------------------------+                                       |
| | Study Outcomes          |                                       |
| |-------------------------|                                       |
| | - Reliance              |                                       |
| | - Subjective Trust      |                                       |
| | - Calibration           |                                       |
| | - TASK LEARNING         |                                       |
| | - COGNITIVE ENGAGEMENT  |                                       |
| * Potentially moderated by Baseline Diffs/Knowledge.              |
+-------------------------------------------------------------------+
```
This design directly manipulates the *form* of the AI's explanation to test theories about how different explanation styles impact human understanding and learning, in addition to trust and reliance (Casolin et al., 2024).

#### Alternate Design 2: Investigating Collaborative Ideation with an AI Partner

This design shifts the focus from evaluating AI advice to a collaborative creative task, inspired by research on generative AI for ideation (Brinkmann et al., 2024; Burton et al., 2024; Guo et al., 2024; Kim & Maher, 2023). The AI acts as a creative partner or cognitive amplifier (Newman et al., 2025), generating ideas or providing inspiration in response to user input. The interaction is typically iterative, building upon previous contributions from both human and AI.

*   **Theoretical Basis:** Connects to theories of creativity, collaborative cognition, and computational creativity (Brinkmann et al., 2024; Burton et al., 2024; Kim & Maher, 2023). It explores the idea of AI as a "thought partner" (Collins et al., 2024) or a tool for enhancing human cognitive processes, particularly higher-order thinking skills (Newman et al., 2025). Concepts like prompt engineering (Brinkmann et al., 2024) and strategic prompting (Newman et al., 2025) are relevant. It also relates to how external representations (like sketches) can aid creative design (Edelman, 1998).
*   **Design Components:**
    *   **Phase 1: Baseline Assessment:** Assess relevant individual differences (e.g., creativity traits, domain expertise) and potentially baseline ideation performance or approach.
    *   **Manipulation:** This could involve different types of AI input or interaction styles (e.g., AI providing random ideas vs. conceptually similar ideas, different prompting strategies used by the AI or guided for the user, passive vs. collaborative AI use) (Guo et al., 2024; Kim & Maher, 2023; Newman et al., 2025). The task domain would be a creative one (e.g., design, problem-solving).
    *   **Phase 2: Collaborative Ideation Session:** Participants engage in an iterative process with the AI. The user provides input (e.g., prompt, sketch, partial idea), and the AI responds with generated content (e.g., text ideas, images, suggestions). This cycle repeats for a set time or until a goal is reached.
    *   **Assessments:** The primary assessment is the *output* of the collaborative process – the set of generated ideas. These ideas would be evaluated based on metrics relevant to creativity (e.g., novelty, quality, quantity, diversity) (Burton et al., 2024; Kim & Maher, 2023). Subjective measures could include participants' perception of the collaboration, sense of ownership over the final ideas (Guo et al., 2024), and satisfaction with the process.
    *   **Outcomes:** Ideation Performance (Quality, Novelty, Diversity, Quantity), Subjective Collaboration Experience, Sense of Idea Ownership.

Here is an ASCII diagram representing this design:

```ascii
+-------------------------------------------------------------------+
|        Alternate Design 2: Collaborative Ideation Partner         |
+-------------------------------------------------------------------+
|                                                                   |
| +-------------------------+                                       |
| | Phase 1: Baseline       |                                       |
| | Assessment              |                                       |
| |-------------------------|                                       |
| | - Individual Differences|                                       |
| |   (e.g., Creativity,    |                                       |
| |    Domain Expertise)    |                                       |
| | - Baseline Ideation?    |                                       |
| +-------------------------+                                       |
|          |                                                        |
|          V                                                        |
| +---------------------------------------------------------------+ |
| | Phase 2: Collaborative Ideation Session (Iterative Process)   | |
| |---------------------------------------------------------------| |
| | User Input (Prompt, Sketch, Idea)                             | |
| |          |                                                    | |
| |          V                                                    | |
| | AI Generation / Suggestion / Inspiration                      | |
| |          (e.g., Text Ideas, Images, Conceptually Similar)     | |
| |          - AI INPUT/INTERACTION STYLE Manipulation            | |
| |          |                                                    | |
| |          V                                                    | |
| | User Evaluation / Refinement / Selection                      | |
| |          |                                                    | |
| |          V (Repeat Cycle)                                     | |
| | Iterative Human-AI Interaction                                | |
| |                                                               | |
| +---------------------------------------------------------------+ |
|          |                                                        |
|          V                                                        |
| +-------------------------+                                       |
| | Post-Session Assessment |                                       |
| |-------------------------|                                       |
| | - Evaluation of Ideas   |                                       |
| |   (Quality, Novelty,    |                                       |
| |    Diversity, Quantity) |                                       |
| | - Perceived Collaboration|                                       |
| | - Sense of Ownership    |                                       |
| | - Satisfaction          |                                       |
| +-------------------------+                                       |
|          |                                                        |
|          V                                                        |
| +-------------------------+                                       |
| | Study Outcomes          |                                       |
| |-------------------------|                                       |
| | - IDEATION PERFORMANCE  |                                       |
| | - COLLABORATION EXP.    |                                       |
| | - IDEA OWNERSHIP        |                                       |
| * Potentially moderated by Baseline Diffs.                      |
+-------------------------------------------------------------------+
```

These alternate designs illustrate how the frameworks and concepts discussed in the sources, such as contrastive explanations, collaborative ideation, AI's role as a cognitive amplifier or partner, and the iterative nature of interaction, can lead to distinct experimental paradigms for studying human-AI collaboration and its impact on human cognition. While the Gorman study provides valuable insights into trust calibration based on AI communication style in an advisory role, these alternatives open up avenues to explore learning, creative performance, and different models of human-AI synergy. Each design requires careful consideration of the specific cognitive processes being investigated and the most appropriate metrics for evaluation, whether that be reliance and calibration, learning outcomes, or creative output quality and novelty.