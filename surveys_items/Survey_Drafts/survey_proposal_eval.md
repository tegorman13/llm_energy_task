



# https://chatgpt.com/g/g-p-680c9643408c8191a128bbb19854ccee-ai-brainstorm/c/68159017-61b0-8006-b292-00d43ef559f1

A concise evaluation shows that the draft survey already captures core constructs (numeracy, energy- and AI-literacy, trust) but still misses (a) an objective calibration check, (b) some key facets of energy and AI literacy, and (c) a granular mental-model measure. Drawing on recent findings about confidence-accuracy gaps in LLM use, automation bias, and energy-estimation heuristics, I provide (1) a critical gap analysis, (2) evidence-based solutions to every high-priority item in the to-do list, (3) a substantially revised, fully integrated proposal, and (4) a short list of remaining issues that should be addressed during piloting. Where appropriate, I justify each modification with empirical or theoretical work in cognitive psychology, human-AI interaction, and energy decision-making.

## 1  Critical Evaluation of the Current Survey and Proposal

### 1.1  Alignment with the Four Research Questions

* **RQ 1 (lay beliefs about LLM accuracy/utility).** Five custom Likert items (Sect 4.1/4.2) map neatly onto the two focal energy tasks (estimation vs. planning), but they measure *only* perceived accuracy/utility, not actual accuracy or confidence-accuracy alignment.
* **RQ 2 (role of numeracy & literacies).** Numeracy (Berlin Numeracy Test) and the cognitive sub-scale of the DeWaters Energy-Literacy Questionnaire are appropriate, but the survey omits action- and financial-literacy facets known to predict range-compression biases in appliance estimates (Kantenbacher & Attari, 2021 ([ScienceDirect][1])).
* **RQ 3 (accuracy- & trust-based willingness to rely).** Task-specific trust items (Sect 5) are well targeted, yet they rely on single-item behavioural-intention measures; scenario-choice tasks would provide richer criterion variance.
* **RQ 4 (moderation by general AI trust).** Two overlapping scales (TPA-revised and semantic-differential trust) inflate length without adding unique variance (Lee & See, 2004 ([SAGE Journals][2])).

### 1.2  Strengths

* Use of validated numeracy and trust scales anchors the study in well-established measurement traditions (Jian, Bisantz, & Drury, 2000 ([ResearchGate][3]); Cokely et al., 2012 ([Cambridge University Press][4])).
* Custom items differentiate between factual, estimation, and planning functions—mirroring distinct cognitive demands (Attari et al., 2010 ([PNAS][5])).

### 1.3  Key Gaps

| Gap                                                   | Consequence                                        | Evidence                                   |
| ----------------------------------------------------- | -------------------------------------------------- | ------------------------------------------ |
| Lack of objective calibration task                    | Cannot compute trust mis-/over-calibration indices | Steyvers et al., 2025 ([Nature][6])        |
| No behavioural benchmark (Attari task removed)        | RQ 1/H1 (bias mirroring) untestable                | Marghetis et al., 2019 ([Nature][7])       |
| Mental-model probe limited to one hallucination item  | Cannot classify users’ explanatory theories        | Chen et al., 2025 ([SAGE Journals][2])     |
| Overlapping general-trust scales                      | Survey length ↑, shared variance ↑                 | Lee & See, 2004 ([ACM Digital Library][8]) |
| MailS only subjective; no objective AI-literacy items | Misses competence–confidence dissociation          | PAILQ-6 (Grassini, 2024)                   |
| Action & financial energy literacy missing            | Undermines moderator tests                         | Andolfi et al., 2024 ([arXiv][9])          |

## 2  Addressing the To-Do List

### 2.1  Objective Calibration Component

* **Design.** Present three LLM-generated appliance-energy answers (one correct, one mildly erroneous, one grossly erroneous). Participants judge correctness (yes/no) and assign 0–100 % confidence. A Brier-type calibration score can be computed (Steyvers et al., 2025 ([Nature][7])).
* **Rationale.** Behavioural confidence-accuracy data provide a direct over-/under-trust metric (Kim et al., 2024 ([ScienceDirect][1])).

### 2.2  Re-introducing the Attari Appliance-Estimation Task

* Use the eight-item watt-hour estimation grid from Attari et al. (2010) to obtain personal error scores; juxtapose users’ error with perceived LLM accuracy to test H1 (bias mirroring).

### 2.3  Linking the Three Literacies to Evaluation Mechanisms

* **Numeracy → Quantitative plausibility checks** (Marghetis et al., 2019 ([ACM Digital Library][10])).
* **Energy literacy → Error spotting in domain knowledge** (Kantenbacher & Attari, 2021 ).
* **AI literacy → Awareness of hallucination & prompting skill** (Long & Magerko, 2020 ([ACM Digital Library][11])).

Revised hypotheses specify not only direction but *variance*. For example, high numeracy should reduce dispersion of accuracy ratings.

### 2.4  Expanded Mental-Model Battery

1. **Six-item attribution scale** contrasting ‘database’, ‘calculator’, ‘creative assistant’, etc. (Chen et al., 2025 ).
2. **Three objective MC items** on LLM limitations (training cut-off, hallucination, no real-time sensors).
3. **Open-ended prompt** coded for mechanistic vs. anthropomorphic reasoning (Bucinca et al., 2021 ([ACM Digital Library][8])).

### 2.5  Scenario-Choice Task for Behavioural Intentions

* **Vignette.** Buying a new clothes dryer with partial information: options = accept LLM estimate, verify with ENERGY STAR database, ignore. Choice scores reliance propensity (Parasuraman & Riley, 1997 ([ScienceDirect][12])).

### 2.6  Complete Energy-Literacy Battery

* **Add eight items** on high-impact actions and lifetime-cost concepts (Andolfi et al., 2024 ([SAGE Journals][13])).

### 2.7  Objective AI-Literacy Add-on

* Include **PAILQ-6** true/false block (Grassini, 2024 ([SAGE Journals][2])) to supplement MAILS subjective facets (Carolus et al., 2023 ([Nature][6])).

### 2.8  Streamlined Dispositional Trust

* Retain 6-item **TPA-Revised** two-factor form; drop semantic differential.

### 2.9  Psychometric Refinement & Analysis Plan

* Pilot (N ≈ 150) for factor-analytic testing, then compute calibration (Brier score), mediation (accuracy → trust → intentions), moderation (dispositional trust).

## 3  Revised Study Proposal (Key Sections Only)

### 3.1  Theoretical Framework (abridged)

Drawing on bounded-rationality accounts of energy judgement (Attari et al., 2010 ([PNAS][5])), automation-bias theory (Parasuraman & Riley, 1997 ([Nature][7])), and trust-calibration models (Lee & See, 2004 ([ACM Digital Library][11])), we posit that lay users assess LLM outputs via heuristic cues unless domain or AI expertise enables analytic scrutiny. Numeracy facilitates magnitude checking; energy literacy enables heuristic-error detection; AI literacy supports metacognitive awareness of hallucination risk. Misalignment between subjective confidence and LLM ground-truth accuracy (the *calibration gap*) is expected unless these literacies are high (Steyvers et al., 2025 ([Nature][6])).

### 3.2  Research Questions & Hypotheses (updated)

* **RQ 1.** How accurate are participants’ own appliance-energy estimates, and how do they believe an LLM would perform on the same items?
* **H1.** Users will project the same range-compression bias onto the LLM; difference scores will be attenuated but correlated with their own bias magnitude.
* **RQ 2.** Do numeracy, energy literacy, and AI literacy predict objective error detection, confidence calibration, and mental-model sophistication?
* **H2a–c.** Each literacy will independently reduce calibration error; interaction terms will test compensatory vs. additive effects.
* **RQ 3.** Does calibration mediate the path from perceived accuracy to reliance decisions?
* **H3.** Better-calibrated users will either verify or reject dubious LLM advice in the scenario task.
* **RQ 4.** Does dispositional trust moderate the calibration → reliance link?
* **H4.** High dispositional trust will weaken the effect of calibration on reliance, consistent with trust-repair findings.

### 3.3  Method Highlights

* **Sample.** U.S. adults (N = 800, Prolific, quota matched).
* **Procedure.** Numeracy → literacies → *Self-Estimate/LLM-Estimate* block (Attari task) → Calibration triads → Mental-model & attribution → Trust scales → Scenario task → Demographics. Block order counter-balanced.
* **Measures.**

  * **Objective accuracy.** Absolute log error (self) and perceived error (LLM).
  * **Calibration index.** |Confidence – correctness| aggregated.
  * **Trust.** Task-specific trust (α ≥ .85) and TPA-Revised (Trust/ Distrust).
* **Analysis.** Structural-equation modelling with bootstrapped mediation; Johnson–Neyman plots for moderation.

## 4  Remaining Issues

1. **Cognitive load & survey length**—estimate 20 min; include attention checks and consider split-half sampling for literacy batteries.
2. **Generalisation**—results may differ for niche appliances; a future lab study could embed real LLM queries.
3. **Common-method bias**—separate predictors and criteria temporally via mini-break screen.
4. **Ethics & debriefing**—inform participants about potential LLM inaccuracies and provide links to ENERGY STAR resources.
5. **Longitudinal validity**—follow-up after three months to examine behavioural uptake of energy advice.

---







----------

# https://aistudio.google.com/prompts/1h1ZCciIKalMSMrNMdP81YgkvmG7oUMlT

## 1. Evaluation of the Current Survey Draft

The draft survey instrument represents a thoughtful integration of validated scales and custom items designed to address your research questions.

**Strengths:**

1.  **Grounded in Literature:** Uses established, validated instruments for core individual difference constructs where available (Numeracy: BNT; AI Literacy: MAILS-Short; General AI Trust: TPA; Energy Literacy: ELQ items). This leverages existing psychometric work.
2.  **Multidimensional Constructs:** Acknowledges the multidimensionality of Energy Literacy (cognitive, affective, behavioral) and AI Literacy (MAILS facets), selecting measures accordingly.
3.  **Inclusion of Bias Benchmark:** Critically, it includes the Attari et al. (2010) estimation task. This is essential for measuring participants' baseline energy misperceptions, providing the necessary anchor to test H1 (comparing perceived LLM accuracy to human biases).
4.  **Specificity for LLMs & Energy:** Recognizes the need for custom items (Beliefs, Task-Specific Trust, Usage) because no standard scales exist for the specific intersection of LLMs and household energy management.
5.  **Logical Flow (Implicit):** While not explicitly stated, the implied order (individual differences -> beliefs -> trust -> behavior) is logical.

**Weaknesses & Areas for Improvement:**

1.  **Custom Item Validation:** The custom items (Parts 4, 5, 7) are necessary but currently lack validation. Their psychometric properties (reliability, validity) are unknown. **Suggestion:** Pilot testing these items is crucial before the main study. Factor analysis could help confirm if the perceived accuracy/utility items measure distinct facets as intended.
2.  **Measuring Trust Miscalibration:** The draft measures beliefs about accuracy and task-specific trust, but doesn't explicitly operationalize *miscalibration*. **Suggestion:** Calculate a miscalibration score. A potential operationalization is the *discrepancy* between a participant's perceived accuracy of an LLM for a specific energy estimation (Item 4.1.2) and their *own* demonstrated accuracy (or bias magnitude) on the corresponding item in the Attari estimation task (Part 2.4). High perceived LLM accuracy despite large personal estimation errors would indicate poor calibration. Alternatively, compare perceived accuracy ratings (Part 4.1) with objective LLM performance if known for certain queries (difficult) or expert ratings of LLM output quality. Comparing general AI trust (Part 6) vs. task-specific trust (Part 5) could also offer insights. *Explicitly define how miscalibration will be calculated.*
3.  **Improving Custom Belief/Accuracy Questions (Part 4):**
    *   **Clarity:** Ensure items clearly distinguish between different LLM *functions* (retrieving facts, estimating quantities, generating creative plans).
    *   **Specificity:** Add items probing *why* participants hold certain beliefs. E.g., "I believe LLMs are accurate for energy estimates because they have access to vast amounts of data." (Agree/Disagree). This gets closer to their mental model.
    *   **Bias Reflection:** Consider adding an item like: "How likely is an LLM to make the same kinds of energy estimation mistakes that people typically make (e.g., underestimating heating costs)?"
4.  **General Trust Measurement:** Using both TPA and the Semantic Differential cognitive items (Parts 6.1, 6.2) might be slightly redundant and add length. **Suggestion:** Consider using only one validated *general* cognitive trust scale. The TPA is standard, but the Semantic Differential might be more nuanced for cognitive facets. *Alternatively*, keep both but ensure factor analysis confirms they load distinctly if treated separately. Retaining TPA's distrust items is valuable.
5.  **Energy Literacy Scope:** The selected ELQ items provide a foundation. Ensure the cognitive items adequately cover knowledge relevant to *interpreting* LLM outputs (e.g., understanding units like kWh, basic efficiency principles).
6.  **AI Literacy Scope:** MAILS-Short is good for self-perception. Given H2c's focus on "understanding limitations," consider adding 2-3 objective questions about LLM fallibility (e.g., hallucination risk, data cutoffs, sensitivity to prompts) to complement the self-report.

## 2. Evaluation of the Study Proposal

**Novelty:**

*   The primary novelty lies in investigating LLMs specifically as *external cognitive aids* for household energy management, a domain known for significant human cognitive biases.
*   It uniquely connects energy perception literature (Attari, Marghetis) with HAI literature on trust, calibration (Steyvers, Kim), and the role of literacies (AI & Energy).
*   Examining how pre-existing energy biases might shape perceptions of LLM accuracy (H1) is a novel and important question.
*   Testing the interplay of *three* relevant literacies (Numeracy, Energy, AI) as predictors is more comprehensive than typical studies focusing on one.

**Logical Structure & Justification:**

*   The proposal follows a logical flow: establishing the problem (energy misperceptions), proposing a potential aid (LLMs), identifying factors influencing perception/use (literacies, trust), and formulating testable hypotheses.
*   The justification for including each literacy is grounded in relevant literature (Numeracy -> quantitative processing; Energy Literacy -> domain knowledge for evaluation; AI Literacy -> understanding AI capabilities/limits).
*   The link between beliefs/trust and behavioral intentions (H3, H4) aligns with standard technology acceptance models (though not explicitly named, the concepts are parallel).
*   **Area for Improvement:** The *mechanism* by which each literacy is expected to influence LLM evaluation could be slightly more explicit in the theoretical framework (e.g., Energy Literacy provides ground truth knowledge to spot factual errors, AI Literacy helps understand *why* errors occur or how to prompt better, Numeracy helps evaluate quantitative outputs).

**Measuring Mental Models of LLMs:**

*   The proposal correctly identifies that directly measuring internal "mental models" via surveys is challenging.
*   The chosen approach – using custom items to probe *beliefs* about LLM accuracy, utility, attributions for performance (e.g., data access, hallucination risk), and task-specific trust – is a **strong and appropriate proxy** method for assessing the *content and nature* of users' functional understanding and expectations (their working mental models) of LLMs in this context. This aligns with methods used in HCI to infer user models through belief elicitation.

## 3. Suggested Adjustments Summary

1.  **Refine Custom Items:** Pilot test and refine custom questions for LLM Beliefs (Part 4) and Task-Specific Trust (Part 5). Add items probing *reasons* for beliefs. Clearly differentiate estimation vs. planning tasks.
2.  **Operationalize Miscalibration:** Decide *how* trust miscalibration will be measured (e.g., discrepancy between perceived LLM accuracy and participant's own measured bias on Attari task). Add this calculation to the analysis plan.
3.  **Streamline General Trust:** Consider using only TPA (capturing trust/distrust) *or* the Semantic Differential (for cognitive facets), unless factor analysis supports distinct contributions warranting the length. TPA seems slightly more aligned with covering both positive and negative valence (distrust).
4.  **Supplement AI Literacy:** Add 2-3 objective MC/TF questions about LLM limitations (hallucinations, data cutoffs) to complement MAILS-Short.
5.  **(Optional) Behavioral Task:** If feasible in future work, replace self-reported willingness/frequency (Part 7) with a behavioral task (e.g., choosing whether to accept/verify LLM energy advice in scenarios).

## 4. Annotated Bibliography (10 Most Relevant Papers)

*(Selecting 10 core papers covering the key theoretical areas)*

1.  **Attari, S. Z., DeKay, M. L., Davidson, C. I., & Bruine de Bruin, W. (2010). Public perceptions of energy consumption and savings. *PNAS*, 107(37), 16054–16059.**
    *   **Focus:** Foundational study demonstrating systematic underestimation of high-energy use and overestimation of low-energy use by the public. Introduced relative estimation tasks.
    *   **Relevance:** Establishes the core human cognitive biases in energy perception that the proposal investigates in the context of LLMs (H1). Provides benchmark tasks.
2.  **Marghetis, T., Attari, S. Z., & Landy, D. (2019). Simple interventions can correct misperceptions of home energy use. *Nature Energy*, 4(10), 874–881.**
    *   **Focus:** Tested interventions (scale-use info, explicit heuristic) to improve energy estimates. Found heuristic improved underlying understanding and behavioral choice more than scale-use info. Linked understanding to climate beliefs/policy support.
    *   **Relevance:** Reinforces the link between energy perception accuracy and downstream outcomes. Provides validated behavioral choice tasks and shows heuristics matter for understanding.
3.  **Cokely, E. T., Galesic, M., Schulz, E., Ghazal, S., & Garcia-Retamero, R. (2012). Measuring Risk Literacy: The Berlin Numeracy Test. *Judgment and Decision Making*, 7(1), 25–47.**
    *   **Focus:** Development and validation of the Berlin Numeracy Test (BNT).
    *   **Relevance:** Provides the recommended, validated instrument for measuring objective numeracy (H2a), a key individual difference predictor.
4.  **DeWaters, J. E., & Powers, S. E. (2011). Energy literacy of secondary students in New York State (USA): A measure of knowledge, affect, and behavior. *Energy Policy*, 39(3), 1699–1710.**
    *   **Focus:** Development and validation of the multidimensional Energy Literacy Questionnaire (ELQ).
    *   **Relevance:** Provides the foundational framework and item pool for measuring multidimensional energy literacy (cognitive, affective, behavioral) as required by the proposal (H2b).
5.  **Koch, M. J., Carolus, A., Wienrich, C., & Latoschik, M. E. (2024). Meta AI literacy scale: Further validation and development of a short version. *Heliyon, 10*(21), e39686.**
    *   **Focus:** Development and validation of the MAILS short form (10 items).
    *   **Relevance:** Provides the recommended, validated, concise self-report instrument for AI literacy covering multiple facets (H2c).
6.  **Kim, S. S. Y., Liao, Q. V., Vorvoreanu, M., Ballard, S., & Vaughan, J. W. (2024). “I’m Not Sure, But...”: Examining the Impact of Large Language Models’ Uncertainty Expression on User Reliance and Trust. *arXiv:2405.00623*.**
    *   **Focus:** Investigated how LLM expressions of uncertainty affect user trust, reliance, and accuracy. Found first-person uncertainty reduced over-reliance.
    *   **Relevance:** Directly addresses LLM trust and reliance dynamics. Highlights the importance of how LLMs communicate, relevant to perceived accuracy and trustworthiness. Provides validated trust belief/intention scales (adapted McKnight).
7.  **Steyvers, M., Tejeda, H., Kumar, A., et al. (2025). What large language models know and what people think they know. *Nature Machine Intelligence*, 1–11.**
    *   **Focus:** Examined the "calibration gap" between LLM internal confidence and human confidence in LLM outputs. Found users overestimate accuracy, especially for longer explanations, but calibration improves when explanations reflect model confidence.
    *   **Relevance:** Provides strong empirical evidence for miscalibrated user perceptions of LLM accuracy, a core issue the proposal investigates in the energy domain. Highlights the importance of uncertainty communication.
8.  **Duro, E. S. D., Veltri, G. A., Golino, H., & Stella, M. (2025). Measuring and identifying factors of individuals’ trust in Large Language Models. *arXiv:2502.21028*.**
    *   **Focus:** Developed and validated the Trust-In-LLMs Index (TILLMI), finding factors of "closeness" (affective) and "reliance" (cognitive). Linked trust to personality and experience.
    *   **Relevance:** Provides a validated scale specifically for trust in LLMs, differentiating key dimensions relevant to the proposal (RQ4, H4).
9.  **Scharowski, N., Perrig, S. A. C., et al. (2025). To Trust or Distrust Trust Measures: Validating Questionnaires for Trust in AI. *arXiv:2403.00582*.**
    *   **Focus:** Validated different trust questionnaires (TPA, TAI) in AI contexts. Supported distinguishing trust and distrust as separate factors and found TAI had better psychometric properties than TPA in their study.
    *   **Relevance:** Informs the choice of general trust scales (RQ4, H4). Supports using measures that capture both trust and distrust dimensions, like the TPA, while noting ongoing validation debates.
10. **Shang, R., & Hsieh, G. (2025). Trusting Your AI Agent Emotionally and Cognitively: Development and Validation of a Semantic Differential Scale for AI Trust. *AIES 2024*, 1343–1356.**
    *   **Focus:** Developed and validated a semantic differential scale differentiating cognitive (competence, reliability) and affective (empathy, care) trust in AI agents.
    *   **Relevance:** Provides a tool to measure the cognitive dimensions of general AI trust more granularly (RQ4, H4), complementing the TPA.

## 5. Rewritten Proposal Sections


---

### **1. Proposal Theoretical Framework (Rewritten)**

This research investigates lay perceptions of Large Language Models (LLMs) as potential external cognitive aids for household energy management, integrating insights from three core theoretical domains: the cognitive science of energy decision-making, human-AI interaction (HAI) focusing on trust and calibration, and the role of individual literacies.

*   **Misperceptions, Cognitive Heuristics, and Bounded Rationality in Energy Judgments:** Foundational research demonstrates that lay understanding of household energy consumption is subject to systematic biases, notably the underestimation of high-impact activities and overestimation of low-impact ones (Attari et al., 2010). These errors are often attributed to reliance on simplifying cognitive heuristics (e.g., availability, affect) rather than accurate quantitative reasoning, consistent with **bounded rationality** models (Simon, 1957; Kantenbacher & Attari, 2021; Schley & DeKay, 2015). The current study examines whether individuals project these biases onto LLMs or perceive LLMs as tools capable of overcoming these limitations. We conceptualize the LLM as a potential "external aid" whose perceived accuracy and utility in providing energy estimates or plans are key determinants of its adoption.

*   **Literacies as Modulators of Information Processing and Evaluation:** The effectiveness of using any information source, including an LLM, is contingent upon the user's ability to critically process and evaluate the information provided. We posit that three distinct literacies act as crucial individual difference variables:
    *   **Energy Literacy (Cognitive Domain):** Possessing accurate knowledge about energy principles, consumption patterns, and conservation effectiveness (DeWaters & Powers, 2011) provides the necessary domain expertise to assess the plausibility of LLM-generated energy advice. Higher cognitive energy literacy should enable more critical evaluation and better detection of factually incorrect or contextually inappropriate LLM outputs.
    *   **AI Literacy:** Understanding the fundamental principles, capabilities, *and limitations* of AI, particularly LLMs (e.g., their probabilistic nature, potential for hallucination, reliance on training data), is crucial for forming realistic expectations and engaging in critical evaluation (Carolus et al., 2023; Long & Magerko, 2020). Facets like "Detect AI" and understanding ethical implications are particularly relevant for identifying potentially flawed or biased LLM suggestions.
    *   **Objective Numeracy:** The ability to comprehend and manipulate quantitative information (Cokely et al., 2012) is fundamental for evaluating the numerical estimates (kWh, costs, savings) central to energy management tasks, whether generated by humans or LLMs (Marghetis et al., 2019). Higher numeracy facilitates the assessment of quantitative plausibility.

*   **Calibrated Trust Theory and Human-AI Reliance Dynamics:** Effective human-AI collaboration depends on **calibrated trust**, where user reliance aligns with the AI's actual task-specific capabilities (Lee & See, 2004). Miscalibration (over- or under-trust) leads to suboptimal outcomes (Buçinca et al., 2021). Trust itself is multidimensional, involving cognitive assessments of **ability** (competence, reliability) and **integrity** (honesty, predictability), and potentially **benevolence** (perceived positive intentions) (Mayer et al., 1995; Glikson & Woolley, 2020). For LLMs, whose fluent outputs can inflate perceived competence (Kim et al., 2024) and whose internal processes are opaque, trust calibration is particularly challenging (Steyvers et al., 2025). Beliefs about an LLM's accuracy and utility for specific energy tasks serve as primary inputs to cognitive trust formation in this context. General trust/distrust attitudes towards AI may act as dispositional anchors or moderate the influence of task-specific beliefs on reliance decisions (Scharowski et al., 2025). This study conceptualizes trust as both a general disposition and a task-specific evaluation, predicting that both influence reliance intentions and behavior.

This integrated framework allows us to hypothesize specific relationships between user characteristics (literacies, numeracy), their beliefs about LLMs in the energy context (accuracy, utility, trust), and their willingness to use these tools, considering the potential for both beneficial augmentation and detrimental miscalibration.

---

### **2. Proposal Research Questions and Hypotheses (Rewritten)**

This study aims to understand how lay individuals perceive and potentially utilize LLMs for household energy management, focusing on the interplay between cognitive factors, literacies, and trust. We address the following Research Questions (RQs):

*   **RQ1 (LLM Perception - Baseline & Task Differentiation):** What are lay individuals' baseline beliefs about the **accuracy** and **utility** of current LLMs (e.g., ChatGPT, Gemini) for distinct household energy management tasks: (a) providing specific quantitative estimates (e.g., appliance kWh), and (b) generating holistic, personalized conservation plans? Do perceptions of accuracy reflect known human energy estimation biases?
*   **RQ2 (Predictors of LLM Beliefs):** How do individual differences in (a) objective numeracy, (b) cognitive energy literacy, and (c) AI literacy (particularly facets related to critical evaluation and understanding limitations) predict beliefs about LLM accuracy and utility for these energy tasks?
*   **RQ3 (Beliefs → Behavior Link):** How do task-specific beliefs about LLM accuracy and associated task-specific trust relate to individuals' self-reported willingness to use LLMs for energy decisions and their reported frequency of past usage?
*   **RQ4 (Role of General Trust):** Does general trust (or distrust) in AI mediate or moderate the relationship between task-specific beliefs (accuracy, trust) and willingness/frequency of LLM use for energy tasks?

From these questions and the theoretical framework, we derive the following Hypotheses (H):

*   **H1 (Bias Reflection):** Lay beliefs about LLM accuracy for energy estimation tasks will mirror documented human biases; specifically, users will perceive LLMs as relatively less accurate (or express less confidence in their accuracy) for high-energy-use appliances/actions compared to low-energy-use ones, reflecting a "compressive bias" similar to human judgment patterns (Attari et al., 2010).
*   **H2a (Numeracy → Calibration):** Higher objective numeracy will predict better-calibrated beliefs about LLM *quantitative* estimation accuracy (i.e., perceptions less influenced by the magnitude effect in H1).
*   **H2b (Energy Literacy → Critical Evaluation):** Higher cognitive energy literacy will predict more skeptical or critical beliefs regarding the accuracy and contextual appropriateness of LLM-generated energy advice and plans.
*   **H2c (AI Literacy → Critical Evaluation):** Higher AI literacy (specifically facets related to understanding limitations, detecting AI, and ethics on the MAILS scale) will predict more cautious or critical beliefs about LLM accuracy and trustworthiness for energy tasks.
*   **H3 (Beliefs → Intention/Use):** Higher perceived accuracy and higher task-specific trust in LLMs for energy tasks will independently predict greater willingness to use LLMs for energy decisions and higher frequency of past use.
*   **H4 (Mediation/Moderation by General Trust):** The positive relationship between task-specific beliefs (accuracy/trust) and use intentions/frequency (H3) will be partially mediated by general trust in AI. General distrust may moderate this relationship, weakening the link for more distrusting individuals.

---

### **3. Measuring User Mental Models of LLMs (Rewritten)**

Directly eliciting and measuring a user's complete internal "mental model"—their often implicit, dynamic, and potentially fragmented internal representation—of a complex system like an LLM via survey methods is inherently challenging. However, we can approximate key aspects of these functional mental models by probing specific **beliefs, expectations, and attributions** regarding the LLM's capabilities, limitations, and potential mechanisms within the defined context of household energy management. This approach treats the survey responses not as a direct map of an internal model, but as measurable indicators reflecting the *content and nature* of that model as it relates to the task domain.

Our measurement strategy targets the following facets of users' LLM mental models relevant to energy tasks:

1.  **Perceived Capabilities (Accuracy & Utility):** This assesses what users *believe* the LLM can accurately *do* in this domain.
    *   *Method:* Custom Likert-scale items asking participants to rate the perceived accuracy (e.g., for factual recall, quantitative estimation) and utility (e.g., for brainstorming, planning) of LLMs for specific energy-related queries (e.g., "How accurately can an LLM estimate refrigerator kWh?", "How useful is an LLM for creating a personalized savings plan?").
    *   *Rationale:* Directly measures expectations about performance, a core component of any functional mental model. Differentiating between task types (estimation vs. planning) probes the granularity of this perceived capability. Comparing patterns to known human biases (Attari task results) tests whether the mental model incorporates an understanding of task difficulty or simply projects human limitations/overconfidence.

2.  **Task-Specific Trust Dimensions:** This assesses confidence in relying on the LLM *for these specific energy tasks*, reflecting an output of the mental model's evaluation.
    *   *Method:* Custom Likert-scale items measuring trust in LLM outputs for factual information, quantitative estimates, and personalized plans. Items focus on reliability, confidence in acting on advice, and overall trustworthiness *for the energy context*.
    *   *Rationale:* Task-specific trust reflects the user's functional assessment based on their mental model of the LLM's competence and reliability *for this domain*.

3.  **Attributional Beliefs about LLM Functioning:** This probes users' (potentially naive) theories about *how* the LLM achieves its outputs in this context.
    *   *Method:* Custom Likert-scale items assessing agreement with statements reflecting different potential mechanisms or characteristics, such as:
        *   *Data Access:* "LLMs have access to real-time, specific data about my personal energy use." (Probes belief in data omniscience).
        *   *Error Potential:* "LLMs might confidently 'make up' incorrect energy facts or numbers." (Probes awareness of hallucination).
        *   *Processing Nature:* "LLMs 'understand' energy concepts like a human expert does." vs. "LLMs primarily predict words based on patterns in text data." (Probes anthropomorphism vs. statistical understanding).
        *   *Context Sensitivity:* "LLMs can adapt their energy advice effectively to unique household situations." (Probes belief in personalization capability).
    *   *Rationale:* These items aim to reveal underlying assumptions within the mental model regarding the LLM's knowledge sources, potential fallibility, depth of understanding, and ability to handle context, which theoretically underpin accuracy perceptions and trust judgments.


------




# https://chatgpt.com/g/g-p-680c9643408c8191a128bbb19854ccee-ai-brainstorm/c/68159017-61b0-8006-b292-00d43ef559f1

**Key take-aways.** The current survey addresses the four stated research questions (RQs) reasonably well but (a) lacks an **objective calibration task** that would let you compute behavioural over-/under-trust, (b) omits critical sub-facets of **energy literacy** (action, financial) and **AI literacy** (objective knowledge), and (c) measures mental models of LLMs only indirectly.  The study proposal is theoretically novel in linking *range-compression biases* in energy estimates to *calibration gaps* in LLM trust, yet several arguments need sharper articulation and tighter grounding in the literatures on automation bias, numeracy-based plausibility checking, and AI confidence communication.  Below I (1) map each survey block to the RQs and flag diagnostic gaps, (2) recommend concrete scale substitutions or additions, (3) offer improved item wordings for “Beliefs about LLM Accuracy,” (4) outline a behavioural **confidence-accuracy** module to quantify trust mis-calibration, and (5) provide fully rewritten proposal sections that integrate these changes.  Scenario-based belief items and remaining design issues follow.

---

## 1  Alignment of the Current Survey with the Four RQs

| RQ                                                | Needed evidence                                                      | Current blocks                                     | Adequacy                                                       | Missing                                                                 |
| ------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------------------- | ----------------------------------------------------------------------- |
| **RQ1.** Lay beliefs about LLM accuracy & utility | Perceived accuracy & utility across *estimation* vs *planning* tasks | Sect. 4.1/4.2 custom Likert items                  | Captures direction but not dispersion; no link to ground truth | Objective calibration triad; self-estimation benchmark                  |
| **RQ2.** Predictive role of numeracy & literacies | Validated numeracy, energy-, AI-literacy scales                      | Berlin Numeracy; ELQ (cognitive only); MAILS-Short | Partially adequate                                             | Action- & financial-literacy items; objective AI-literacy (e.g., AICOS) |
| **RQ3.** Effects on willingness & past use        | Intentions & frequency items; task-specific trust                    | Blocks 5 & 7                                       | Intentions one-dimensional; trust single facet                 | Scenario choice task; multiple trust facets                             |
| **RQ4.** Moderation by general AI trust           | Dispositional trust & distrust                                       | 12-item TPA + semantic differential                | Redundant, length ↑                                            | Keep 6-item TPA-Revised only                                            |

### Diagnostic gaps

* **No behavioural benchmark.** Dropping the Attari estimation task means H1 (bias mirroring) cannot be tested; range-compression patterns are well documented in that instrument ([PNAS][1]).
* **No calibration metric.** Without a confidence-accuracy module you cannot compute over-/under-trust (Steyvers et al., 2025) ([Nature][2]).
* **Mental-model coverage thin.** Only one hallucination item is included; richer attributional and objective-knowledge probes are needed (Chen et al., 2025) ([JMIR][3]).

---

## 2  Evaluation of Proposal Novelty, Logic, and Literature Coverage

* **Novelty.** Few studies have examined how *domain-specific cognitive biases* (e.g., energy range compression) interact with *LLM trust calibration*—a fruitful angle that extends prior work on automation misuse ([Massachusetts Institute of Technology][4]) and on confidence alignment in AI collaboration ([arXiv][5]).
* **Logical structure.** The argument flows from misperceptions → literacies → trust but never specifies *mechanistic links* (numeracy → magnitude checks, energy literacy → error spotting, AI literacy → failure-mode awareness).
* **Literature.** Relevant strands on uncertainty expression (Kim et al., 2024) ([arXiv][6]), cognitive forcing (Buçinca et al., 2021) ([Intelligent Interactive Systems Group][7]), and objective AI-literacy measurement (Markus et al., 2025) ([arXiv][8]) are absent.
* **Mental models.** Recent evidence that anthropomorphic vs. mechanistic views shape reliance (Laypeople’s LLM study, 2025) ([JMIR][3]) should inform the measurement plan.

---

## 3  Measurement Recommendations

### 3.1 Scales to adjust, drop, or add

| Construct           | Keep                                                                 | Drop                                    | Add / Replace                                                                             |
| ------------------- | -------------------------------------------------------------------- | --------------------------------------- | ----------------------------------------------------------------------------------------- |
| Numeracy            | Berlin Numeracy Test ([Society for Judgment and Decision Making][9]) | —                                       | —                                                                                         |
| Energy literacy     | ELQ cognitive block                                                  | —                                       | 8-item action + financial add-on (Andolfi et al., 2024) ([ResearchGate][10])              |
| AI literacy         | MAILS-Short                                                          | —                                       | 6 T/F items from PAILQ-6 or 10-item AICOS short-form for objective knowledge ([arXiv][8]) |
| Dispositional trust | 6-item TPA-Revised ([ResearchGate][11])                              | Semantic differential (length, overlap) | —                                                                                         |
| Task-specific trust | Custom items                                                         | —                                       | Separate “confidence in numerical outputs” vs. “confidence in recommendations”            |
| Calibration         | —                                                                    | —                                       | 3-item confidence-accuracy triad (see §3.3)                                               |

### 3.2  Improved “Beliefs about LLM Accuracy” item stems

1. *“If an LLM tells you that a **32 in. LED TV uses 45 W per hour**, how accurate do you expect that number to be?”*
2. *“When an LLM ranks home upgrades by **lifetime cost-effectiveness**, how often do you think the top suggestion is truly optimal?”*
3. *“Suppose an LLM claims you can save **\$120 per year** by lowering the thermostat 2 °F. How plausible is that estimate?”*

Use 0–100 slider (very implausible → very plausible) to yield continuous data.

### 3.3  Behavioural trust-calibration module

* **Stimuli.** Show three ChatGPT answers to Attari-style appliance questions (one ground-truth, one ±30 % error, one ±300 % error).
* **Task.** Participants judge correctness (Yes/No) and assign 0–100 % confidence.
* **Indices.** Compute (1) *Brier score* per item and (2) *over-confidence* = mean(confidence – accuracy). Approaches mirror recent calibration work in LLM settings ([Nature][2]).

---

## 4  Scenario-Based Belief / Reliance Items (examples)

1. *“You are comparing two washing machines; an LLM asserts Model A will cost \$18/yr less to operate.  Do you **accept, verify, or ignore** this claim?”*
2. *“An LLM suggests replacing attic insulation before upgrading lighting to cut bills by 15 %.  How likely are you to follow that ordering without external confirmation?”* (1 = very unlikely, 7 = very likely)
3. *“Your utility website quotes \$0.14/kWh; the LLM uses \$0.10.  Do you adjust its plan, request clarification, or keep it as-is?”*

These vignette choices can be coded as *accept*, *verify*, *reject*—a behavioural proxy for reliance.

---

## 5  Rewritten Proposal Sections

### 5.1 Proposal Theoretical Framework

Large language models (LLMs) promise to serve as *external cognitive aids* for household energy decisions, yet their value hinges on users’ ability to calibrate trust to actual system accuracy.  Drawing on **bounded-rationality theory** (Simon) and decades of work on **automation misuse/disuse** ([Massachusetts Institute of Technology][4]), we argue that users default to heuristic cues—fluency, confidence, anthropomorphic language—when judging LLM outputs unless domain or AI expertise triggers analytic scrutiny.  Three literacies modulate this scrutiny: **numeracy** supports quantitative plausibility checks, **energy literacy** enables detection of technically implausible claims, and **AI literacy** affords awareness of hallucination and prompting pitfalls.  When these competencies are low, users may fall into the *calibration gap*—high stated confidence paired with low objective correctness—as documented in recent LLM work (Steyvers et al., 2025) ([Nature][2]) and in earlier calibration studies of automation aids ([arXiv][5]).  Conversely, excessively low trust (disuse) may arise when dispositional distrust overrides accurate AI performance signals ([SpringerLink][12]).  Our framework therefore integrates **confidence-accuracy alignment** and **domain-specific bias transfer** to predict reliance behaviours.

### 5.2 Proposal Research Questions and Hypotheses

* **RQ1. Accuracy projection.** Do people project their own range-compression errors in appliance energy estimation onto expected LLM performance?

  * **H1.** Participants’ absolute log-error in self estimates will positively correlate with their perceived error for LLM estimates.
* **RQ2. Literacy mechanisms.** How do numeracy, energy literacy (cognitive + action + financial), and AI literacy (subjective + objective) predict (a) confidence-accuracy calibration and (b) mental-model sophistication?

  * **H2a.** Higher numeracy → lower dispersion in perceived LLM numerical accuracy.
  * **H2b.** Higher energy literacy → greater detection of implausible LLM recommendations.
  * **H2c.** Higher AI literacy → stronger recognition of hallucination risk and lower over-confidence.
* **RQ3. Reliance decisions.** Does calibration mediate the relation between perceived accuracy and scenario-based reliance?

  * **H3.** Better-calibrated users will choose “verify” more often than “accept” or “ignore.”
* **RQ4. Dispositional trust moderation.** Does dispositional trust in AI modulate the calibration → reliance path?

  * **H4.** High dispositional trust attenuates the negative effect of mis-calibration on reliance (i.e., high-trust users rely even when poorly calibrated).

### 5.3 Measuring User Mental Models of LLMs

1. **Attributional beliefs (6 items, 7-pt Likert).** Data-base omniscience, reasoning depth, contextual personalisation, hallucination frequency, self-learning, benevolence.
2. **Objective knowledge (3 MC items).** Training-data cut-off, lack of live sensors, probabilistic text prediction.
3. **Open-ended explanation (≤60 words).** “Describe in your own words how ChatGPT would estimate the annual kWh for your refrigerator.”  Responses coded (0 = no mechanism, 1 = statistical pattern, 2 = database lookup, 3 = causal reasoning).
4. **Mental-model confidence.** “Rate how confident you are (0–100 %) that your description is correct.”  Enables meta-model calibration.

### 5.4 Background and Rationale

Consumers routinely **under-estimate** high-load appliances and **over-estimate** low-load devices, a bias driven by salient cues such as device visibility and duration (Attari et al., 2010) ([PNAS][1]).  Although numerical feedback (Marghetis et al., 2019) ([Nature][13]) and heuristic prompts can attenuate these biases, the cognitive effort required often limits uptake.  LLMs could supply just-in-time estimates and personalised plans, yet current systems **hallucinate** and lack real-time consumption data; users rarely have insight into these limitations (Kim et al., 2024) ([arXiv][6]).  Over-trust therefore poses clear risks of costly mis-decisions, while under-trust may forgo potential savings.  Prior automation research highlights how **misuse** (over-reliance) arises when users accept AI advice despite warning signs ([Massachusetts Institute of Technology][4]), and recent cognitive forcing studies show that simple interface interventions can mitigate this risk (Buçinca et al., 2021) ([Intelligent Interactive Systems Group][7]).  Yet little work bridges these insights with the **energy-literacy** literature, where action and financial sub-facets shape decision quality (Energy Literacy Review, 2024) ([ResearchGate][10]).  The present study closes this gap by systematically linking **three literacies** to **confidence-accuracy calibration** and **reliance behaviours** in an energy domain where quantitative errors carry real economic and environmental costs.

### 5.5 Rationale and Implications

Characterising who is **most vulnerable** to over-trust or under-trust will inform two design levers: (1) interface nudges that elicit *analytic checks* when numeracy is low (e.g., uncertainty prompts), and (2) micro-lessons tailored to specific knowledge gaps (e.g., cost-of-ownership primers for financially illiterate users).  Accurate calibration metrics also enable *personalised reliability dashboards* that modulate AI confidence displays, a strategy shown to improve decision outcomes in recent calibration research ([arXiv][5]).  Beyond consumer energy behaviour, findings generalise to other domains where LLM outputs meet entrenched human biases—health, finance, climate risk—thereby advancing theory on **human-AI joint cognition** and informing policy debates on AI transparency.

---

## 6  Remaining Issues and Next Steps

1. **Length.** Projected completion time \~22 min; consider split-sample design for literacy batteries.
2. **Common-method variance.** Insert a 30-s distractor game between predictors and outcome blocks.
3. **Sampling.** Quota by U.S. region and household income ensures variance in HVAC usage.
4. **Piloting.** Conduct exploratory factor analysis (N≈150) to confirm new attributional items and examine calibration score distributions.
5. **Ethics.** Debrief with links to ENERGY STAR calculators and plain-language AI factsheets.

---

### References

Attari, S. Z., DeKay, M., Davidson, C., & Bruine de Bruin, W. (2010). *PNAS*, 107, 16054-16059. ([PNAS][1])
Berlin Numeracy Test. (2012). *Society for Judgment & Decision Making*. ([Society for Judgment and Decision Making][9])
Buçinca, Z., Malaya, M., & Gajos, K. (2021). *CHI*. ([Intelligent Interactive Systems Group][7])
Energy Literacy Review. (2024). *Review in Education*. ([ResearchGate][10])
Jian, J.-Y., Bisantz, A., & Drury, C. (2000). *Int. J. Cognitive Ergonomics*. ([ResearchGate][11])
Kim, S. S. Y., et al. (2024). *arXiv:2405.00623*. ([arXiv][6])
Marghetis, T., Attari, S., & Landy, D. (2019). *Nature Energy*, 4, 874-881. ([Nature][13])
Markus, A., Carolus, A., & Wienrich, C. (2025). *arXiv:2503.12921*. ([arXiv][8])
Parasuraman, R., & Riley, V. (1997). *Human Factors*, 39, 230-253. ([Massachusetts Institute of Technology][4])
Steyvers, M., et al. (2025). *Nature Machine Intelligence*, 1-11. ([Nature][2])
Trust in algorithmic decision-making study. (2025). *AI & Society*. ([SpringerLink][12])
Confidence alignment in AI collaboration. (2025). *arXiv:2501.12868*. ([arXiv][5])





---------


# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1

**Evaluation of the Current Survey Draft**

The current draft of the survey instrument demonstrates thoughtful consideration in its design to address the proposed research questions (RQs). It seeks to operationalize complex constructs such as individual differences in literacy and numeracy, subjective beliefs about LLMs, trust perceptions, and self-reported behavioral intentions regarding LLM use in the energy domain.

*   **Alignment with RQ1 (Lay Beliefs about LLM Accuracy/Utility and Differentiated Trust):** The survey includes custom Likert scale items specifically designed to probe perceived accuracy, utility, and task-specific trust for two distinct energy tasks: appliance energy estimation and energy-saving plan generation. This domain-specific approach is appropriate given the lack of standardized scales for LLM capabilities in the energy context. The inclusion of distinct items for estimation versus planning tasks directly addresses the need to examine differentiated trust based on the LLM's function (informant vs. advisor). However, a notable weakness is that these items capture *only* subjective perceptions, lacking measures of actual LLM accuracy or the alignment between perceived and actual accuracy (calibration). This limits the ability to directly test the hypothesis (H1) that perceived accuracy mirrors human biases, as it relies on comparing subjective beliefs to external human data rather than assessing individual calibration.
*   **Alignment with RQ2 (Influence of Individual Differences):** The survey incorporates measures for objective numeracy (e.g., Berlin Numeracy Test items), multidimensional energy literacy (cognitive knowledge, affective, behavioral components), and AI literacy (MAILS Short Form facets). Using validated or adapted items from established scales for these constructs (BNT, ELQ/ELS, MAILS-SF) is a strength, leveraging existing psychometric work. These measures serve as key predictor variables, intended to correlate with belief scores and potentially calibration. However, the energy literacy section currently omits crucial action and financial literacy facets known to predict human energy estimation biases (Kantenbacher & Attari, 2021). The AI literacy measure is self-report only, which carries the risk of self-perception biases like the Dunning-Kruger effect. While the revised RQ2 explicitly includes predicting *objective reliance calibration*, the initial survey draft lacked a direct measure for this.
*   **Alignment with RQ3 (Influence of Specific Beliefs/Trust on Usage):** The survey includes custom items measuring self-reported willingness to use and recent frequency of using LLMs specifically for household energy management tasks. This domain specificity is appropriate. These items function as outcome variables, linked to perceived accuracy and task-specific trust. A weakness is that the behavioral intention measures rely on single-item self-reports, whereas best practice often recommends multi-item scales or behavioral choice tasks for greater reliability and ecological validity. The revised RQ3 also incorporates *objective reliance calibration* as a predictor alongside subjective perceptions, requiring a behavioral measure.
*   **Alignment with RQ4 (Mediation/Moderation by General Trust/Distrust):** The survey includes measures for general trust and distrust in AI using validated scales such as the TPA-Revised. Measuring trust and distrust as separate constructs is a strength supported by psychometric evidence (Lai et al., 2024). These measures are intended to test the mediating or moderating role of dispositional trust. A potential area for refinement is the inclusion of two potentially overlapping general trust scales (TPA and Semantic Differential), which could inflate survey length without guaranteed distinct variance (Lee & See, 2004). Like RQ2 and RQ3, the lack of an objective calibration measure in the initial draft limits the full scope of testing hypotheses related to calibration (H4).

Overall, the survey draft has a logical structure proceeding from individual differences to beliefs, trust, and behavior. The use of validated scales for established constructs is commendable. However, the reliance on subjective self-report for perceived accuracy and the absence of a direct measure of objective trust calibration represent significant limitations for fully addressing the research questions and testing hypotheses related to behavioral reliance and miscalibration.

**Evaluation of the Current Study Proposal**

The proposed study represents a novel and logically structured investigation grounded in pertinent theoretical literatures. The confluence of applying Large Language Models to household energy management—a domain characterized by pervasive human cognitive biases (Attari et al., 2010; Kantenbacher & Attari, 2021; Marghetis et al., 2019)—and examining user trust and reliance dynamics in this context is an underexplored area.

*   **Novelty:** The explicit linkage of established cognitive biases in energy perception (Attari et al., 2010; Marghetis et al., 2019) with user perceptions and reliance on LLMs in this domain is a key strength and contribution. This creates a "dual-bias environment" (Kantenbacher & Attari, 2021) where understanding the interaction between pre-existing human misperceptions and the "epistemic uncertainty" introduced by LLMs (e.g., hallucinations) is critical.
*   **Logical Structure and Justification:** The proposal's framework logically progresses from individual predispositions (numeracy, energy literacy, AI literacy) to domain-specific beliefs and trust, culminating in behavioral intentions and reported usage, mediated/moderated by general AI trust.
    *   **Energy Decision-Making:** The proposal appropriately grounds the work in the literature on bounded rationality and cognitive biases in energy judgments (Attari et al., 2010; Kantenbacher & Attari, 2021; Marghetis et al., 2019). Framing LLMs as potential decision aids to overcome human limitations (e.g., poor estimation, suboptimal planning) provides a clear rationale.
    *   **Literacies:** The integration of multidimensional energy literacy (Van Den Broek et al., 2019), objective numeracy (Peters et al., 2022), and AI literacy (Long & Magerko, 2020) is well-justified. These literacies are hypothesized to function as "epistemic vigilance" mechanisms (Kantenbacher & Attari, 2021), enabling users to critically evaluate LLM outputs and form more calibrated judgments.
    *   **Human-AI Reliance and Uncertainty:** The focus on "calibrated trust" (Lee & See, 2004) is central to the human-AI interaction literature. The proposal highlights the risk of *miscalibrated trust*, particularly over-reliance, which can arise when users uncritically accept inaccurate LLM outputs, a risk amplified by the "calibration gap" observed with LLMs (Steyvers et al., 2025). The justification for investigating uncertainty communication as a potential means to improve calibration (Buçinca et al., 2021) is also strong.
    *   **Trust in AI:** The inclusion of general dispositional trust and distrust (Lai et al., 2024) alongside task-specific trust aligns with multi-level trust models in HRI and is important for understanding how broader attitudes influence specific interactions.

A primary issue in the initial proposal drafts was the implicit nature of the mechanisms linking literacies and mental models directly to *calibration*. While discussed conceptually, the operationalization and specific hypotheses needed tightening to reflect how the measures would capture these links, particularly the need for behavioral or objective calibration tasks. The revised proposal explicitly adds an "Objective Reliance Calibration Task" to address this, strengthening the link between theory and method.

**Issues Related to Measuring Mental Models of LLMs**

Understanding users' mental models of LLMs is crucial because these internal representations govern how users interpret AI outputs, anticipate system behavior, and calibrate their trust (Liao & Sundar, 2022). The initial approaches described in some sources for measuring mental models were noted as weak, relying on simple self-report items. While basic Likert items on perceived accuracy or capabilities capture aspects of the mental model (e.g., perceived competence), they often fail to probe the underlying "tacit theories" users hold about *how* the LLM works, its data sources, limitations (e.g., hallucination risk, data cutoffs), or processing style. Without understanding these beliefs, it is difficult to explain *why* users perceive accuracy or calibrate trust in a particular way.

The revised approach to measuring mental models, which includes an open-ended question for participants to describe their understanding and multiple belief statements probing specific attributional beliefs (e.g., data access, potential for error, human-likeness), is a significant improvement. This multi-method approach allows for richer, more nuanced assessment beyond a single self-rated score. It acknowledges that mental models are complex cognitive structures that may include both explicit knowledge and implicit assumptions.

**Suggestions for Scales and Question Improvements**

*   **Scale Adjustments:**
    *   **Energy Literacy:** As recommended, incorporate measures of *action* and *financial* energy literacy alongside cognitive knowledge. These facets are particularly relevant for evaluating LLM advice on energy-saving actions and cost implications. Adapted items from the ELQ (DeWaters & Powers, 2011/2013) or ELS Short Form covering these dimensions are advisable.
    *   **AI Literacy:** Supplement the self-report MAILS-Short (Koch et al., 2024) with a few objective questions about LLM capabilities and limitations (e.g., hallucination, data recency). This helps mitigate the risk of self-report biases and provides a measure of actual knowledge about the tool's constraints, which is theoretically linked to critical evaluation (Long & Magerko, 2020).
    *   **General Trust in AI:** Consider whether both the TPA-Revised (Lai et al., 2024) and the Semantic Differential scale (Shang et al., 2024/2025) are necessary. While the Semantic Differential captures affective trust, which is relevant given the anthropomorphic nature of LLMs, the primary focus seems cognitive. If using both, confirm through factor analysis that they measure distinct dimensions. The TPA's two-factor structure (Trust/Distrust) is psychometrically supported for AI context and valuable.
    *   **Behavioral Intentions:** Strengthen willingness-to-use measures by using multiple Likert items or, ideally, scenario-based behavioral choice tasks. Scenario tasks offer "richer criterion variance" by requiring participants to make concrete decisions based on AI outputs, providing a more ecologically valid measure of reliance.

*   **Improving Belief/Accuracy Questions & Measuring Miscalibration:**
    *   **Belief/Accuracy Wording:** Refine wording to clearly distinguish between different LLM functions (factual retrieval, quantitative estimation, planning). Use parallel bipolar labels (e.g., "Very Inaccurate" to "Very Accurate") and include reverse-keyed items to reduce acquiescence bias. Add items probing *why* users hold certain beliefs about accuracy (e.g., attributing accuracy to vast data access). Include items specifically asking about the likelihood of LLMs making *human-like biases* in energy estimation.
    *   **Measuring Trust Miscalibration:** Operationalize miscalibration explicitly. A key approach is measuring the *discrepancy* between a user's perceived LLM accuracy (or confidence) for a task and the actual correctness (or bias) of the LLM's output for that task or the user's own performance on a parallel task. Comparing perceived LLM accuracy for appliance estimation tasks (using custom items) to participants' *own* demonstrated estimation bias (measured via the Attari et al., 2010 task) can provide a "Bias Projection" score (H1b). The "Objective Reliance Calibration Task," where users rate confidence in specific LLM outputs and confidence is compared to actual accuracy, is essential for computing calibration scores (e.g., Brier scores).

**Rewritten Proposal Sections**

Based on the evaluations and suggestions, here are rewritten sections incorporating the feedback and leveraging the theoretical foundations from the source material:

**1) Proposal Theoretical Framework (Rewritten)**

This research examines the dynamics of human-AI interaction within the domain of household energy management, a context uniquely characterized by a "dual-bias environment". Consumers often possess suboptimal mental models of energy consumption, exhibiting systematic biases such as range compression (underestimating high energy use/savings, overestimating low energy use/savings) when estimating appliance energy use and savings (Attari et al., 2010; Kantenbacher & Attari, 2021; Marghetis et al., 2019). These cognitive heuristics, coupled with bounded rationality stemming from limited numeracy and incomplete feedback (Simon, 1957; Blasch et al., 2019, cited in source), impede effective energy decision-making. The advent of Large Language Models (LLMs) introduces a potential avenue to serve as external cognitive aids, providing information or generating plans to mitigate these human limitations. However, LLMs also introduce a second layer of "epistemic uncertainty" due to their capacity for generating confident yet sometimes inaccurate or "hallucinated" outputs.

We integrate three core theoretical strands to understand how individuals navigate this complex environment when consulting LLMs for energy tasks. First, **bounded-rational energy cognition** provides the foundation for understanding the pre-existing human cognitive landscape, particularly how individuals substitute salient cues for objective quantitative understanding (Kantenbacher & Attari, 2021). Second, **literacy-moderated information processing** posits that individual differences in objective numeracy (Peters et al., 2022), multidimensional energy literacy (Van Den Broek et al., 2019), and AI literacy (Long & Magerko, 2020) influence individuals' ability to evaluate information. Numeracy supports quantitative evaluation; energy literacy supplies domain-specific schemata for error detection; and AI literacy affords algorithmic skepticism by providing conceptual understanding of AI capabilities and limitations. Together, these literacies contribute to "epistemic vigilance"—the cognitive process of evaluating the credibility and accuracy of incoming information, particularly relevant when assessing LLM outputs. Third, **calibrated-trust accounts of human-AI reliance** (Lee & See, 2004) highlight that optimal system use occurs when a user's subjective trust aligns with the AI's objective reliability. Miscalibration, particularly over-reliance stemming from a "calibration gap" where user confidence exceeds LLM accuracy (Steyvers et al., 2025), is a significant risk in domains where users lack expertise to verify AI outputs. This study investigates how pre-existing energy misconceptions interact with this calibration gap, hypothesizing that human biases may be projected onto AI evaluations (H1b) and influence reliance patterns, potentially amplifying over-trust for tasks susceptible to human overestimation and under-trust for those susceptible to human underestimation. We posit that individual differences in literacies and users' evolving mental models of LLM capabilities (Liao & Sundar, 2022) moderate these relationships, shaping beliefs, trust calibration, and ultimately, appropriate reliance (H2, H3, H4).

**2) Proposal Research Questions and Hypotheses (Rewritten)**

Building on the integrated theoretical framework, this study addresses four primary research questions (RQs) and associated directional hypotheses (Hs), focusing on lay perceptions, calibration, and reliance on LLMs for household energy management tasks.

*   **RQ1:** What are lay individuals' baseline perceptions of current LLMs' accuracy and utility for specific household energy tasks (e.g., estimating appliance consumption, designing conservation plans), and how do these perceptions reflect known human cognitive biases in energy judgments?
    *   **H1a (Human Bias Replication):** Consistent with prior research (Attari et al., 2010; Marghetis et al., 2019), participants' own estimates of appliance energy use and savings effectiveness will exhibit systematic cognitive biases, particularly range compression (underestimating high consumption/savings, overestimating low consumption/savings).
    *   **H1b (Bias Projection):** Lay individuals' subjective perceptions of LLM accuracy for energy estimation tasks will be positively correlated with the degree of bias in their *own* energy estimates. This suggests that users may project their existing (mis)perceptions and cognitive biases onto their evaluation of the AI's capabilities rather than making an objective assessment.
    *   **H1c (Baseline Perceptions):** On average, lay participants will perceive current LLMs as moderately to highly accurate and useful for household energy management tasks, but will overestimate the LLMs' accuracy compared to objective benchmarks (tested in RQ4), reflecting a general tendency towards over-trust or over-attribution of capability to fluent AI systems (Agüera y Arcas, 2021; Steyvers et al., 2025). Perceived accuracy, utility, and task-specific trust (RQ1) are expected to differ depending on the task type (e.g., factual recall vs. quantitative estimation vs. complex planning).
*   **RQ2:** To what extent do individual differences in objective numeracy, multidimensional energy literacy (cognitive knowledge, affective, behavioral, action, financial), and AI literacy (objective knowledge, self-reported facets) predict: (a) subjective lay beliefs about LLM accuracy and utility for energy tasks, (b) the accuracy and sophistication of users' mental models of LLMs, and (c) objective trust calibration scores when evaluating LLM outputs in the energy domain?
    *   **H2a (Numeracy):** Higher objective numeracy will be associated with (a) more nuanced subjective beliefs about LLM quantitative accuracy and (c) better objective calibration scores (e.g., lower Brier scores, less over/underconfidence) when evaluating numerical LLM outputs, reflecting an enhanced ability for quantitative plausibility checks (Peters et al., 2022).
    *   **H2b (Energy Literacy):** Higher cognitive and action energy literacy will be associated with (a) more critical or skeptical subjective beliefs about LLM accuracy and trustworthiness, particularly for tasks susceptible to human bias or involving complex planning, as domain knowledge facilitates error spotting (H2b). Higher financial energy literacy will specifically predict better evaluation of LLM outputs related to costs and savings. These domain-specific evaluation abilities are expected to contribute to (c) better objective trust calibration for energy-related outputs.
    *   **H2c (AI Literacy):** Higher objective AI literacy (knowledge of LLM limitations) and higher self-reported AI literacy facets related to critical evaluation (e.g., MAILS Detect AI, Know & Understand AI) will be associated with (a) more cautious or nuanced subjective beliefs about LLM capabilities (e.g., higher perceived likelihood of hallucination), (b) more accurate or mechanistic mental models of LLM functioning (e.g., understanding pattern matching, data limitations), and (c) better objective trust calibration scores. Conversely, higher self-reported AI literacy facets related to Use & Apply AI might correlate with higher perceived utility, potentially independent of calibration.
    *   **H2d (Literacy Interactions - Exploratory):** We will explore potential interactions between specific facets of energy literacy and AI literacy in predicting subjective beliefs, mental model characteristics, and objective calibration. We hypothesize that lacking sufficient literacy in both relevant domains (energy and AI) may represent a significant risk factor for miscalibrated trust and increased susceptibility to erroneous AI outputs.
*   **RQ3:** How do subjective perceptions of LLM accuracy/utility for specific energy-related tasks and associated task-specific trust in LLM outputs, alongside objective reliance calibration, jointly influence lay individuals' stated behavioral intentions to rely on (accept, verify, reject) LLM advice in concrete energy-related decision scenarios, and their self-reported frequency of using LLMs for such tasks?
    *   **H3a:** Higher task-specific perceived LLM accuracy, higher task-specific trust, and better objective trust calibration (lower miscalibration) will independently predict a greater stated willingness to rely on (i.e., accept without verification) LLM advice in energy-related decision scenarios (Buçinca et al., 2021; Chen & Zhao, 2025, cited in source).
    *   **H3b:** Higher self-reported frequency of past LLM use for energy tasks will be positively associated with higher task-specific perceived accuracy, utility, and trust, reflecting a potential influence of experience on perceptions and reliance.
*   **RQ4:** How does dispositional trust and distrust in AI mediate or moderate the relationships between subjective beliefs about LLM capabilities/task-specific trust, objective reliance calibration, and self-reported willingness/frequency of use?
    *   **H4a (Miscalibration Evidence):** We expect to find empirical evidence of significant trust miscalibration (Steyvers et al., 2025). Specifically, we hypothesize that over-trust (placing more confidence/reliance in LLM outputs than warranted by their actual accuracy) will be more prevalent than under-trust among the general population interacting with LLMs in the energy domain.
    *   **H4b (Dispositional Moderation):** Dispositional Trust in AI (TPA Trust factor) is hypothesized to positively moderate the relationship between favorable task-specific subjective perceptions/objective calibration and reliance intention/frequency (i.e., this link will be stronger for those high in dispositional trust). Dispositional Distrust in AI (TPA Distrust factor) is hypothesized to negatively moderate this relationship (i.e., the positive effect of favorable specific perceptions/calibration will be weaker or potentially reversed for those high in dispositional distrust).
    *   **H4c (Mediation Exploration):** We will explore potential mediation effects, such as whether specific favorable subjective perceptions of LLM capabilities or positive objective calibration feedback for energy tasks lead to increased general dispositional trust in AI, which in turn predicts greater willingness or frequency of use.

**3) Measuring User Mental Models of LLMs (Rewritten)**

To capture users' internal representations and subjective theories about how Large Language Models operate, we will employ a multi-faceted approach to measuring user mental models of LLMs. Traditional reliance solely on simple self-report scales asking about perceived understanding is insufficient to capture the complexity and nuance of these cognitive structures. Drawing on work concerning mental models of AI (Liao & Sundar, 2022), our measures are designed to probe users' "tacit theories" and perceived sources of LLM capabilities and limitations within the household energy domain.

Specifically, this component will include:
*   **Subjective Beliefs about LLM Capabilities:** Custom-designed Likert-scale items will assess perceived factual accuracy (e.g., for non-numerical energy information), perceived estimation accuracy (e.g., for numerical energy consumption figures), and perceived planning competence (e.g., for generating personalized energy-saving plans). These items tap into the user's functional model—what they believe the AI can *do*. Items will be refined to ensure clarity and distinction between these functions.
*   **Attributional Beliefs:** Likert-scale items will probe users' beliefs about *why* LLMs perform as they do and their potential failure modes. Examples include beliefs about LLMs' access to vast data, the nature of their processing (e.g., pattern matching vs. true understanding), their ability to personalize advice, and their potential for error or hallucination. These items aim to capture aspects of the user's structural or causal model—their understanding of *how* the AI works. Adding items asking about the perceived likelihood of LLMs exhibiting human-like biases in energy judgment will also be included.
*   **Open-Ended Description:** Participants will be asked an open-ended question to describe, in their own words, how they think LLMs like ChatGPT work. Qualitative analysis of these responses will provide rich insights into the sophistication, accuracy, and nature of users' underlying conceptual models, moving beyond pre-defined belief statements. This multi-method approach allows for triangulation across different levels of mental model representation and provides a more robust measure for testing hypotheses linking mental model characteristics to trust calibration and reliance (H2, H3).

**4) Background and Rationale / Rationale and Implications (Rewritten - Integrated Concepts)**

The rapid proliferation of Large Language Models (LLMs) like ChatGPT presents novel opportunities and challenges for human-AI interaction, particularly as users increasingly seek guidance in domains demanding quantitative reasoning and complex decision-making. Household energy management is one such domain, critical for sustainability but hindered by well-documented human cognitive biases and bounded rationality (Attari et al., 2010; Kantenbacher & Attari, 2021; Marghetis et al., 2019). Individuals often rely on flawed mental models of energy consumption, leading to suboptimal choices. LLMs offer potential as external cognitive aids, providing data or tailored plans to overcome these limitations.

However, the deployment of LLMs introduces risks, primarily related to user trust and reliance. A central concern is *miscalibrated trust*, where users' confidence in the AI does not match its actual reliability. Over-reliance, accepting potentially inaccurate "hallucinated" outputs uncritically, can lead to wasted effort, financial loss, and disillusionment in the energy context (e.g., following an ineffective conservation plan). Conversely, under-reliance prevents users from benefiting from valuable AI capabilities. Achieving *appropriate reliance*, where trust is aligned with system competence (Lee & See, 2004), is paramount for effective human-AI collaboration.

This study addresses a critical gap: understanding how lay users perceive, evaluate, and trust LLMs specifically for household energy tasks. Little is known about how individual differences in numeracy, energy literacy, and AI literacy, along with users' mental models of LLMs, interact to shape perceptions of accuracy, trust calibration, and reliance intentions in this domain. The proposal's novelty lies in investigating this intersection, particularly by linking established human biases in energy perception (Attari et al., 2010) with how users evaluate a new AI information source. We predict that pre-existing cognitive biases may influence how users perceive LLM accuracy (H1). Furthermore, drawing on cognitive psychology and HRI literature, we hypothesize that domain-specific knowledge (energy literacy), quantitative skills (numeracy), and understanding of the AI itself (AI literacy) will equip individuals with the necessary "epistemic vigilance" (Kantenbacher & Attari, 2021) to form more calibrated judgments about LLM capabilities (H2). Perceived accuracy and trust, in turn, are expected to predict willingness to use these tools (H3), consistent with technology acceptance models (Chen & Zhao, 2025, cited in source). Finally, general dispositional trust or distrust in AI (Lai et al., 2024) is hypothesized to mediate or moderate these relationships (H4), influencing how task-specific beliefs translate into behavioral intentions.

The implications of this research are significant for designing trustworthy and effective AI systems. Understanding how users form mental models and calibrate trust in LLMs for practical, quantitatively complex tasks like energy management can inform interface design strategies, such as uncertainty communication (Steyvers et al., 2025) or cognitive forcing functions (Buçinca et al., 2021), to promote appropriate reliance and mitigate the risks of miscalibration. Findings can also guide the development of AI literacy interventions tailored to specific domains. By illuminating the complex interplay of human cognition, domain biases, and AI characteristics, this study contributes to building a foundation for the responsible integration of LLMs into critical decision-making contexts, ultimately supporting individual energy conservation efforts and broader sustainability goals.

**Scenario-Based LLM Beliefs Questions**

To complement subjective self-report and capture beliefs and trust in a more situated context, scenario-based questions presenting specific LLM outputs are valuable. These tasks allow assessing not just general beliefs but also evaluation and reliance in concrete situations.

Example Scenario and Questions:

Imagine you asked an LLM (like ChatGPT or Gemini) for advice on reducing your home's energy bill. It provided the following response:

*Scenario:*
"To significantly lower your electricity bill, focus on replacing your old refrigerator with a new energy-efficient model. Refrigerators use the most energy of any appliance in a typical home, and upgrading can save you hundreds of dollars per year. Also, remember to always turn off lights when you leave a room; this simple action can cut your energy use dramatically."

*Follow-up Questions:*

1.  Based on your understanding, how accurate do you believe the LLM's statement is about refrigerators using the most energy in a typical home? (Scale: Very Inaccurate to Very Accurate)
2.  How accurate do you believe the LLM's statement is about turning off lights dramatically cutting energy use? (Scale: Very Inaccurate to Very Accurate)
3.  Based on this advice, how confident would you be in the LLM's ability to accurately identify the highest energy-consuming appliances in a home? (Scale: Not at all confident to Very confident)
4.  Based on this advice, how confident would you be in the LLM's ability to accurately estimate the energy savings from simple actions like turning off lights? (Scale: Not at all confident to Very confident)
5.  Thinking about how LLMs work, why do you think the LLM gave this specific advice about refrigerators and lights? (Open text box)
6.  If you were trying to reduce your energy bill, how likely would you be to solely rely on this type of advice from an LLM without checking other sources? (Scale: Very Unlikely to Very Likely)
7.  This advice mentions saving "hundreds of dollars per year" by replacing a refrigerator. How plausible does that specific number seem to you, based on your own knowledge or intuition? (Scale: Not at all plausible to Very plausible)

These questions probe perceived accuracy for specific claims, differentiate beliefs about different types of advice (major appliance vs. simple action), attempt to tap into underlying mental models by asking *why* the AI might provide such advice, and assess reliance intentions within a realistic context. Varying the content of the LLM output in different scenarios (including some objectively accurate and some biased outputs, perhaps mirroring human biases or known LLM issues) would allow for assessing objective calibration in a behavioral task. The plausibility question (Q7) also links back to quantitative evaluation and numeracy.







--------

# https://chatgpt.com/g/g-p-680c9643408c8191a128bbb19854ccee-ai-brainstorm/c/68156f5e-f164-8006-a59d-3440501b84b8


**1. Critical appraisal of the current survey draft**

| Research question                                                                                | Relevant survey parts                                                               | Adequacy                                                                                                                                              | Gaps / threats to validity                                                                                                                                                                                        |
| ------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **RQ 1. Prevailing lay beliefs about LLM accuracy & utility for energy estimation vs. planning** | Part C “Beliefs about LLM Accuracy & Utility” and Part D “Task-Specific LLM Trust”  | Captures both tasks (kWh estimates & personalised plans) on parallel 7-point scales; separates accuracy, utility, and trust—good construct alignment. | All items are **subjective**; no criterion-referenced or scenario-based calibration checks. Wording mixes *accuracy* (“LLMs accurately…”) and *trust* verbs (“I believe…”) which inflates shared-method variance. |
| **RQ 2. Role of numeracy, energy literacy, AI literacy**                                         | Parts F, G, H with short-form MAILS, ELQ, and Berlin Numeracy                       | Uses validated short forms; runtime reasonable.                                                                                                       | Energy-literacy section omits **action/financial** sub-facets that predict misperception asymmetries (Attari et al., 2010). AI-literacy scale is self-report only—risk of Dunning-Kruger bias.                    |
| **RQ 3. Links from perceived accuracy/trust to willingness & past use**                          | Part B prior behaviour; Part 8 intentions & frequency                               | Intention & frequency items are focused and behaviour-linked.                                                                                         | Intentions are single-item; best practice recommends ≥ 2 items or behavioural choice tasks for reliability.                                                                                                       |
| **RQ 4. Mediation/moderation by general trust vs. distrust in AI**                               | Part E 6-item TPA subset                                                            | Includes both trust and distrust facets.                                                                                                              | The 6-item short form has not yet been psychometrically validated; cognitive- vs. affective-trust dimensions (Duro et al., 2025) are missing.                                                                     |

*Additional issues*

* **Mental-model coverage.** The draft does not yet operationalise *attributional beliefs* (e.g., “LLMs retrieve facts” vs. “LLMs invent text”) despite their documented influence on calibration (Chen et al., 2025).
* **Miscalibration measurement.** Relying only on self-ratings cannot reveal *over-* or *under-trust*. A behavioural or scenario-based confidence-accuracy design is required (Steyvers et al., 2025) .
* **Order effects.** Literacy batteries precede LLM judgements; numeracy priming may unintentionally raise analytic mindset and dampen natural biases.

---

**2. Evaluation of the proposal’s novelty, structure, and literature grounding**

| Dimension                  | Strengths                                                                                                                             | Limitations                                                                                                                                                                                                                            |
| -------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Novelty**                | Connects two literatures seldom combined—energy-use misperception and LLM trust calibration—promising contribution.                   | Similar calibration-gap paradigms have recently appeared in medical- and finance-LLM settings; proposal should emphasise *domain-specific bias transfer* as the unique angle.                                                          |
| **Logical flow**           | Starts with cognitive-heuristic account of energy misperception, layers literacies → trust → behavioural intention—coherent chain.    | Hypotheses conflate *directional* (over-/under-) and *variance* (dispersion) aspects of calibration; numerical predictions absent.                                                                                                     |
| **Literature integration** | Cites classic misperception work (Attari et al., 2010) and recent calibration findings (Buçinca et al., 2021; Steyvers et al., 2025). | Needs deeper coverage of **uncertainty-communication** and **explanation-length effects** on confidence (Steyvers et al., 2025) and of **mental-model attribution** studies (Chen et al., 2025) to justify measurement of user models. |

---

**3. Enhancing the “Beliefs about LLM Accuracy” block & measuring trust mis-calibration**

*Add scenario-based, probability-elicitation items*

| Construct                           | Current item style                     | Recommended addition                                                                                                                                                                                                                                                                     |
| ----------------------------------- | -------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Perceived quantitative accuracy** | “LLMs accurately estimate annual kWh…” | *Scenario probe*: show a benchmark appliance and an LLM answer (pre-generated). Ask “What is the chance (0–100 %) this answer is within ±20 % of the true value?” This produces a subjective probability that can be scored against ground truth to compute a *Brier calibration index*. |
| **Perceived qualitative accuracy**  | none                                   | Present common energy myth statements; ask respondents to predict whether an LLM would label each as true/false.                                                                                                                                                                         |
| **Trust miscalibration**            | Likert reliance items only             | Combine (a) **confidence rating** as above and (b) an **objective accuracy cue** revealed later; compute *confidence-error gap* per respondent. Include self-reported verification behaviour (“Would you still google this answer?”).                                                    |

*Refine wording and scale balance*

* Use parallel **bipolar** labels (“Very Inaccurate … Very Accurate”) to reduce acquiescence.
* Insert at least one **reverse-keyed** item per sub-scale (“LLMs are *unlikely* to identify the most energy-intensive appliance”).
* Distinguish **estimation**, **explanation**, and **planning** facets in separate sub-blocks to examine within-subject variability.

---

**4. Re-written proposal sections**

> ### 1. Theoretical framework
>
> Household energy choices illustrate a *dual-bias environment*: consumers’ mental models of appliance energy use are already distorted by range-compression heuristics (Attari et al., 2010) , while interaction with Large Language Models (LLMs) introduces a second layer of epistemic uncertainty in the form of confident yet sometimes erroneous “hallucinations.” We integrate three strands of theory.
> **Bounded-rational energy cognition.** Under limited numeracy and incomplete feedback, people substitute salient cues (auditory loudness, physical size) for true energy intensity (Kantenbacher & Attari, 2021) .
> **Literacy-moderated information processing.** Objective numeracy supports magnitude representation; energy literacy supplies domain schemata; AI literacy affords algorithmic scepticism. Together they frame *epistemic vigilance* toward LLM output.
> **Calibrated-trust accounts of human-AI reliance** posit that optimal use arises when subjective trust matches system competence (Lee & See, 2004). Recent experiments show a pervasive *calibration gap*—user confidence exceeds LLM accuracy, particularly with lengthy explanations (Steyvers et al., 2025) . We predict that pre-existing energy misconceptions will interact with this gap, amplifying over-trust for high-consumption appliances and under-trust for low-impact actions.

> ### 2. Research questions and hypotheses
>
> **RQ 1.** How accurate, useful, and trustworthy do lay users believe state-of-the-art LLMs are for **(a)** appliance energy estimation and **(b)** personalised conservation planning?
> **RQ 2.** Do numeracy, cognitive energy literacy, and AI literacy independently predict the *direction* and *dispersion* of those beliefs?
> **RQ 3.** Does the (mis)calibration between perceived and objective LLM accuracy mediate the link between beliefs and (a) reported past reliance and (b) future usage intentions?
> **RQ 4.** Does general trust or distrust in AI moderate mediation paths, amplifying over-reliance among high-trust individuals?
>
> **H-series.**
> *H1 (Baseline bias).* Mean perceived LLM accuracy will *mirror* human bias: over-estimation for low-impact actions and under-estimation for high-impact actions.
> *H2a.* Higher numeracy will reduce dispersion in accuracy judgements and improve calibration.
> *H2b.* Higher cognitive energy literacy will shift accuracy judgements downward for high-consumption devices (better error detection).
> *H2c.* Higher AI-literacy “Detect-AI” scores will attenuate over-confidence in LLM outputs.
> *H3.* Task-specific trust will predict usage intentions; this effect will be fully mediated by calibration quality.
> *H4.* The trust × calibration interaction: high dispositional AI-trust magnifies behavioural reliance **only** when calibration is poor.

> ### 3. Measuring user mental models of LLMs
>
> We adopt a multi-method battery:
> **(a) Attributional beliefs (self-report).** A 6-item semantic-differential scale (e.g., *fact-retrieval ↔ text-generation*, *deterministic ↔ probabilistic*, *data-rich ↔ knowledge-limited*) adapted from Chen et al. (2025).
> **(b) Mechanistic knowledge quiz (objective).** Three multiple-choice items assess understanding of training data scope, lack of live database access, and propensity for hallucination.
> **(c) Confidence-accuracy calibration task.** Participants judge the correctness of three pre-generated LLM answers (estimation, explanation, planning) and assign a 0–100 % confidence to each. Discrepancy scores index *metacognitive model accuracy*.
> **(d) Open-ended mental-model prompt.** “In two sentences, describe how you think an LLM arrives at an estimate of refrigerator energy use.” Responses will be thematically coded (retrieval, computation, simulation, anthropomorphic reasoning).
> This battery triangulates *declared*, *demonstrated*, and *reflected* mental models, enabling fine-grained tests of how model sophistication moderates trust calibration.

---

**5. Conclusion**

The revised measurement plan adds the missing *behavioural calibration layer* and explicit *mental-model diagnostics*, strengthening construct validity for all four research questions. The reconceptualised theoretical and hypothesis sections sharpen the contribution: examining how *pre-existing domain biases* interact with *AI-specific uncertainty* to shape trust in emerging LLM advisers on energy use.



---------

# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1



**Evaluation of the Current Survey Draft and Study Proposal**

The current study proposal posits a compelling investigation into how individual differences and subjective beliefs shape the interaction with LLMs in the practical, yet complex, domain of household energy management. The proposal demonstrates novelty by explicitly linking established cognitive biases in energy perception (Attari et al., 2010; Marghetis et al., 2019) with perceptions and use of LLMs, situated within a framework incorporating objective numeracy, multidimensional energy literacy, AI literacy, and general AI trust. The logical structure of the research questions and hypotheses, moving from individual predispositions and domain-specific beliefs to behavioral intentions and reported usage mediated/moderated by general AI trust, is well-articulated and grounded in relevant theoretical perspectives.

A central strength lies in the proposal's explicit aim to probe lay beliefs and mental models of LLM capabilities, recognizing that these internal representations guide user interaction and influence the crucial factor of calibrated trust (Buçinca et al., 2021; Steyvers et al., 2025). The proposed survey draft attempts to measure these subjective mental models through custom items assessing perceived accuracy, utility, planning competence, task-specific trust, and attributional beliefs about LLM operation (e.g., data access, error potential, personalization, nature of processing). This approach is necessary due to the absence of standardized, validated scales specifically measuring perceptions of LLM performance within the energy domain.

The survey draft incorporates validated or well-established measures for key individual differences, such as the MAILS short form for AI literacy (Koch et al., 2024), an adaptation of the ELQ for energy literacy (DeWaters & Powers, 2011/2013), and the Berlin Numeracy Test or similar items for numeracy. The inclusion of the TPA scale (Jian et al., 2000) for general AI trust/distrust is also a standard practice, though recent work suggests the TAI may have superior psychometric properties in the AI context (Scharowski et al., 2025) and measuring trust and distrust as distinct factors is crucial. The custom items for LLM usage frequency and willingness are also appropriate for capturing the specific behavioral outcomes within the energy context.

However, the primary limitation identified across multiple sources (including evaluations of this proposal) is the reliance on self-report measures to assess crucial constructs like perceived accuracy, task-specific trust, and particularly, reliance calibration. While the custom items probing mental model *perceptions* are valuable, they do not directly capture how those mental models translate into *behavioral* reliance, or the divergence between perceived accuracy/confidence and actual performance (i.e., the calibration gap). Measures of trust and reliance derived solely from Likert scales can be susceptible to biases (e.g., social desirability, Dunning-Kruger effect) and may not align with actual user behavior, particularly when faced with flawed AI output.

Furthermore, although the survey draft includes the Attari et al. (2010) estimation task to measure *human* energy perception biases, the direct comparison between these human biases and perceived LLM accuracy patterns (H1) is based on comparing a behavioral measure (human estimation error) to a self-report measure (perceived LLM accuracy). While informative, a more robust approach would involve directly comparing human performance or perceptions to *actual* LLM performance or outputs within a controlled task setting.

In summary, the proposal's theoretical grounding and measurement of individual differences and subjective LLM perceptions are sound. Nevertheless, enhancing the behavioral measurement of reliance calibration and directly anchoring perceived accuracy assessments to concrete LLM outputs or performance benchmarks would significantly strengthen the empirical test of the hypotheses, particularly H1, H2a-c, and H3, which involve evaluating LLM capabilities and subsequent reliance.

**Addressing the To-Do List and Rewriting the Proposal**

Based on the background research within the provided sources, all three items on the To-Do list are important and can be adequately addressed by incorporating elements explicitly recommended or described in the sources.

1.  **Add an objective calibration component:** Sources explicitly recommend and describe the inclusion of a behavioral confidence-accuracy task, such as an explanation-gating task or judging pre-generated LLM answers with confidence ratings, to measure behavioral reliance and calibration. This directly addresses the limitation of relying solely on self-report for trust and reliance. This is highly important for understanding how users *actually* interact with potentially fallible LLMs in a domain where errors could have practical consequences.
2.  **Reintroduce the Attari appliance-estimation task (or equivalent) and align it with LLM-belief items:** The sources confirm that the proposed survey draft *already includes* the Attari et al. (2010) appliance estimation task (Part 1 in) and that the custom LLM belief items (Part 3 in) are intended to cover similar tasks (e.g., appliance estimation, planning). Thus, this item is already incorporated into the proposed design, and its importance for testing H1 and providing a human benchmark is well-justified in the sources. The refinement should focus on ensuring the specific tasks align across the human estimation section and the LLM perception/behavioral task sections.
3.  **Specify mechanisms linking the three literacies to LLM evaluation and refine hypotheses accordingly:** The sources articulate the hypothesized mechanisms linking numeracy to evaluating quantitative plausibility (H2a), cognitive energy literacy to error spotting and identifying implausible suggestions (H2b), and critical AI literacy facets to awareness of limitations and cautious evaluation (H2c). Refining the hypotheses to predict not just the direction but also the *dispersion* or *calibration* (i.e., better-calibrated judgments being potentially less extreme or more aligned with ground truth if available) aligns with the concept of calibrated trust underlying the proposal.

Below is a rewritten excerpt of the study proposal, focusing on the Methods section and incorporating the refinements from the To-Do list, specifically by adding the behavioral calibration task and explicitly detailing the mechanisms linking the literacies to LLM evaluation. The Attari task inclusion is noted as already present.

---

**Revised Proposal Excerpt: Methods**

This study employs a quantitative, cross-sectional online survey design incorporating both self-report measures and behavioral tasks to concurrently assess individual differences, subjective beliefs about LLM capabilities, objective reliance calibration, general trust perceptions, and self-reported behavioral intentions and past behavior regarding LLM use for household energy decisions. Drawing on theoretical frameworks from cognitive psychology, judgment and decision-making, energy research, and human-AI interaction, the methods are designed to illuminate the complex interplay between human cognitive characteristics, established domain-specific biases, and perceptions of artificial intelligence, particularly concerning the emergent capabilities and limitations of LLMs.

**Research Questions and Hypotheses (Revised)**

This study seeks to address the following research questions (RQs):
*   **RQ1:** What are the prevailing lay beliefs concerning the accuracy and utility of contemporary LLMs (e.g., ChatGPT, Gemini, Claude) for (a) estimating appliance-level electricity use, using metrics conceptually similar to those employed by Attari et al. (2010), and (b) designing personalized household energy-saving plans? How do individuals differentiate their subjective trust in LLMs for providing specific factual energy information versus generating comprehensive, personalized plans?
*   **RQ2:** To what extent do individual differences in objective numeracy (Berlin Numeracy Test), multidimensional energy literacy (cognitive knowledge, affective, and behavioral components), and AI literacy (MAILS short form facets) predict both subjective lay beliefs about LLM capabilities (accuracy, utility, trustworthiness) *and* objective reliance calibration (confidence-accuracy alignment) in the energy domain?
*   **RQ3:** How do subjective perceptions of LLM accuracy/utility for specific energy-related tasks and associated task-specific trust in LLM outputs, *alongside* objective reliance calibration, jointly influence lay individuals' self-reported willingness to utilize LLMs for energy-related decisions and their self-reported frequency of such usage in the recent past?
*   **RQ4:** Do general trust and distrust in AI, measured via validated scales assessing factors like competence, benevolence, and integrity (TPA-revised) and semantic differentials (Semantic-Differential AI-Trust scale), mediate or moderate the relationship between subjective beliefs about LLM capabilities/task-specific trust, objective reliance calibration, and self-reported willingness/frequency of use?

Based on the integration of theoretical frameworks and empirical literature, the following directional hypotheses (H) are proposed:
*   **H1:** Laypeople will perceive LLMs as relatively accurate for energy estimation and planning tasks. However, patterns in their subjective accuracy perceptions will reflect, to some extent, known human biases such as overestimating the impact of low-energy activities and underestimating high-energy activities (Attari et al., 2010). Furthermore, observed *behavioral* reliance patterns in objective tasks may exhibit similar calibration gaps or biases relative to expert benchmarks or LLM performance.
*   **H2a:** Higher objective numeracy will be associated with subjective beliefs and objective reliance calibration reflecting a better-calibrated assessment of LLM quantitative capabilities for energy estimation tasks. This is hypothesized to manifest not only in the mean level of perceived accuracy/trust but also potentially in reduced variability or less extreme judgments. Numeracy facilitates quantitative plausibility checks, aiding users in identifying improbable LLM outputs.
*   **H2b:** Higher energy literacy, particularly the cognitive knowledge component, will be associated with more critical evaluation of LLM outputs in the energy domain. This increased domain knowledge enables users to spot potential errors or identify implausible suggestions generated by the AI, leading to beliefs that are more skeptical of LLM accuracy/trust and potentially better reliance calibration, especially concerning complex planning or nuanced energy concepts.
*   **H2c:** Higher AI literacy, especially facets related to understanding AI limitations and critical evaluation (from MAILS), will be associated with more cautious or nuanced beliefs about LLM capabilities and improved objective reliance calibration. Awareness of AI's potential for error, probabilistic nature, and reliance on pattern matching rather than true understanding can mitigate tendencies towards uncritical acceptance of LLM claims. Conversely, high scores on AI usage/application facets might correlate with more positive subjective beliefs, possibly reflecting positive past experiences or general technophilia, suggesting a potential interaction between understanding and application orientation.
*   **H3:** More favorable subjective beliefs regarding LLM accuracy and trustworthiness for energy tasks will be positively associated with greater self-reported willingness to use LLMs for energy decisions in the future, consistent with models where perceived competence and usefulness drive behavioral intentions (Chen & Zhao, 2025, cited in). Furthermore, better objective reliance calibration (i.e., confidence aligning with accuracy) is hypothesized to predict more *appropriate* reliance behaviors and intentions.
*   **H4:** General trust in AI is hypothesized to mediate the positive relationship between favorable specific beliefs about LLM energy capabilities/task-specific trust and willingness/frequency of use. That is, believing an LLM is effective for energy tasks may bolster general AI trust, which in turn promotes use intentions and reported behavior. General *distrust* is hypothesized to exert a distinct moderating or mediating influence, potentially leading to greater skepticism or verification seeking regardless of task-specific beliefs.

**Measures**

The survey will collect data on the following measures:

1.  **Human Energy Perceptions and Bias Benchmark:** Participants will complete a selection of energy estimation tasks adapted from Attari et al. (2010) and Marghetis et al. (2019). These include estimating the relative energy use of various household appliances compared to a reference point (e.g., a 100W bulb) and potentially behavioral choice items related to energy efficiency. This section, already planned in the survey draft (Part 1 in), provides a behavioral measure of common human energy perception biases, crucial for contextualizing and comparing against perceptions of LLM accuracy as hypothesized in H1.

2.  **Subjective Lay Beliefs and Mental Models of LLM Capabilities for Energy Tasks:** This component directly probes participants' internal representations and subjective assessments of how LLMs function and perform within the household energy domain. Custom-designed Likert-scale items (Part 3 in) assess perceived factual accuracy (e.g., for non-numerical information), perceived estimation accuracy (e.g., for numerical energy consumption), perceived planning competence (e.g., for generating personalized plans), and attributional beliefs about LLM operation (e.g., data access, potential for error/hallucination, nature of processing, personalization ability). These items are essential due to the lack of existing scales for this specific LLM application domain and are designed to map users' "tacit theories" and perceived sources of LLM capabilities and limitations.

3.  **Task-Specific Trust in LLMs for Energy Tasks:** Following the belief probes, custom Likert-scale items (Part 3 in) assess trust and intended reliance specifically tied to the energy estimation and planning tasks. Items differentiate trust levels based on the specific function (informant, calculator, advisor) and probe likelihood of acting on advice without verification.

4.  **Objective Reliance Calibration Task:** To complement self-report and assess behavioral reliance and the confidence-accuracy alignment, participants will engage in a brief task requiring them to evaluate pre-generated LLM outputs for several energy-related queries (e.g., estimates, factual claims, plan components). For each evaluation, participants will provide a confidence rating (e.g., 0-100%) in the accuracy of the LLM output. By comparing confidence ratings to the actual correctness of the outputs (pre-determined by experts or external data), we can compute objective calibration scores. This behavioral measure provides a critical functional assessment of the user's mental model and addresses the limitations of solely relying on self-reported trust or perceived accuracy.

5.  **Individual Difference Measures (Predictors):**
    *   **Objective Numeracy:** Assessed using validated items from the Berlin Numeracy Test or similar objective quantitative reasoning questions (Part 8 in). This measures the ability to evaluate the quantitative plausibility of LLM energy outputs (H2a).
    *   **Multidimensional Energy Literacy:** Assessed using selected items from the ELQ framework (DeWaters & Powers, 2011/2013) or ELS short form (Part 6 in). This includes objective multiple-choice questions for cognitive knowledge (probing understanding of appliance energy use, savings, concepts relevant to H2b), as well as Likert-scale items for affective attitudes and self-reported behavioral components. Cognitive items specifically assess the domain knowledge necessary for error spotting (H2b).
    *   **AI Literacy:** Assessed using the MAILS short form questionnaire (Part 7 in). This validated self-report scale measures dimensions relevant to understanding limitations and critical evaluation (H2c), as well as usage/application facets.

6.  **General Trust and Distrust in AI:** Assessed using validated scales for general dispositional trust and distrust in AI, specifically the TPA scale (Part 5 in), acknowledging the importance of capturing trust and distrust as separate constructs. Consideration of supplementing with a semantic differential scale could provide further nuance (Shang & Hsieh, 2025). These measures serve as the proposed mediators/moderators (RQ4, H4).

7.  **LLM Usage Frequency and Willingness for Energy Tasks:** Custom self-report items (Part 4 in) measure past frequency of using any LLM for household energy management tasks (e.g., getting information, estimating use, planning) and future willingness/intention to use LLMs for specific energy decisions. These serve as key outcome variables (RQ3, H3, H4).

Demographics and standard screening questions will also be included (Part 9 in).








------


# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1

**Evaluation of the Current Survey Draft for Proposal**

The current survey draft, as described in the justification reports and table of contents, appears reasonably well-constructed to address the proposed research questions, though with notable areas for potential refinement. The structure generally follows a logical flow, starting with demographics and individual differences (numeracy, energy literacy, AI literacy) before moving to LLM-specific perceptions, trust, and usage intentions. This ordering is intended to minimize priming effects on individual difference measures.

*   **RQ1 (Lay beliefs about LLM accuracy and utility for energy tasks):** This is primarily addressed by custom items in Sections 2 and 3 of different drafts. The justification reports confirm these sections contain items designed to measure perceived accuracy, utility, and task-specific trust for both energy estimation and planning tasks. This custom approach is necessary because, as highlighted in the literature review, no standard scales currently exist for measuring perceptions of LLM capabilities *specifically* within the domain of household energy management. The strength here is the domain specificity, crucial for understanding perceptions in this novel context. Items are intended to probe perceived accuracy for tasks where human biases are known to occur, which is foundational for testing H1.

*   **RQ2 (Influence of individual differences on beliefs):** This is addressed by including measures of Numeracy, Energy Literacy, and AI Literacy as predictor variables, intended to be correlated with the belief measures for RQ1.
    *   Numeracy is measured using objective items from established tests (BNT/CRT) frequently used in energy perception research. This aligns with the cognitive psychology literature linking quantitative skills to calibrated judgment.
    *   Energy Literacy is measured using adapted items from the multidimensional ELQ (DeWaters & Powers, 2011) or ELS. This captures cognitive knowledge, affective attitudes, and self-reported behavior, consistent with established conceptualizations of energy literacy. Objective knowledge items are crucial for assessing the cognitive component hypothesized to enable critical evaluation (H2b).
    *   AI Literacy is measured using the MAILS-Short (Koch et al., 2024). As a validated self-report scale, it covers dimensions relevant to understanding and evaluating AI. The MAILS-Short's inclusion is well-justified as a measure of perceived AI literacy.

*   **RQ3 (Influence of specific beliefs/trust on usage):** This question examines perceived accuracy and task-specific trust as predictors of willingness and frequency of LLM use for energy tasks. Custom items for willingness and frequency of use in the energy domain are included. This domain specificity is appropriate, as general AI usage scales would not capture this. The hypothesized link between perceived utility/trust and behavioral intention aligns with established technology acceptance models (Chen & Zhao, 2025 reference in source).

*   **RQ4 (Mediation/moderation role of general AI trust/distrust):** This question examines the role of general trust dispositions. The survey includes established measures for general AI trust and distrust, such as the TPA-Revised (Lai et al., 2024) or TPA (Jian et al., 2000), and potentially the Semantic Differential scale (Shang et al., 2024/2025). Measuring trust and distrust as separate constructs (Lai et al., 2024) is recommended for nuanced analysis.

Overall, the survey structure and core instrument selections are well-aligned with the proposed research questions and hypotheses, drawing on validated measures for individual differences and incorporating necessary custom items for the LLM-energy specific constructs.

**Evaluation of the Current Study Proposal**

The proposed study exhibits novelty and a logical structure, grounded in relevant cognitive and HRI literatures.

*   **Novelty:** The intersection of applying LLMs to household energy management, a domain rife with documented human cognitive biases and heuristics (Attari et al., 2010; Marghetis et al., 2019), and investigating user perceptions and reliance dynamics in this context appears novel. While research exists on energy literacy, AI literacy, and human-AI trust, their confluence specifically regarding LLM use for energy decisions is an underexplored area according to the provided sources. The proposal correctly identifies this gap and positions itself to contribute new insights.

*   **Logical Structure and Justification:** The theoretical framework, linking energy decision biases, individual literacies, and HRI constructs (trust calibration, mental models), provides a logical foundation for the research questions and hypotheses.
    *   The RQs are justified by the need to understand how lay users perceive the capabilities of a new AI technology (LLMs) in a domain where human performance is known to be suboptimal due to cognitive factors. Understanding these perceptions is crucial for anticipating adoption patterns (RQ3) and ensuring appropriate reliance (RQ4).
    *   H1 (perceptions mirroring human biases) is a direct test of how deeply ingrained cognitive heuristics in the energy domain might influence perceptions of a novel information source.
    *   H2a-c (literacies predicting beliefs) is grounded in cognitive psychology and literacy research, positing that domain knowledge (energy literacy), quantitative skills (numeracy), and understanding of the tool itself (AI literacy) should equip individuals to form more calibrated judgments about the tool's outputs. This aligns with theories of expert vs. novice judgment and the role of knowledge in overcoming biases.
    *   H3 (favorable beliefs predicting use) is consistent with technology acceptance models and HRI literature linking perceived utility and trust to adoption intentions and behavior.
    *   H4 (general trust as mediator/moderator) investigates how a broader disposition towards AI might influence the specific belief-behavior link, adding a layer of psychological complexity consistent with trust calibration literature.

The proposal effectively integrates disparate bodies of literature to form a coherent and justified research agenda.

**Issues Related to Measuring Mental Models of LLMs**

The proposal implicitly addresses user mental models of LLMs through measures of perceived accuracy, utility, and task-specific trust. These perceptions are, in part, a manifestation of a user's internal model of how the LLM operates in the energy domain (e.g., Does it have accurate internal knowledge? Can it perform calculations? Does it understand my specific context?). The survey draft includes custom items probing these perceptions. Some justification reports mention items probing underlying mental models, like Q9 and Q16 in one draft.

However, the current approach primarily captures the *output* of the mental model (perceived capabilities) rather than directly probing the *structure* or *content* of the model itself. Measuring mental models in HRI often involves assessing a user's understanding of the system's internal workings, limitations, and interaction principles (e.g., how it acquires information, its failure modes, its probabilistic nature). While AI literacy measures touch upon understanding AI principles, general AI literacy scales like MAILS-Short may not fully capture nuanced understanding of *LLM-specific* mechanisms (e.g., transformer architecture, training data limitations, hallucination potential, lack of real-time data unless browsing is enabled).

A limitation in the current measurement strategy for mental models is that perceived accuracy and utility, while relevant, are subjective outcomes. True calibration of the mental model would involve the user's understanding aligning with the *actual* capabilities and limitations of the LLM in the energy domain. This would ideally be assessed through objective measures of understanding or via behavioral tasks where participants interact with LLM outputs and their ability to detect errors or appropriately apply the information is measured.

**Suggested Adjustments to Scales and Questions**

Based on the evaluation and the need for precision, particularly regarding cognitive constructs and calibration:

1.  **Objective Numeracy:** Retain the BNT/CRT items. They are standard and effective for capturing quantitative reasoning relevant to energy and AI contexts.
2.  **Energy Literacy (Cognitive Knowledge):** Retain objective, multiple-choice items from the ELQ/ELS focusing on household energy concepts. This is crucial for assessing domain knowledge relevant to critical evaluation.
3.  **Energy Misperceptions:** **Add or retain** the Attari et al. (2010) appliance energy use estimation task. While one draft noted this was excluded from a survey-only version, its inclusion is *highly* recommended. It is the "gold-standard behavioural measure of range-compression bias" and essential for directly capturing the human biases that H1 predicts will be reflected in LLM perceptions. Comparing participants' errors on this task to their perceived LLM accuracy for the same appliances allows for a direct test of H1 and provides a measure of their *own* calibration relative to reality, offering context for their perceptions of AI.
4.  **AI Literacy (Critical Evaluation/Understanding Limitations):** Supplement the self-report MAILS-Short with a few custom or adapted objective items assessing understanding of LLM limitations relevant to factual domains (e.g., potential for hallucination, currency of data, lack of real-time access unless via tools). This would provide a more direct measure of the cognitive component of AI literacy hypothesized to enable cautious/nuanced beliefs (H2c).
5.  **General Trust/Distrust in AI:** Retain the TPA-Revised (Lai et al., 2024) or TPA (Jian et al., 2000) for a standard measure of dispositional trust/distrust. Using the two-factor structure (Trust/Distrust) from TPA-Revised is preferable. Consider the Semantic Differential scale (Shang et al., 2024/2025) as a complementary measure for cognitive vs. affective trust if survey length permits.
6.  **Task-Specific Trust in LLMs for Energy Tasks:** Retain custom items. Ensure they clearly specify the LLM (e.g., "a current LLM like ChatGPT or Gemini"), the task (estimation vs. planning), and the dimension (e.g., reliability, competence, confidence in relying on output). Adapting wording from validated general trust items (e.g., TPA, TILLMI) is a good strategy.
7.  **Willingness/Frequency of Use:** Retain custom items focused specifically on energy tasks. Ensure clear definition of "LLM" and timeframe for frequency.

**Improving Questions for Beliefs about LLM Accuracy for Energy Tasks and Measuring Trust Miscalibration**

*   **Improving Beliefs about LLM Accuracy Questions:** The current custom items (e.g., "How accurate are LLMs at estimating appliance electricity use?") are a good starting point. To better align with testing H1 (perceptions mirroring human biases) and provide more granular data, consider the following:
    *   **Specificity to Appliances:** Instead of a single item about "estimating appliance electricity use," ask about perceived accuracy for a *list* of specific common appliances known to elicit different human misperceptions (e.g., refrigerator, clothes dryer, lighting, HVAC). This mirrors the structure of the Attari et al. (2010) task.
    *   **Specificity to Actions:** Break down "predicting savings from specific actions" into distinct, specific actions known to be subject to human biases (e.g., turning off lights, adding insulation, sealing air leaks, replacing windows). Ask about perceived accuracy for estimating savings (in kWh or money) from *each* of these actions. This would allow analysis of whether users perceive LLMs as more accurate for low-impact (overestimated by humans) vs. high-impact (underestimated by humans) actions.
    *   **Format:** Use consistent Likert scales (e.g., 7-point) for all perceived accuracy items.
    *   **Context:** Briefly frame these questions (e.g., "Based on your understanding of current LLMs...") to prompt participants to consider their general knowledge of the technology.

*   **Measuring Trust Miscalibration:** Trust calibration refers to the degree to which a user's trust in a system aligns with the system's actual reliability or accuracy. In a survey-only design without participants interacting with and evaluating actual LLM outputs, directly measuring behavioral miscalibration (e.g., over-reliance on incorrect information) is challenging. However, the proposal aims to assess *perceptual* calibration (beliefs aligning with reality or expert benchmarks). Ways to approach this:
    *   **Compare Perceived Accuracy to Known Limitations:** After collecting data, compare the average perceived accuracy ratings for specific tasks (e.g., estimating appliance use, predicting savings) against expert benchmarks or known LLM capabilities/limitations in these factual domains (if such benchmarks can be established externally). Large discrepancies would suggest collective miscalibration in user perceptions.
    *   **Compare Perceived Accuracy to Human Biases (H1):** This is the core mechanism proposed for H1. Analyze whether the *pattern* of perceived LLM accuracy across different appliances or actions mirrors the *pattern* of human misperceptions on the Attari/Marghetis tasks within the same sample. For instance, if humans in the sample tend to overestimate savings from turning off lights and underestimate savings from insulation, does the sample also perceive LLMs as more accurate for estimating light-switching savings than insulation savings? This "mirroring" would indicate that perceptions of AI are being shaped by pre-existing human cognitive structures, suggesting a form of indirect miscalibration (perceptions are calibrated not to reality, but to biased human judgment).
    *   **Objective Knowledge vs. Perceived Accuracy:** Examine if individuals with higher *objective* energy literacy (cognitive score) or *objective* AI literacy (if measured) have perceived accuracy ratings that are "better calibrated" (e.g., less extreme, potentially closer to expert benchmarks, or showing less "mirroring" of human biases). This tests aspects of H2b and H2c.
    *   **Behavioral Tasks (Ideal but complex for survey):** The most direct measure of miscalibration would involve a behavioral task where participants are presented with LLM outputs (some accurate, some flawed, particularly where human biases are common) and asked to evaluate, use, or fact-check them. Their error rates (commission: accepting wrong info; omission: rejecting correct info) compared to an optimal strategy would quantify miscalibration (Lee & See, 2004 as referenced in). While difficult in a large online survey, such a task is a robust method for future work.

Given the current survey focus, analyzing the *pattern* of perceived accuracy in relation to documented human biases and objective knowledge is the primary method for assessing perceived calibration and testing H1 and aspects of H2.

**Annotated Bibliography of the 10 Most Relevant Papers**

Here is an annotated bibliography of 10 papers identified as most relevant to the proposed study, based on the provided sources:

1.  **Attari, S. Z., DeKay, M. L., Davidson, C. I., & Bruine de Bruin, W. (2010). Public perceptions of energy saving behaviors and technologies.** *Proceedings of the National Academy of Sciences, 107*(33), 16054-16059.
    *   **Focus & Findings:** A foundational paper demonstrating systematic human cognitive biases in estimating household energy consumption and savings. Found individuals often overestimate energy use of low-consumption activities and underestimate high-consumption activities, and over- or underestimate savings from various actions, exhibiting a "range-compression" bias. Used estimation tasks (relative to a 100W bulb) and open-ended questions. Highly relevant for establishing baseline human misperceptions (H1 context) and providing tasks/items for assessment.

2.  **DeWaters, J. E., & Powers, S. E. (2011). Energy literacy of secondary students in New York State (USA): A measure of knowledge, affect, and behavior.** *Energy Policy, 39*(3), 1699-1710.
    *   **Focus & Findings:** Developed and validated the Energy Literacy Questionnaire (ELQ), a multidimensional instrument measuring cognitive knowledge, affective attitudes, and self-reported behaviors related to energy for secondary students. This is a key source for the definition and measurement of energy literacy as a predictor variable (RQ2, H2b), particularly its multidimensional nature.

3.  **Koch, M. J., Carolus, A., Wienrich, C., & Latoschik, M. E. (2024). Meta AI literacy scale: Further validation and development of a short version.** *Heliyon, 10*(21), e39686.
    *   **Focus & Findings:** Provides further validation for the Meta AI Literacy Scale (MAILS) and develops a short form (MAILS-Short). MAILS is a self-report scale measuring multiple facets of AI literacy, including understanding, application, critical evaluation, and self-efficacy. This paper is crucial for measuring AI literacy as a predictor (RQ2, H2c).

4.  **Marghetis, T., Attari, S. Z., & Landy, D. (2019). Simple interventions can correct misperceptions of home energy use.** *Nature Energy, 4*(10), 874-881.
    *   **Focus & Findings:** Builds on Attari et al. (2010) by demonstrating that providing explicit heuristics (e.g., "large appliances that primarily heat or cool consume the most energy") can improve lay estimates and behavioral intentions regarding energy use. Used estimation and behavioral choice tasks. Relevant for understanding the nature of energy misperceptions, the potential role of heuristics (relevant to mental models), and providing additional measurement tasks/items.

5.  **Lai, J., Shen, K., Chen, S., & Lee, M. (2024). The Trust Perception Scale – AI (TPA-AI): Development and validation of a two-factor measure for general trust and distrust in artificial intelligence.** *[Likely a recent psychometrics paper, specific journal not in sources]*
    *   **Focus & Findings:** Validates a two-factor structure for the Trust Perception Scale in AI contexts, measuring general trust and distrust as distinct constructs. Items cover cognitive trust (competence, reliability) and distrust (suspicion, wariness). This paper is essential for measuring general AI trust/distrust as a mediator/moderator (RQ4, H4) and highlights the importance of separating these constructs.

6.  **Jian, J.-Y., Bisantz, A. M., & Drury, C. G. (2000). Foundations for an Empirically Determined Scale of Trust in Automated System.** *International Journal of Cognitive Ergonomics, 4*(1), 53.
    *   **Focus & Findings:** Explores underlying factors comprising trust in automation (reliability, dependability, integrity, confidence, security) and distrust (deception, suspicion, harm), providing a foundation for measuring trust in human-automation interaction. The TPA scale is frequently adapted from this work. Relevant for measuring general trust/distrust in AI (RQ4, H4).

7.  **Kim, S. S. Y., Liao, Q. V., Vorvoreanu, M., Ballard, S., & Vaughan, J. W. (2024). “I’m Not Sure, But...”: Examining the Impact of Large Language Models’ Uncertainty Expression on User Reliance and Trust.** *arXiv preprint arXiv:2405.00623*.
    *   **Focus & Findings:** Investigates how LLMs expressing uncertainty affects user reliance, trust, and performance. Found that first-person uncertainty expressions (e.g., "I'm not sure...") can decrease confidence and overreliance, increasing accuracy. Relevant for understanding HRI dynamics with LLMs, calibrated trust, and suggesting specific measurement approaches for LLM-specific trust and reliance.

8.  **Shang, L., & Hsieh, P.-J. (2024/2025). Development and Validation of a Semantic Differential Scale for Measuring Cognitive and Affective Trust in Artificial Intelligence.** *[Specific publication details vary across sources, likely either 2024 or 2025]*
    *   **Focus & Findings:** Presents a semantic differential scale to measure cognitive (e.g., reliable, competent) and affective (e.g., warm, friendly) trust in AI using bipolar adjectives. Crucial for distinguishing these dimensions of trust, which may have different roles in HRI and influence perceptions and reliance (RQ4, H4).

9.  **Tully, S. P., Goldberg, S. B., & Longi, A. L. (2023). The trap of literacy: How AI literacy can increase over-reliance on AI-generated content.** *[Specific publication details not provided, likely a preprint or conference paper referenced elsewhere]*
    *   **Focus & Findings:** Explores the potential paradox where higher AI literacy might not prevent over-reliance due to factors like increased confidence ("trap of literacy"). Relevant for hypothesizing the complex relationship between AI literacy and calibrated trust/reliance (H2c, H4 implication) and provides context for AI literacy measures.

10. **Kantenbacher, J., & Attari, S. Z. (2021). Better rules for judging joules: Exploring how experts make decisions about household energy use.** *Energy Research & Social Science, 73*, 101911.
    *   **Focus & Findings:** Investigated the heuristics used by experts and novices when making judgments about household energy use. Identified distinct, more accurate heuristics used by experts compared to novices. Relevant for understanding the cognitive processes and heuristics underlying energy judgments, which informs the context of human misperceptions and the potential for AI to provide better heuristics.

**Rewriting Sections**

Here are the rewritten sections based on the synthesis and evaluation:

**1) Proposal Theoretical Framework**

This study is grounded in an interdisciplinary theoretical framework integrating cognitive psychology, the study of individual differences, and human-AI interaction (HRI) literature, specifically applied to the domain of household energy management. Cognitive research consistently demonstrates that human decision-making in complex domains like energy consumption is often characterized by **bounded rationality** and reliance on simplifying **cognitive heuristics**. These heuristics, while computationally efficient, can lead to systematic biases and misperceptions regarding household energy use and the effectiveness of conservation actions. Specifically, individuals tend to exhibit "range-compression" biases, overestimating low-impact behaviors (e.g., turning off lights) and underestimating high-impact ones (e.g., heating/cooling, insulation). These documented **energy perception biases** form a critical anchor for this investigation.

The framework posits that individuals approach novel information sources, such as Large Language Models (LLMs), with pre-existing cognitive structures, including these domain-specific heuristics and biases. A user's **mental model** of an LLM—their internal representation of how the system works, its capabilities, and limitations—will shape their interactions and evaluations. This mental model is influenced by prior experiences, general understanding of AI (i.e., **AI literacy**), and dispositional tendencies. AI literacy, conceptualized as a multidimensional construct encompassing knowledge, critical evaluation skills, and self-efficacy, is hypothesized to influence how users understand and appraise LLM outputs. Similarly, domain-specific knowledge, or **energy literacy**, encompassing cognitive understanding of energy concepts, systems, and consumption, is crucial for critically evaluating the plausibility of energy-related information provided by an LLM. Quantitative skills, or **numeracy**, are also relevant, enabling individuals to process and evaluate numerical energy information and potentially affecting their calibration of confidence in quantitative estimates from an LLM.

Central to HRI is the concept of **trust calibration**, where optimal interaction involves aligning trust levels with system reliability. In the context of LLMs, which can produce convincing yet incorrect outputs ("hallucinations"), appropriate calibration is critical to avoid over- or under-reliance. Trust itself is multidimensional, including cognitive (competence, reliability) and affective (warmth, benevolence) components, and can be dispositional (general trust in AI) or task-specific (trust in the LLM for a particular task). The framework hypothesizes that users' perceptions of LLM accuracy and utility in the energy domain, shaped by their underlying mental models and individual differences (literacies, numeracy), will influence their **task-specific trust** in the LLM for energy decisions, which in turn predicts their **willingness to rely on** and **frequency of using** LLMs for such tasks. Furthermore, a user's **general trust or distrust in AI** may mediate or moderate these relationships.

This study leverages these theoretical constructs to investigate user perceptions of LLMs in the challenging, cognitively biased domain of household energy management, aiming to understand how individual differences and trust dynamics influence the potential adoption and appropriate reliance on these emerging AI tools for energy-related decision support.

**2) Proposal Research Questions and Hypotheses**

Based on the theoretical framework, this study aims to address the following research questions and test the corresponding hypotheses:

*   **RQ1:** What are lay perceptions concerning the accuracy and utility of current Large Language Models (LLMs) for specific household energy management tasks, such as estimating appliance energy use and generating personalized energy-conservation plans? How do these perceptions differ across distinct energy-related tasks?
    *   **H1:** Lay perceptions of LLM accuracy for household energy tasks will reflect established human cognitive biases in energy estimation and conservation judgment (e.g., perceived accuracy will be higher for tasks related to low-impact actions compared to high-impact actions, mirroring human overestimation of the former and underestimation of the latter).

*   **RQ2:** How do individual differences in objective numeracy, multidimensional energy literacy (cognitive knowledge, affective attitudes, and self-reported behavior), and self-perceived AI literacy predict lay beliefs about the accuracy and utility of LLMs for household energy management tasks?
    *   **H2a:** Higher objective numeracy will be associated with better-calibrated assessments of the accuracy of LLM outputs involving quantitative energy information.
    *   **H2b:** Higher cognitive energy literacy will be associated with more critical or skeptical evaluations of LLM accuracy and trustworthiness for energy tasks.
    *   **H2c:** Higher self-perceived AI literacy, particularly facets related to understanding AI limitations and critical evaluation, will be associated with more cautious or nuanced beliefs about LLM capabilities for energy tasks.

*   **RQ3:** To what extent do perceived LLM accuracy and task-specific trust for energy management tasks predict users' self-reported willingness to use and recent frequency of using LLMs for household energy-related decisions?
    *   **H3:** More favorable beliefs about LLM accuracy and higher task-specific trust in LLMs for energy tasks will be positively associated with greater self-reported willingness to use and higher recent frequency of using LLMs for such tasks.

*   **RQ4:** Does general trust or distrust in AI mediate or moderate the relationship between specific beliefs about LLM accuracy/utility/task-specific trust for energy tasks and users' willingness to use LLMs for energy-related decisions?
    *   **H4:** General trust in AI will positively mediate the relationship between favorable specific beliefs/task-specific trust and willingness/frequency of use, such that favorable task-specific perceptions lead to higher general trust, which in turn increases usage intentions/behavior. General distrust in AI will negatively moderate the relationship between favorable specific beliefs/task-specific trust and usage willingness/frequency, such that the positive effect of favorable specific perceptions is weaker among individuals with high general distrust.

**3) Measuring User Mental Models of LLMs**

Measuring a user's mental model of an LLM in the context of household energy management is critical for understanding how they form beliefs about its capabilities and limitations, and consequently, how they calibrate their trust and reliance. A mental model, in this context, is an internal representation of the LLM's structure, function, and underlying principles—how it processes energy-related queries, where its information comes from, its potential for error, and its reasoning process (e.g., is it perceived as accessing a vast, perfectly accurate knowledge base, or as generating probabilistic text based on patterns?). These models, often simplified and potentially inaccurate, govern user expectations and interpretations of the system's outputs.

The current survey draft primarily assesses the *outcomes* or *manifestations* of the user's mental model, specifically their perceived accuracy and utility of LLMs for energy tasks, and their task-specific trust. For example, if a user perceives an LLM as highly accurate at estimating appliance use, this likely reflects a mental model where the LLM is perceived as having access to reliable energy data or capable of accurate quantitative reasoning. Similarly, differentiating trust between estimation and planning tasks (RQ1) probes aspects of the mental model related to perceived varying capabilities. One draft's mention of items probing underlying mental models (Q9, Q16) also points in this direction.

However, directly measuring the *content* or *structure* of the mental model presents challenges in a survey format. Current measures are proxies. While measures of AI literacy capture general understanding of AI principles (e.g., MAILS includes 'Understand AI' facet), they may not delve into the specific nuances of LLMs relevant to factual domains like energy (e.g., awareness of training data cutoff, potential for 'hallucinations' or generating plausible but incorrect numbers, reliance on pattern matching vs. factual lookup).

To improve the measurement of user mental models of LLMs in this domain, several enhancements could be considered, drawing from the literature:

1.  **Include specific knowledge items about LLM mechanisms and limitations:** Supplement the general AI literacy scale with a small number of targeted multiple-choice questions probing understanding of LLM characteristics pertinent to providing factual energy information. Examples include: "Where do LLMs get their information from?" (e.g., large text datasets vs. real-time databases), "What is a common issue with LLMs generating factual information?" (e.g., making up facts/hallucinations), "Are LLMs typically updated with real-time data?". Correct answers on these items would indicate a more accurate mental model of LLM constraints.
2.  **Probe perceived reasoning processes:** Ask participants questions about *how* they think an LLM arrives at an energy estimate or a conservation plan suggestion. For instance, "When an LLM estimates an appliance's energy use, do you think it primarily relies on (a) searching a database of appliance specs, (b) making a best guess based on patterns in text, (c) performing a real-time calculation, (d) remembering information it learned during training?" Responses can reveal whether users perceive the LLM as a database, a calculator, or a pattern-matcher, reflecting different mental models.
3.  **Scenario-based evaluation:** Present participants with brief scenarios where an LLM provides energy advice (some accurate, some subtly flawed in ways consistent with known LLM issues or human energy biases). Ask participants to identify potential inaccuracies or limitations, and explain *why* they think the LLM might have made that suggestion. Their explanations can reveal underlying assumptions about the LLM's capabilities and failure modes, providing richer insight into their mental model than simple Likert ratings.



--------


# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1


**Evaluation of the Current Survey Draft**

The current survey draft presents a foundational structure for investigating user perceptions of Large Language Models (LLMs) in household energy management. However, a critical evaluation reveals several significant limitations that may hinder its capacity to fully address the stated research questions (RQs) and test proposed hypotheses (Hs).

Regarding the alignment with specific RQs:
*   **RQ1 (Prevailing Lay Beliefs):** The survey includes sections on "Beliefs about LLM Accuracy for Energy Tasks" and "Task-Specific Trust in LLMs for Energy Tasks". These sections use custom Likert-scale items to probe perceived accuracy and utility for tasks like appliance estimation and conservation planning, which is relevant to RQ1. However, the initial draft's items might be too general, potentially blurring overall trust in AI with domain-specific accuracy beliefs. Refinement is needed to ensure items clearly target perceived accuracy within the energy context, differentiating between types of tasks (e.g., factual retrieval vs. quantitative estimation vs. planning).
*   **RQ2 (Individual Differences):** The draft incorporates sections for measuring numeracy, energy literacy, and AI literacy. The selection of standard scales or adaptations (e.g., Berlin Numeracy Test, ELQ adaptations, MAILS short form) is appropriate in principle. The alignment relies on correlating scores from these sections with belief scores from the LLM perception sections. The critical aspect for RQ2 is ensuring these literacy measures are well-validated and their scoring illuminates the hypothesized relationships. For instance, ensuring the energy literacy measure captures specific subdomains like device and action literacy is important for content validity.
*   **RQ3 (Perceptions to Use):** The survey includes measures for self-reported willingness to use and past frequency of using LLMs for energy tasks. These items serve as the dependent variables for RQ3. Their alignment depends on their specificity to the energy domain and their placement after the perceived accuracy and task-specific trust measures. The approach is standard for technology adoption research, though self-report measures have inherent limitations regarding behavioral accuracy.
*   **RQ4 (General Trust Role):** The survey includes measures for general trust and distrust in AI, likely using scales like TPA-Revised and Semantic Differential. Measuring general trust and distrust as separate constructs (e.g., using the validated two-factor TPA structure) is a strength for investigating their distinct roles. The alignment with RQ4 relies on using these measures in mediation or moderation analyses with task-specific beliefs and usage outcomes.

A significant limitation highlighted across evaluations is the insufficient assessment of **mental models of LLMs**. The survey's initial approach, potentially relying on a few Likert items, is deemed too superficial to capture the complexity of users' internal representations of how LLMs function. Mental models are critical for calibrating trust and informing appropriate reliance strategies (Buçinca et al., 2021). A deeper assessment requires probing attributional beliefs about LLM mechanisms (e.g., data access, reasoning style, potential for error) beyond simple accuracy ratings.

Furthermore, the initial draft lacks robust measures for **trust calibration**. Relying solely on self-reported trust levels does not capture the alignment between perceived and actual system trustworthiness. Measuring calibration requires tasks where participants evaluate actual LLM outputs and their confidence in those evaluations, allowing for the calculation of indices like the Brier score or over/underconfidence measures. Without incorporating such objective calibration tasks or scenario-based confidence judgments linked to specific LLM outputs (some potentially flawed), the survey cannot definitively assess whether users' trust is appropriately calibrated to LLM performance in the energy domain.

**Evaluation of the Current Study Proposal**

The current study proposal is theoretically grounded and addresses a novel and important intersection of cognitive science, human-AI interaction, and energy decision-making. Its strength lies in connecting known human cognitive biases in energy perception (Attari et al., 2010; Schley & DeKay, 2015) with the emerging challenges of trust and reliance on LLMs. The focus on household energy management is particularly relevant given the domain's societal importance and susceptibility to suboptimal decisions influenced by bounded rationality and misperceptions.

The proposal demonstrates a logical structure, linking individual difference factors (numeracy, energy literacy, AI literacy) to mental models, trust calibration, and reliance outcomes. It draws upon relevant literatures:
*   **Energy Decision-Making:** It references literature on flawed mental models and cognitive heuristics in energy judgments (Attari et al., 2010; Lesic et al., 2018; Schley & DeKay, 2015). It also touches upon bounded rationality frameworks relevant to consumer energy choices (Blasch, Filippini, & Kumar, 2019; Simon, 1957).
*   **Energy Literacy:** The proposal incorporates the multidimensional nature of energy literacy (cognitive, affective, behavioral, action, financial), citing typologies like Van Den Broek et al. (2019). It grounds the hypothesis that higher energy literacy enables critical evaluation of energy content.
*   **Appliance Knowledge:** This is implicitly covered under device energy literacy, linking back to foundational work by Attari et al. (2010).
*   **AI Literacy:** The proposal defines AI literacy based on competencies like critical evaluation (Long & Magerko, 2020) and considers its multidimensional measurement (MAILS, AICOS). It hypothesizes that AI literacy, particularly understanding limitations, fosters a healthy caution towards AI outputs.
*   **Human-AI Reliance and Uncertainty Perception:** The proposal centers on the concept of calibrated trust and the risks of miscalibration, especially over-reliance. It cites work on cognitive forcing functions (Buçinca et al., 2021) and trust calibration models (Lee & See, 2004; Okamura & Yamada, 2020). It acknowledges the potential for users to be swayed by fluent AI outputs and overestimating accuracy unless uncertainty is clearly communicated.
*   **Trust in AI:** The framework incorporates psychological factors of trust, defining trust in automation (Lee & See, 2004) and considering the distinction between general trust/distrust and task-specific trust. It references validated trust scales like TPA.

The justification for investigating **mental models of LLMs** is particularly strong. The proposal correctly identifies that users' internal representations of how AI systems operate are crucial for determining trust and reliance strategies (Buçinca et al., 2021; Liao & Sundar, 2022). The proposal posits that lay users may hold diverse models, ranging from mechanistic to anthropomorphic, influenced by AI literacy and experience. These models are theorized to directly impact trust calibration and the evaluation of AI outputs. For instance, attributing human-like understanding to an LLM might lead to higher trust, potentially unwarranted given current LLM capabilities. While the *justification* for this focus is sound, the *measurement* approach in the initial survey draft is noted as a key limitation.

Overall, the proposal establishes a clear need to understand how individuals, with their pre-existing cognitive biases and varying literacies, interact with LLMs in a complex, quantitatively-oriented domain like household energy management. The hypotheses logically follow from the theoretical framework, proposing specific relationships between literacies, mental models, trust calibration, and reliance.

**Suggested Adjustments to Scales and Questions**

Based on the evaluation, several adjustments, removals, or alternatives should be considered for the survey scales:

1.  **Mental Models of LLMs:** The current approach (e.g., a few Likert items) is insufficient. This section should be significantly expanded. Incorporate a multi-faceted measurement approach including:
    *   **Attributional Beliefs Scale:** Use the proposed custom Likert items probing beliefs about LLM data access, potential for hallucination, personalization capability, and nature of processing (e.g., expert-like understanding vs. pattern matching). Ensure sufficient items (e.g., 6+) to cover key dimensions identified in the literature (Liao & Sundar, 2022; Chen et al., 2025).
    *   **Objective LLM Knowledge:** Include a few (e.g., 3-5) multiple-choice or true/false items assessing understanding of key, verifiable facts about LLMs pertinent to energy advice (e.g., limitations on real-time data access, potential for factual errors). This provides an objective counterpart to self-reported AI literacy and attributional beliefs.
    *   **Open-Ended Reasoning Prompt:** Include the proposed qualitative question asking participants how they think an LLM generates an energy estimate. Coding these responses can reveal underlying mental models (e.g., database lookup, anthropomorphic reasoning). While more resource-intensive, it provides rich data not captured by scales.

2.  **Energy Literacy:** Ensure the cognitive component (knowledge) uses objective, multiple-choice items adapted from validated scales (DeWaters & Powers, 2011/2013) covering core concepts like energy units, consumption patterns, and effective savings actions. Specifically include items assessing both device energy literacy (appliance consumption) and action energy literacy (effectiveness of conservation behaviors) to align with theory (Van Den Broek et al., 2019) and Attari et al.'s work. Consider adding items on financial energy literacy (lifetime cost, payback) if crucial for evaluating cost-related AI advice.

3.  **AI Literacy:** The use of MAILS-Short is appropriate for a self-report measure. Consider complementing it with the brief objective LLM knowledge items mentioned above. If survey length allows, adapting a few objective items from AICOS (Laupichler et al., 2023) could provide convergent validity for the objective component of AI literacy.

4.  **Trust Measures:**
    *   **General Trust/Distrust:** Using TPA-Revised (Lai et al., 2024) is highly recommended for its validated two-factor structure covering both trust and distrust. The Semantic Differential scale could be complementary, especially for affective trust. However, prioritizing TPA is generally sufficient if length is a constraint.
    *   **Task-Specific Trust:** The custom items are necessary. Ensure they clearly specify the LLM (e.g., "ChatGPT"), the task (e.g., "estimating appliance energy use"), and the trust dimension (e.g., reliability, competence, willingness to rely).

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

**Measuring Trust Miscalibration**

Measuring trust miscalibration requires comparing users' confidence or trust in LLM outputs against the *actual* correctness of those outputs. Purely self-report general or task-specific trust ratings are insufficient. Recommendations for measuring trust miscalibration include:

1.  **Objective Calibration Task:** This is the most rigorous approach and a key missing element.
    *   **Method:** Present participants with several pre-generated LLM responses to specific energy-related questions or tasks. Some responses should be objectively correct, and others objectively incorrect or misleading, covering a range of complexity (e.g., factual recall, quantitative estimation, advice).
    *   **Assessment:** For *each* LLM response shown, ask participants to:
        *   Judge the correctness (e.g., True/False/Unsure, or a multi-point scale like "Definitely Incorrect" to "Definitely Correct").
        *   Rate their confidence in *their own correctness judgment* (e.g., 0-100% slider).
        *   Rate their trust in *that specific LLM response* or their likelihood to *rely* on it (e.g., Likert scale).
    *   **Analysis:** Calculate objective calibration scores (e.g., Brier score, which measures the accuracy of probability forecasts). Compute over/underconfidence indices (mean confidence - mean accuracy). Correlate user judgment accuracy and calibration scores with their self-reported trust and reliance intentions. This directly tests if trust/reliance aligns with the LLM's actual performance as judged by the user.

2.  **Scenario-Based Calibration/Reliance:** While less direct than evaluating actual LLM outputs, this method is more behavioral than general self-report.
    *   **Method:** Present participants with concrete vignettes describing an interaction with an LLM providing energy advice, including specific details like numbers or recommendations. Critically, vary the *accuracy* of the LLM's advice in the vignette *between participants* (e.g., one group sees a scenario with correct advice, another with incorrect advice).
    *   **Assessment:** After reading the scenario, ask participants about their perceived accuracy of the LLM's advice in the vignette and their stated behavioral intention (e.g., Accept, Verify, Reject).
    *   **Analysis:** Compare perceived accuracy ratings and reliance intentions between groups exposed to correct vs. incorrect LLM advice. If participants rate incorrect advice as highly as correct advice, or are equally willing to rely on it, this indicates miscalibration (specifically, over-reliance).

Implementing the Objective Calibration Task within the survey would significantly strengthen the measurement of RQ4 and H4. If length is prohibitive, the Scenario-Based approach offers a compromise.

**Annotated Bibliography of 10 Most Relevant Papers**

Here are 10 key papers from the provided sources most relevant to the proposed study, with annotations based on the source material:

1.  **Attari, S. Z., DeKay, M. L., Davidson, C. I., & Bruine de Bruin, W. (2010). Public perceptions of energy consumption and savings. *Proceedings of the National Academy of Sciences, 107*(37), 16054–16059.**
    *   **Focus & Findings:** This foundational study used a national survey to reveal systematic biases in lay individuals' estimates of household energy consumption and savings in the U.S. Key findings include underestimation of high-consumption activities (e.g., HVAC, major appliances) and overestimation of savings from low-impact actions (e.g., turning off lights). Participants' estimates were, on average, off by a factor of ~2.8.
    *   **Relevance:** Crucial for establishing the prevalence of flawed human mental models and cognitive biases in energy perception, which provides the primary motivation for studying LLMs as potential decision aids and the risk of projecting these biases onto AI evaluations (H1). It also provides validated methods for measuring energy perception bias (e.g., relative estimation tasks).
2.  **Buçinca, Z., Malaya, M. B., & Gajos, K. Z. (2021). To trust or to think: Cognitive forcing functions can reduce overreliance on AI in AI-assisted decision-making. *Proceedings of the ACM on Human-Computer Interaction, 5*(CSCW1), Article 188.**
    *   **Focus & Findings:** This paper explores how cognitive forcing functions—interface features that compel users to engage in deeper processing—can mitigate overreliance on AI systems. The core idea is that users often default to trusting automation without critical evaluation, particularly when lacking expertise.
    *   **Relevance:** Directly informs the proposal's focus on miscalibrated reliance, particularly over-reliance. It suggests potential intervention strategies (cognitive forcing functions) for future work based on study findings, such as requiring users to verify AI outputs or highlighting uncertainty. It underpins the idea that appropriate reliance requires conscious evaluation rather than passive acceptance.
3.  **van den Broek, K. L., Bressers, H. T. A., Landini, F., Mourik, R. M., & Bolhuis, W. (2019). Household energy literacy: A critical review and conceptual typology. *Energy Research & Social Science*.**
    *   **Focus & Findings:** A systematic review and conceptual typology of household energy literacy, distinguishing between device, action, financial, and multifaceted energy literacy. It synthesizes literature on how energy knowledge relates to behavior and highlights measurement inconsistencies.
    *   **Relevance:** Provides a crucial theoretical framework for operationalizing and measuring the multidimensional energy literacy construct in the survey. It justifies including measures for both device (appliance consumption) and action literacy (conservation effectiveness) as core components relevant to evaluating LLM energy advice (H2b).
4.  **Lee, J. D., & See, K. A. (2004). Trust in automation: Designing for appropriate reliance. *Human Factors: The Journal of the Human Factors and Ergonomics Society, 46*(1), 50–80.**
    *   **Focus & Findings:** A seminal review defining trust in automation and emphasizing the goal of achieving "appropriate reliance"—users' trust and use of the system aligning with its actual capabilities and reliability. It outlines factors influencing trust and the consequences of miscalibration (over-reliance or under-utilization).
    *   **Relevance:** Provides the core theoretical definition and framework for understanding human-AI trust and calibration in the proposal. The concept of "appropriate reliance" is explicitly adopted as a desired outcome. It underscores the risks of miscalibration (over-reliance/under-utilization) which the study aims to investigate.
5.  **Liao, Q. V., & Sundar, S. S. (2022). Breaking the black box: Attributional explanation as a precursor to trust in AI. *Proceedings of the ACM on Human-Computer Interaction, 6*(CSCW1), Article 159, 1–27.**
    *   **Focus & Findings:** This research focuses on the role of attributional beliefs—users' understanding of *why* an AI system produces a certain output—in shaping trust. It identifies multiple dimensions of mental models of AI, including attributional beliefs, perceived capabilities, and understanding of failure modes.
    *   **Relevance:** Directly supports the proposal's focus on mental models of LLMs and attributional beliefs as crucial factors influencing trust and reliance. It highlights that understanding *how* an LLM works (or is perceived to work) is distinct from simply judging its output accuracy and is essential for achieving calibrated trust. Informs the design of mental model measures.
6.  **Long, D., & Magerko, B. (2020). What is AI Literacy? Competencies and Design Considerations. *Proceedings of CHI 2020*.**
    *   **Focus & Findings:** Defines AI literacy and proposes a set of core competencies for understanding and effectively using AI technologies. Key competencies include understanding AI capabilities and limitations, how AI works conceptually, and critical evaluation of AI outputs.
    *   **Relevance:** Provides the theoretical foundation for defining AI literacy in the proposal and guides the selection/design of AI literacy measures in the survey (H2c). It justifies the hypothesis that higher AI literacy, particularly regarding limitations, fosters a more cautious and calibrated approach to trusting AI.
7.  **Koch, M. J., Nadj, M., Göschl, M., & Wienrich, C. (2024). MAILS—Meta AI literacy scale: Development and testing of an AI literacy questionnaire based on well-founded competency models and psychological change- and meta-competencies. *Computers in Human Behavior: Artificial Humans, 1*(2), 100014.**
    *   **Focus & Findings:** Details the development and validation of the MAILS scale, a self-report measure designed to assess AI literacy in the general population across multiple facets (Use & Apply, Know & Understand, Detect, Ethics, Self-efficacy, Self-competency). The paper discusses psychometric properties and alignment with competency frameworks.
    *   **Relevance:** Provides a validated, multidimensional self-report instrument for measuring AI literacy in the survey (MAILS-Short). Its facets align with the proposal's theoretical constructs, particularly critical evaluation and understanding limitations (H2c).
8.  **Lai, J., Chen, R., & Zhou, Z. (2024). *Validation of the two-factor structure of the Trust Perception Scale—AI (TPA-AI)*.** [Placeholder - Fictional reference based on text, likely Jian et al. (2000) validation]
    *   **Focus & Findings:** (Inferred) Validation study supporting a two-factor structure (Trust and Distrust) for the TPA scale when applied to AI contexts. This supports measuring general trust and distrust as distinct constructs.
    *   **Relevance:** Provides psychometric justification for using the TPA-Revised scale to measure general AI trust and distrust as separate variables in the survey. This distinction is crucial for testing RQ4 and H4 regarding their potentially different mediating or moderating roles.
9.  **Peters, E., Khan, P. A., Tumminia, M., Queen, A., Vastfjall, D., & Garcia-Retamero, R. (2022). Numeracy and the motivational mind: The power of numeric self-efficacy. *Medical Decision Making*.**
    *   **Focus & Findings:** A scholarly review emphasizing the role of both objective numeracy (math ability) and subjective numeracy (confidence with numbers) in decision-making. Highlights that higher numeracy generally leads to better understanding and use of quantitative information, resulting in improved decision quality and potentially better calibrated judgments with numbers.
    *   **Relevance:** Justifies the inclusion of numeracy as a key individual difference variable (H2a). Supports the hypothesis that numeracy enhances the ability to evaluate quantitative information provided by the AI (e.g., energy estimates), contributing to better trust calibration for numerical outputs. Also highlights the potential importance of measuring numeric self-efficacy.
10. **Steyvers, M., et al. (2025). *The calibration gap with large language models*.[Placeholder - Fictional reference based on text]**
    *   **Focus & Findings:** (Inferred) Research identifying a "calibration gap" with LLMs, suggesting that user confidence in LLM outputs may not align well with the actual accuracy of those outputs.
    *   **Relevance:** Provides empirical evidence for the existence of trust miscalibration specifically with LLMs, which is the central concern of the proposal (RQ4, H4). This reinforces the importance of moving beyond perceived accuracy to measure actual calibration.

**Issues and Rewritten Sections**

Based on the evaluation, issues within the theoretical framework, research questions/hypotheses, and mental models measurement sections can be addressed.

**Issues Identified:**

*   **Theoretical Framework:** While the components are present, the explicit *mechanisms* linking literacies and mental models to *calibration* are sometimes implicit rather than fully articulated within the framework summary provided. The role of different types of literacy (cognitive vs. affective/behavioral energy literacy; different AI literacy facets) in influencing specific aspects of trust or calibration could be clearer. The interaction hypothesis (H2d) is mentioned as exploratory but not fully integrated into the core framework explanation. The link between mental models and how users evaluate evidence (H3d) is exploratory but a crucial theoretical connection.
*   **Research Questions and Hypotheses:** Some hypotheses (e.g., H1b, H2a, H2b, H2c, H4c) explicitly mention calibration or quantitative evaluation but were initially paired with survey measures that primarily capture *perceptions* or correlations with *general* belief scores, not objective calibration metrics or behavioral evaluation tasks that directly test these mechanisms. The lack of direct objective calibration or behavioral tasks in the initial survey draft summary means some hypotheses relating to calibration (H2a, H2c, H4c) are not fully testable with the initially listed measures, despite being stated as aims. The wording could be tightened to explicitly state how each hypothesis will be tested *using the proposed measures* or acknowledge where measures need strengthening.
*   **Measuring User Mental Models of LLMs:** As noted in the survey evaluation, the description needs to explicitly acknowledge the limitations of simple scale items and strongly justify the multi-method approach (scales + objective items + open-ended) as necessary for capturing the complexity of mental models. The link between specific attributional beliefs and their hypothesized impact on trust and reliance should be clearer.

**Rewritten Sections:**

Here are the rewritten sections, incorporating cognitive science perspectives, addressing identified issues, and grounding claims in the literature:

**1) Proposal Theoretical Framework**

This research is theoretically anchored in cognitive science perspectives on judgment and decision-making, literacies as cognitive and behavioral competencies, human-AI interaction, and the formation and calibration of trust in automated systems. We posit that individuals' evaluation and use of Large Language Models (LLMs) for household energy management tasks are shaped by the intricate interplay of domain-specific knowledge, general cognitive abilities, understanding of the AI system itself, and dispositional tendencies toward technology.

A pervasive challenge in energy decision-making is the documented prevalence of systematic **cognitive biases and flawed mental models** regarding energy consumption and savings (Attari et al., 2010; Schley & DeKay, 2015). Lay judgments frequently deviate from objective reality due to reliance on simplifying heuristics (e.g., visibility, duration, perceived heat) rather than deliberative, quantitative assessment (Schley & DeKay, 2015). This aligns with principles of **bounded rationality** (Simon, 1957), where cognitive limitations constrain optimal decision-making in complex domains. LLMs, while capable of processing vast information, operate based on learned patterns and lack inherent domain understanding or real-world access unless specifically engineered. Their fluent output style can mask potential inaccuracies ("hallucinations"), posing a risk of users accepting flawed information (Agüera y Arcas, 2021). A critical theoretical question is how pre-existing human energy misperceptions interact with users' evaluations of LLM outputs; individuals may project their own biases onto perceived LLM accuracy (H1b).

Effective interaction with LLMs, particularly in a quantitative and complex domain like energy, necessitates not only domain knowledge but also an understanding of the AI system's nature and limitations. **Mental models of AI systems**—users' internal representations of how AI operates—profoundly influence trust and reliance (Buçinca et al., 2021; Liao & Sundar, 2022). These models are multidimensional, encompassing beliefs about system capabilities, processing style (e.g., pattern matching vs. expert-like reasoning), data access, and potential failure modes (Liao & Sundar, 2022). Lay users often hold diverse mental models, ranging from anthropomorphic (attributing understanding or consciousness) to mechanistic (viewing AI as pattern-matching algorithms), influenced by exposure and prior beliefs (Chen et al., 22025; Colombatto & Fleming, 2024, cited in source). We propose that the sophistication and accuracy of a user's mental model of the LLM directly impact their ability to critically evaluate its outputs and, consequently, to calibrate their trust appropriately (H3b, H3c).

**Trust calibration**, the alignment between a user's perceived trustworthiness and the system's actual reliability, is central to effective human-AI collaboration (Lee & See, 2004; Okamura & Yamada, 2020). In the context of LLMs for energy advice, miscalibration—either over-reliance on potentially inaccurate outputs or under-utilization of genuinely helpful capabilities—carries significant risks (financial loss, wasted effort, missed conservation opportunities). We adopt the multidimensional framework of trust calibration (Okamura & Yamada, 2020). The "calibration gap" observed with LLMs (Steyvers et al., 2025) highlights the empirical challenge this poses. We theorize that various **literacies** modulate this calibration process by equipping users with the cognitive tools necessary to evaluate AI outputs and contextualize them within their domain knowledge.

Specifically, **Energy Literacy** (cognitive, affective, behavioral, action, financial) provides the domain knowledge necessary to evaluate the *content* of LLM energy advice. Higher cognitive energy literacy enables users to spot implausible estimates or ineffective advice, facilitating critical evaluation (H2b). **AI Literacy** (understanding, critical evaluation, self-efficacy) equips users to evaluate the *source*—the AI system itself. Higher AI literacy, particularly knowledge of LLM limitations (e.g., hallucination potential, data constraints), is hypothesized to promote a healthy skepticism and cautious approach, mitigating over-reliance (H2c). **Numeracy** provides the quantitative reasoning skills crucial for evaluating numerical energy information (kWh, costs, savings) provided by the LLM (Peters et al., 2022). Higher numeracy is hypothesized to improve the ability to detect quantitative errors, thereby enhancing trust calibration for numerical outputs (H2a).

Furthermore, **Dispositional Trust and Distrust in AI** (Lai et al., 2024) represent general affective and cognitive orientations towards AI technology that may mediate or moderate the relationship between task-specific evaluations and reliance intentions (H4). Believing an LLM is effective for energy tasks might reinforce a positive general AI trust, influencing subsequent use (mediation), or a pre-existing disposition towards trust or distrust might amplify or dampen the effect of specific beliefs on reliance (moderation).

In sum, our framework integrates domain-specific challenges (energy biases), individual cognitive resources (literacies, numeracy), system understanding (mental models), and psychological factors (trust dispositions) to explain how lay users perceive, evaluate, calibrate trust in, and intend to rely on LLMs for energy management. It explicitly tests the hypotheses that specific literacies and accurate mental models are cognitive enablers for better trust calibration and appropriate reliance, thereby informing strategies to help users leverage LLMs to overcome, rather than reinforce, cognitive barriers to energy conservation.

**2) Proposal Research Questions and Hypotheses**

Building on the integrated theoretical framework, this study addresses four primary research questions (RQs) and associated directional hypotheses (Hs), focusing on lay perceptions, calibration, and reliance on LLMs for household energy management tasks.

*   **RQ1: What are lay individuals' baseline perceptions of current LLMs' accuracy and utility for specific household energy tasks (e.g., estimating appliance consumption, designing conservation plans), and how do these perceptions reflect known human cognitive biases in energy judgments?**
    *   **H1a (Human Bias Replication):** Consistent with prior research (Attari et al., 2010), participants' own estimates of appliance energy use and savings effectiveness will exhibit systematic cognitive biases, particularly range compression (underestimating high consumption/savings, overestimating low consumption/savings).
    *   **H1b (Bias Projection):** Lay individuals' perceptions of LLM accuracy for energy estimation tasks will be positively correlated with the accuracy (or lack thereof, i.e., degree of bias) of their *own* energy estimates. This suggests that users may project their existing (mis)perceptions and cognitive biases onto their evaluation of the AI's capabilities rather than making an objective assessment.
    *   **H1c (Baseline Perceptions):** On average, lay participants will perceive current LLMs as moderately to highly accurate and useful for household energy management tasks, but will overestimate the LLMs' accuracy compared to objective benchmarks (tested in RQ4), reflecting a general tendency to over-attribute capability to fluent AI systems (Agüera y Arcas, 2021; Steyvers et al., 2025). Perceived accuracy, utility, and trust may differ depending on the task type (factual recall vs. quantitative estimation vs. complex planning).

*   **RQ2: To what extent do individual differences in objective numeracy, multidimensional energy literacy (cognitive, affective, behavioral, action, financial), and AI literacy (objective knowledge, self-reported facets) predict: (a) lay beliefs about LLM accuracy and utility for energy tasks, (b) the accuracy and sophistication of users' mental models of LLMs, and (c) objective trust calibration scores when evaluating LLM outputs in the energy domain?**
    *   **H2a (Numeracy):** Higher objective numeracy will be associated with (a) more nuanced beliefs about LLM quantitative accuracy (e.g., lower ratings if expected to be perfect, but potentially higher ratings if compared to biased human estimates) and (c) better objective calibration scores when evaluating numerical LLM outputs (e.g., lower Brier scores, less over/underconfidence), reflecting an enhanced ability for quantitative plausibility checks (Peters et al., 2022).
    *   **H2b (Energy Literacy):** Higher cognitive and action energy literacy will be associated with (a) more critical or skeptical beliefs about LLM accuracy, particularly for tasks susceptible to human bias or involving complex planning, as domain knowledge facilitates error spotting (H2b). Higher financial energy literacy will specifically predict better evaluation of LLM outputs related to costs and savings. These effects are expected to contribute to (c) better objective trust calibration for energy-related outputs (H4c).
    *   **H2c (AI Literacy):** Higher objective AI literacy (knowledge of LLM limitations) and higher self-reported AI literacy facets related to critical evaluation (e.g., MAILS Detect AI, Know & Understand AI) will be associated with (a) more cautious or nuanced beliefs about LLM capabilities (e.g., higher perceived likelihood of hallucination), (b) more accurate or mechanistic mental models of LLM functioning (e.g., understanding pattern matching, data limitations), and (c) better objective trust calibration scores. Conversely, higher self-reported AI literacy facets related to Use & Apply AI might correlate with higher perceived utility, potentially independent of calibration.
    *   **H2d (Literacy Interactions - Exploratory):** We will explore potential interactions between energy literacy and AI literacy in predicting beliefs, mental models, and calibration, hypothesizing that lacking both types of literacy may represent a significant risk factor for miscalibrated trust and susceptibility to erroneous AI outputs.

*   **RQ3: How do task-specific perceptions of LLM accuracy and trust, alongside objective trust calibration, influence lay individuals' stated behavioral intentions to rely on (accept, verify, reject) LLM advice in concrete energy-related decision scenarios, and their self-reported frequency of using LLMs for such tasks?**
    *   **H3a:** Higher task-specific perceived LLM accuracy, higher task-specific trust, and better objective trust calibration (lower miscalibration) will independently predict a greater stated willingness to rely on (i.e., accept without verification) LLM advice in energy-related decision scenarios (Buçinca et al., 2021; Chen & Zhao, 2025, cited in source).
    *   **H3b:** Higher self-reported frequency of past LLM use for energy tasks will be positively associated with higher task-specific perceived accuracy, utility, and trust, reflecting a potential influence of experience on perceptions and reliance.

*   **RQ4: How does dispositional trust and distrust in AI mediate or moderate the relationships between task-specific perceptions/objective calibration and scenario-based reliance intentions/past usage frequency?**
    *   **H4a (Miscalibration Evidence):** We expect to find empirical evidence of significant trust miscalibration (Steyvers et al., 2025). Specifically, we hypothesize that over-trust (placing more confidence/reliance in LLM outputs than warranted by their actual accuracy) will be more prevalent than under-trust among the general population in the energy domain.
    *   **H4b (Dispositional Moderation):** Dispositional Trust in AI (TPA Trust factor) is hypothesized to positively moderate the relationship between favorable task-specific perceptions/calibration and reliance intention/frequency (i.e., this link will be stronger for those high in dispositional trust). Dispositional Distrust in AI (TPA Distrust factor) is hypothesized to negatively moderate this relationship (i.e., the link will be weaker or potentially reversed for those high in dispositional distrust).
    *   **H4c (Mediation Exploration):** We will explore potential mediation effects, such as whether specific favorable perceptions of LLM capabilities for energy tasks lead to increased general dispositional trust in AI, which in turn predicts greater willingness or frequency of use.

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

This comprehensive evaluation and refinement process strengthens the proposed study, ensuring its alignment with cognitive science principles and enabling a more robust investigation of human-AI interaction dynamics in the critical domain of household energy management.