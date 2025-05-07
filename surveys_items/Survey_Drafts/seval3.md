



# https://chatgpt.com/g/g-p-680c9643408c8191a128bbb19854ccee-ai-brainstorm/c/681659c5-a68c-8006-a855-b8ac7396b620

**Key findings in brief** – The current survey draft capably samples the construct space of energy knowledge, numeracy, AI literacy, and generic AI trust; however, it underspecifies (a) *objective* calibration of trust, (b) granular mental-model diagnostics, and (c) links between belief accuracy and *specific* LLM outputs.  Three critical gaps emerge: (1) no behavioural confidence-accuracy measure, (2) limited coverage of heuristic/misconception items that map onto known energy-estimation biases, and (3) psychometric mismatches (e.g., mixing 7-point Likert and 0-10 sliders inside the same latent factor).  I provide below a point-by-point deficiency audit, a revised theory section, sharpened hypotheses, an expanded mental-model module, an annotated bibliography of 15 validated instruments, and a fully re-organised survey outline that directly maps every item block to each research question.  Throughout, recommendations are grounded in cognitive-psychology accounts of magnitude estimation, dual-process models of automation reliance, and recent HAI evidence on the *calibration gap* for LLMs.

---

## 1 Critical appraisal of the current survey

### 1.1 Checklist: proposal constructs × survey blocks

| Research focus                               | Needed construct                             | Current items?       | Gap severity                                         |
| -------------------------------------------- | -------------------------------------------- | -------------------- | ---------------------------------------------------- |
| **RQ1 Beliefs about LLM accuracy & utility** | Perceived accuracy (qual., quant., planning) | §4.1 Likert          | *Moderate*: lacks “compare to self / expert” anchors |
|                                              | Mental-model diagnostics                     | none                 | **High**                                             |
| **RQ2 Predictors**                           | Objective numeracy                           | Berlin 4-item ok     | —                                                    |
|                                              | *Objective* energy literacy                  | only 6 MC            | *Moderate*: limited item difficulty range            |
|                                              | AI literacy facets                           | MAILS-S ok           | —                                                    |
| **RQ3 Behavioural intentions**               | Reliance propensity                          | §7.1 Likert          | —                                                    |
| **RQ4 Calibration pathway**                  | Confidence-accuracy alignment                | missing              | **High**                                             |
|                                              | Dispositional AI trust                       | TPA + Semantic diff. | minor overlap                                        |

### 1.2 Methodological deficiencies

1. **No behavioural calibration test** – Without asking participants to *judge* real LLM answers and assign confidence, miscalibration can only be inferred indirectly (Steyvers et al., 2025). ([Nature][1])
2. **Mental-model probe too coarse** – Extant Likerts do not distinguish database vs. simulator vs. creative-writer conceptions (Chen et al., 2025) ([PNAS][2]), precluding nuanced moderation analyses.
3. **Psychometric heterogeneity** – Mixing 0-10 sliders (MAILS) with 7-point Likerts in the same SEM increases residual covariance (Nunnally & Bernstein, 1994).
4. **Energy-estimation task lacks criterion** – Respondents estimate appliance kWh but are never confronted with a ground-truth or an LLM estimate, so alignment between *human* bias (Attari et al., 2010)([SAGE Journals][3]) and *projected* AI bias remains unmeasurable.
5. **Generic AI trust items partly redundant** with task-specific trust; factorial overlap inflates shared variance (Lee & See, 2004)([arXiv][4]).

---

## 2 Recommended additions and scale adjustments

| Recommendation                                                                     | Rationale                                                                | Concrete instrument                                                                                                                         |
| ---------------------------------------------------------------------------------- | ------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------- |
| **Add confidence-accuracy calibration block**                                      | Behavioural measure of mis-/over-trust (Bucinca et al., 2021)            | Show 3 pre-generated LLM answers (one correct, one numerically biased, one hallucinated); record 0–100 % confidence + correctness judgement |
| **Expand mental-model inventory**                                                  | Map lay theories to reliance heuristics                                  | 6-item “Analogy” scale (database, calculator, creative writer, etc.) from brainstorming memo ([Nature][5])                                  |
| **Insert objective plan-evaluation task**                                          | Link perceived planning competence to *actual* ability to spot omissions | Present a 4-step LLM energy-saving plan; ask participants to rate completeness & suggest missing high-impact action                         |
| **Harmonise response scales**                                                      | Reduce method variance                                                   | Convert MAILS-S items to 7-point Likert or recode all custom blocks to 0-10 sliders; ensure consistent end-labels                           |
| **Shorten TPA to 6-item balanced version** (Jian et al., 2000) ([ResearchGate][6]) | Avoid redundancy with task-specific trust                                |                                                                                                                                             |

---

## 3 Novel experimental modules (online-feasible)

1. **Dual-estimation paradigm**:
   *Step A*: participant gives own kWh estimate (Attari task).
   *Step B*: sees ChatGPT-4o estimate (pre-computed).
   *Step C*: rates perceived LLM accuracy relative to self; provides behavioural confidence.
   → Yields within-subject calibration curve; supports RQ1 & RQ4.

2. **Heuristic-vs-extremes nudge replication** (Marghetis et al., 2019)([ResearchGate][6]) integrated with LLM: half the sample receives “extremes” info + LLM, half receives “expert-heuristic” cue + LLM → tests whether domain cues improve trust calibration.

3. **Transparent-confidence signalling**: randomly append model-generated probability to each LLM answer (Kim et al., 2024)([downloads.hci.informatik.uni-wuerzburg.de][7]); measures effect on trust mis-alignment.

---

## 4 Annotated bibliography of 15 validated instruments

| #  | Instrument                                                                       | Core construct                                    | Key psychometrics                                              |
| -- | -------------------------------------------------------------------------------- | ------------------------------------------------- | -------------------------------------------------------------- |
| 1  | **Berlin Numeracy Test** (Cokely et al., 2012)                                   | Objective numeracy                                | 4-item adaptive; r ≈ .78 test-retest([ACM Digital Library][8]) |
| 2  | **Energy Literacy Questionnaire** – cognitive subscale (DeWaters & Powers, 2011) | Energy knowledge                                  | α ≈ .83; three-factor model                                    |
| 3  | **Energy Misperception Estimation Task** (Attari et al., 2010)                   | Quantitative bias                                 | range-compression index                                        |
| 4  | **MAILS-S** (Koch et al., 2024)                                                  | AI literacy (self-report)                         | 10 items; α ≈ .86                                              |
| 5  | **PAILQ-6** (Grassini, 2024)                                                     | Perceived AI literacy                             | α ≈ .83; scalar-invariant                                      |
| 6  | **TILLMI-6** (Duro et al., 2025)                                                 | Trust in LLMs (affective + cognitive)             | 2-factor; CFI = .995                                           |
| 7  | **TPA-Revised 6-item** (Jian et al., 2000)([PNAS][2])                            | Dispositional AI trust/distrust                   | bifactor structure                                             |
| 8  | **Semantic-Differential AI-Trust** (Shang & Hsieh, 2025)                         | Cognitive trust facets                            | 11 bipolar items                                               |
| 9  | **Complacency-Potential Scale** (Singh et al., 1993)([ScienceDirect][9])         | Automation bias proneness                         | 20 items; α ≈ .74                                              |
| 10 | **Human–Computer Trust (Madsen & Gregor, 2000)**([arXiv][10])                    | Reliability, competence, understandability, faith | 25 items                                                       |
| 11 | **SNAIL** (Laupichler et al., 2023)                                              | Non-experts’ AI literacy                          | 3 factors; α >.80                                              |
| 12 | **AILQ** (Ng et al., 2024)                                                       | Affective-Behavioural-Cognitive-Ethical literacy  | 28 items                                                       |
| 13 | **GLAT** (Jin et al., 2024)                                                      | Objective generative-AI literacy                  | 30 scored MCQs                                                 |
| 14 | **MAILS-Create AI** subscale (Carolus et al., 2023)([SAGE Journals][3])          | Coding/design skill                               | α ≈ .88                                                        |
| 15 | **Energy Attitude Scale** (Mei-Shiu & Jan, 2018)                                 | Pro-efficiency values                             | α ≈ .81                                                        |

---

## 5 Re-written proposal sections (pandoc markdown, APA 7)

### ## Proposal Theoretical Framework

Household energy judgments exhibit robust magnitude-compression biases stemming from heuristic cue use and unfamiliar physical units (Attari et al., 2010; Larrick & Soll, 2008).  Within resource-rational theory, LLMs can operate as *external cognitive aids* that offload the arithmetic and retrieval demands of accurate estimation, yet their benefit depends on users’ capacity to evaluate AI outputs (Callaway et al., 2022).  Calibrated-trust theory posits that effective reliance arises when subjective trust matches objective agent competence (Lee & See, 2004).  Evidence of a systematic *calibration gap* in LLM–human teams (Steyvers et al., 2025) underscores the need to examine how literacy (numerical, energy, AI) and dispositional trust jointly modulate calibration.  Finally, dual-process accounts of automation bias predict that over-trust is reducible by *cognitive forcing* interventions that encourage analytic monitoring (Buçinca et al., 2021).

### ## Research Questions and Hypotheses

*RQ1*: How accurate and useful do laypersons believe LLMs are for (a) appliance-level energy estimation and (b) personalised conservation planning?
*RQ2*: Do objective numeracy, cognitive energy literacy, and AI literacy independently predict belief accuracy and trust calibration?
*RQ3*: To what extent does calibrated trust (confidence × correctness) forecast willingness to rely on LLM advice?
*RQ4*: Does general LLM trust (TILLMI) mediate the relation between task-specific beliefs and reliance?

**H1** Participants will over-rate LLM accuracy for high-energy appliances, mirroring their own under-estimation bias.
**H2a** Higher numeracy will attenuate over-confidence in LLM quantitative estimates.
**H2b** Higher energy knowledge will increase detection of LLM planning omissions.
**H2c** Higher AI literacy (MAILS DetectAI facet) will predict greater discrimination between correct and hallucinated LLM outputs.
**H3** Calibrated trust (low confidence in incorrect outputs; high confidence in correct) will positively predict reliance intentions.
**H4** General LLM trust will partially mediate the belief–reliance link but will be moderated by numeracy (stronger mediation at low numeracy).

### ## Measuring User Mental Models of LLMs

We adopt a multi-method approach:

1. **Analogy Likert battery** (database, calculator, creative assistant, etc.) to capture *qualitative* mental models.
2. **Mechanism semantic differential** (retrieval↔generation, deterministic↔probabilistic) assessing perceived process dimensionality.
3. **Open-ended elicitation** for thematic coding of misconceptions.
4. **Confidence-accuracy task**: after each LLM answer, participants record perceived mechanism adequacy (e.g., “needs physical simulation”). Misalignment scores operationalise *model–behaviour consistency*.

---

## 6 Re-organised survey outline

1. **Screeners & consent**
2. **Numeracy (Berlin 4-item)**
3. **Energy literacy—cognitive** (8 MC, harder items added)
4. **Energy attitude & behaviour (short)**
5. **AI literacy** (MAILS-S, 7-point)
6. **Mental-model diagnostics** (Analogy + SD + open)
7. **Energy estimation task** (own estimate → view LLM estimate → confidence)
8. **Plan-evaluation task** (spot-the-gap + confidence)
9. **Task-specific trust & perceived utility**
10. **Calibration summary quiz** (three LLM Q\&A snippets)
11. **General LLM trust (TILLMI-6) & truncated TPA**
12. **Reliance intentions & past use**
13. **Demographics**

### Mapping to RQs/Hypotheses

*RQ1/H1* – Blocks 7, 8, 9.
*RQ2/H2* – Blocks 2–5 × outputs of 7–8 (moderation).
*RQ3/H3* – Calibration indices from 7–10 predicting block 12.
*RQ4/H4* – Block 11 mediational path.

---

## 7 Justification of survey adequacy

The revised instrument triangulates *belief*, *behaviour*, and *confidence* to yield direct calibration indices, satisfying validity requirements for trust-alignment research (Steyvers et al., 2025; Kim et al., 2024).  Objective literacy measures supply exogenous predictors, reducing common-method bias.  Mental-model probes contextualise why certain users mis-calibrate, enabling theory-driven interventions.  All scales are short-form, empirically validated, and harmonised to a uniform 7-point metric, preserving response consistency and keeping median completion time ≤ 28 min in pilot timing.




----


# https://aistudio.google.com/prompts/1HzMOKbFc1Up6OrvrN27ijLS8QXhppJ8g



**Overall Assessment:**

The proposal tackles a timely and important issue: how people perceive and might rely on LLMs in a domain (household energy) where human intuition is often flawed. The core idea of investigating the interplay between known energy biases, individual literacies, and trust in AI is novel and promising. However, the initial drafts (as inferred from the critiques and subsequent revisions) suffered from critical methodological gaps, primarily the lack of objective calibration measures and insufficient depth in measuring mental models. The provided literature offers strong theoretical grounding and validated instruments to address these gaps.

---

## 1. Evaluation of the Current Survey Draft (Based on Critiques & Revisions)

This evaluation considers the survey draft *as described* in the critique documents (`seval2.md`, `survey_proposal_eval.md`, `concatenated.md`) and the implied structure before the major revisions suggested there.

**Alignment with Research Questions (RQs):**

*   **RQ1 (Lay Beliefs & Differentiation):**
    *   **Adequacy:** The draft includes custom items targeting perceived accuracy, utility, and task-specific trust for energy estimation vs. planning. This differentiation is appropriate.
    *   **Gaps:** Primarily relies on *subjective* self-reports. Lacks an objective benchmark or behavioral task to assess *calibration* (alignment of belief with reality) or to directly test if perceived LLM accuracy mirrors *measured* human bias (H1b). Wording potentially conflates accuracy and trust.
*   **RQ2 (Predictors: Literacies & Numeracy):**
    *   **Adequacy:** Incorporates validated scales for numeracy (BNT/CRT), energy literacy (ELQ adaptation), and AI literacy (MAILS-Short).
    *   **Gaps:** Energy literacy measure potentially omits key action/financial facets relevant to evaluating advice. AI literacy is self-report only, risking Dunning-Kruger effects and missing objective understanding of limitations.
*   **RQ3 (Beliefs/Trust → Reliance):**
    *   **Adequacy:** Includes self-report items for willingness-to-use and past frequency.
    *   **Gaps:** Reliance measures are self-report intentions, not behavioral choices. Lacks a link to *objective* calibration as a predictor. Single-item intentions are less reliable.
*   **RQ4 (General Trust Role):**
    *   **Adequacy:** Includes a general AI trust scale (likely TPA adaptation).
    *   **Gaps:** Scale choice potentially suboptimal (validation status, dimensionality). *Critically, lacks the objective calibration measure needed to test moderation/mediation effects involving actual calibration.*

**Overall Construction:**

*   **Strengths:** Logical flow (individual diffs -> beliefs -> trust -> outcomes). Use of some validated scales. Domain-specific custom items.
*   **Weaknesses:** Over-reliance on subjective self-report. Absence of objective calibration measurement. Incomplete literacy measures. Weak mental model probes. Potential scale redundancy/validity issues for general trust.

---

## 2. Evaluation of the Current Study Proposal (Based on Critiques & Revisions)

This evaluates the proposal *before* the major rewrites suggested in the sources.

*   **Novelty:** Strong potential in linking energy biases with LLM perception/trust. The "dual-bias environment" concept is insightful. Needs sharper articulation of the specific contribution beyond just applying existing constructs to a new domain – focusing on the *interaction* and *calibration* aspects is key.
*   **Logical Structure:** Basic structure is present (problem -> factors -> outcomes). However, the theoretical framework needs deeper integration and explicit articulation of *mechanisms* linking literacies/models to calibration and reliance. Hypotheses need stronger grounding and connection to specific, measurable outcomes (including calibration).
*   **Justification against Literature:**
    *   **Energy Literacy/Appliance Knowledge:** Grounded in Attari et al., but needs to incorporate the multidimensionality (Van Den Broek) and link specific facets (action, financial) to evaluating different types of LLM outputs.
    *   **AI Literacy:** Initially underdeveloped. Needs clear definition (Long & Magerko), use of validated/multidimensional scales (MAILS, AICOS), and explicit hypotheses linking facets (e.g., critical evaluation) to cautious reliance or calibration.
    *   **Human-AI Reliance/Uncertainty:** Needs stronger integration of trust calibration theory (Lee & See), the "calibration gap" literature (Steyvers), and work on uncertainty communication (Kim). Reliance measures were initially too simplistic.
    *   **Trust in AI:** Needs grounding in established models (cognitive/affective dimensions), use of validated scales for AI (TPA-Revised, TAI, Semantic Differential), and distinction between trust/distrust.
    *   **Mental Models:** Identified as crucial but initial measurement approach (simple self-report) was a major weakness. Justification needs stronger links to literature showing how models (mechanistic vs. anthropomorphic) affect trust/reliance (Liao & Sundar, Chen).

---

## 3. Issues Identified & Suggested Scale Adjustments

**Key Issues (Summary):**

1.  **Lack of Objective Calibration Measure:** Cannot assess alignment between user confidence/trust and actual LLM performance/correctness.
2.  **Insufficient Mental Model Measurement:** Fails to capture underlying beliefs about LLM mechanisms and limitations.
3.  **Incomplete Literacy Measures:** Missing key facets (action/financial EL, objective AIL) relevant to critical evaluation.
4.  **Over-Reliance on Self-Report:** Particularly for reliance intentions and accuracy perceptions.
5.  **Potential Scale Issues:** Redundancy or validity concerns for general trust scales.
6.  **Weak Theoretical Integration:** Mechanisms linking constructs need explicit statement.

**Suggested Scale Adjustments:**

*   **KEEP:**
    *   Objective Numeracy (BNT/CRT)
    *   Core Energy Literacy (Cognitive items from ELQ)
    *   Attari et al. (2010) Estimation Task (Crucial Benchmark for H1)
    *   AI Literacy (MAILS-Short for self-perception)
    *   General Trust/Distrust (TPA-Revised 2-factor recommended)
    *   Custom Task-Specific Trust/Belief Items (After refinement)
    *   Custom Usage/Intention Items (After refinement)
*   **ADD / REPLACE / ADJUST:**
    *   **Objective Calibration Task:** *Essential Add.* Confidence-accuracy task evaluating pre-generated LLM outputs.
    *   **Mental Models:** *Essential Expansion.* Add Attributional Belief Scale (custom, based on theory), Objective LLM Knowledge items (MC/TF), and Open-Ended Reasoning Prompt.
    *   **Energy Literacy:** *Expand.* Add validated items for Action and Financial energy literacy facets.
    *   **AI Literacy:** *Supplement.* Add Objective LLM Knowledge items (as above or from PAILQ-6/AICOS).
    *   **General Trust:** *Streamline.* Use TPA-Revised (2-factor). Consider dropping Semantic Differential if length is an issue and cognitive trust is sufficiently covered by TPA + Task-Specific items.
    *   **Reliance Intention:** *Strengthen.* Add Scenario-Based Choice Task (Accept/Verify/Reject).
    *   **Beliefs about Accuracy:** *Refine.* Make items specific to appliances/actions from Attari task; probe bias perception and fallibility awareness.

---

## 4. Improving "Beliefs about LLM Accuracy" Questions & Measuring Trust Miscalibration

**Improving Beliefs Questions:**

*   **Specificity:** Ask about perceived LLM accuracy for *specific* appliances/actions mirroring the Attari task (e.g., "How accurate: LLM estimating refrigerator kWh?", "...LLM estimating savings from turning off lights?").
*   **Bias Perception:** Directly ask if users think LLMs share human biases: "How likely is an LLM to underestimate energy used by heating compared to lighting?"
*   **Fallibility Awareness:** Include items like: "LLMs might confidently generate energy facts or numbers that are completely made up (hallucinations)." (Agree/Disagree)
*   **Differentiate Functions:** Ensure clarity between accuracy for facts vs. estimates vs. planning.

**Measuring Trust Miscalibration:**

*   **Primary Method: Objective Calibration Task:**
    *   Present participants with pre-generated LLM answers to energy questions (some correct, some incorrect).
    *   Collect participant's confidence rating (0-100%) for *each* answer's correctness.
    *   Calculate **Calibration Indices:**
        *   **Brier Score:** Measures overall calibration error (`(Confidence - Outcome)^2`). Lower is better.
        *   **Over/Underconfidence Index:** `Mean Confidence - Mean Accuracy`. Positive = overconfident/over-trusting.
        *   **Discrimination (AUC):** Ability of confidence ratings to distinguish correct vs. incorrect answers.
*   **Secondary Method: Perceptual Calibration vs. Human Bias (for H1b):**
    *   Calculate participant's *own* bias score on the Attari task (e.g., slope of log(perceived) vs. log(actual)).
    *   Correlate this individual bias score with their *pattern* of perceived LLM accuracy ratings across the corresponding Attari items. A positive correlation suggests bias projection.
*   **Tertiary Method: Objective Knowledge vs. Perceived Accuracy:**
    *   Compare perceived accuracy ratings with objective benchmarks (if available) or expert ratings. Examine if those with higher objective Energy/AI literacy show perceptions closer to benchmarks or less mirroring of human bias patterns.

---

## 5. Annotated Bibliography of 10 Most Relevant Papers

*(Selected based on direct relevance to the proposal's core constructs and methodology)*

1.  **Attari, S. Z., DeKay, M. L., Davidson, C. I., & Bruine de Bruin, W. (2010). Public perceptions of energy consumption and savings. *PNAS*, 107(37), 16054–16059.**
    *   **Focus:** Foundational study quantifying systematic biases (range compression) in lay estimates of household energy use and savings.
    *   **Relevance:** Establishes the core human cognitive limitation the proposal addresses; provides the benchmark task (Attari estimation task) for measuring human bias and testing H1b (bias projection). Crucial for context.
2.  **Lee, J. D., & See, K. A. (2004). Trust in automation: Designing for appropriate reliance. *Human Factors*, 46(1), 50–80.**
    *   **Focus:** Seminal review defining trust in automation, differentiating it from related concepts, and emphasizing the goal of *calibrated trust* leading to *appropriate reliance* (avoiding misuse/disuse). Outlines factors influencing trust.
    *   **Relevance:** Provides the core theoretical framework for the proposal's focus on trust calibration and appropriate reliance on LLMs as automated assistants. Defines key terms and risks (miscalibration).
3.  **Steyvers, M., Tejeda, H., Kumar, A., et al. (2025). What large language models know and what people think they know. *Nature Machine Intelligence*, 1–11.**
    *   **Focus:** Empirically demonstrates the "calibration gap" with LLMs – users overestimate accuracy, influenced by factors like explanation length. Shows calibration improves when LLM uncertainty cues align with model confidence.
    *   **Relevance:** Provides direct empirical evidence for the core problem (miscalibration with LLMs) the proposal investigates. Justifies the need for objective calibration measures and suggests potential interventions (uncertainty cues). Supports H1c/H4a.
4.  **Liao, Q. V., & Sundar, S. S. (2022). Breaking the black box: Attributional explanation as a precursor to trust in AI. *Proc. ACM HCI*, 6(CSCW1), Article 159.**
    *   **Focus:** Highlights the importance of users' *attributional beliefs* (understanding *why* AI performs as it does) and *mental models* in shaping trust. Identifies key dimensions of mental models.
    *   **Relevance:** Provides theoretical justification for the proposal's focus on measuring mental models beyond simple accuracy beliefs. Informs the design of the Attributional Beliefs scale. Links mental models to trust outcomes.
5.  **Kim, S. S. Y., Liao, Q. V., Vorvoreanu, M., et al. (2024). “I’m Not Sure, But...”: Examining the Impact of Large Language Models’ Uncertainty Expression on User Reliance and Trust. *arXiv:2405.00623*.**
    *   **Focus:** Experimentally shows that specific LLM uncertainty expressions (e.g., first-person "I'm not sure") can reduce user over-reliance on incorrect answers and improve accuracy.
    *   **Relevance:** Demonstrates the behavioral impact of LLM communication style on reliance and calibration. Provides empirical support for investigating uncertainty perception and validated trust/reliance measures. Relevant for future intervention design.
6.  **Koch, M. J., Carolus, A., Wienrich, C., & Latoschik, M. E. (2024). Meta AI literacy scale: Further validation and development of a short version. *Heliyon*, 10(21), e39686.**
    *   **Focus:** Develops and validates the MAILS-Short form, a concise self-report measure of AI literacy covering facets like understanding, application, detection, ethics, self-efficacy, and self-management.
    *   **Relevance:** Provides the recommended, contemporary, validated instrument for measuring self-perceived AI literacy (H2c). Its multidimensional nature is a strength.
7.  **van den Broek, K. L., et al. (2019). Household energy literacy: A critical review and conceptual typology. *Energy Research & Social Science*, 57, 101256.**
    *   **Focus:** Reviews energy literacy literature and proposes a typology distinguishing device, action, financial, and multifaceted energy literacy.
    *   **Relevance:** Provides the theoretical basis for the multidimensional measurement of energy literacy in the proposal. Justifies including facets beyond simple cognitive knowledge (H2b).
8.  **Cokely, E. T., Galesic, M., Schulz, E., et al. (2012). Measuring Risk Literacy: The Berlin Numeracy Test. *Judgment and Decision Making*, 7(1), 25–47.**
    *   **Focus:** Development and validation of the Berlin Numeracy Test (BNT), a performance-based measure of statistical numeracy and risk literacy.
    *   **Relevance:** Provides the recommended, validated instrument for measuring objective numeracy (H2a), crucial for evaluating quantitative LLM outputs in the energy domain.
9.  **Scharowski, N., Perrig, S. A. C., et al. (2025). To Trust or Distrust Trust Measures: Validating Questionnaires for Trust in AI. *arXiv:2403.00582*.**
    *   **Focus:** Compares psychometric properties of trust scales (TPA, TAI) in AI contexts. Supports distinguishing trust and distrust as separate constructs. Found TAI performed well.
    *   **Relevance:** Informs the choice and interpretation of general trust/distrust scales (RQ4, H4). Supports measuring distrust separately. Highlights ongoing validation needs for older scales in AI contexts. *[Self-correction: TPA-Revised paper (Lai et al.) is likely more directly relevant if using TPA, but Scharowski provides broader context on validating trust measures for AI.]*
10. **Buçinca, Z., Malaya, M. B., & Gajos, K. Z. (2021). To trust or to think: Cognitive forcing functions can reduce overreliance on AI... *Proc. ACM HCI*, 5(CSCW1), Article 188.**
    *   **Focus:** Shows that "cognitive forcing functions" (interface elements requiring reflection or justification) can reduce over-reliance on potentially flawed AI advice.
    *   **Relevance:** Provides theoretical and empirical support for the idea that reliance is not fixed but can be influenced by interventions that promote critical thinking. Links over-reliance to lack of cognitive engagement. Relevant for implications and future intervention design.

---

## 6. Rewritten Proposal Sections

*(Incorporating critiques, suggested improvements, and refined theoretical framing)*

**1) Proposal Theoretical Framework (Rewritten)**

This research investigates lay perceptions and reliance on Large Language Models (LLMs) within the critical domain of household energy management. It integrates cognitive science perspectives on **energy decision-making**, characterized by **bounded rationality** and systematic **cognitive biases** (Attari et al., 2010; Kantenbacher & Attari, 2021), with **human-AI interaction (HAI)** theories focused on **trust calibration**, **mental models**, and the role of **individual literacies**.

Decades of research establish that lay understanding of energy consumption is often flawed, with individuals relying on heuristics that lead to misperceptions like range compression (underestimating high-impact uses/savings, overestimating low-impact ones) (Attari et al., 2010; Marghetis et al., 2019). LLMs present a potential **external cognitive aid** (Steyvers & Kumar, 2024) to overcome these limitations by providing information or generating plans. However, LLMs themselves introduce **epistemic uncertainty** due to potential inaccuracies, biases, and "hallucinations," often masked by fluent output (Kim et al., 2024). A key theoretical question is how users navigate this **dual-bias environment**: do they project their own energy biases onto LLM evaluations (H1b), or can they leverage LLMs effectively?

We posit that users' ability to appropriately evaluate and rely on LLMs is modulated by three key **literacies**, acting as cognitive filters and enablers of **epistemic vigilance**:
1.  **Energy Literacy:** This multidimensional construct (Van Den Broek et al., 2019) provides the domain-specific knowledge base. **Cognitive energy literacy** enables spotting substantive errors (*Mechanism: Error Detection*). **Action energy literacy** helps evaluate plan utility (*Mechanism: Utility Assessment*). **Financial energy literacy** is crucial for assessing economic implications (*Mechanism: Financial Plausibility*).
2.  **AI Literacy:** Competencies in understanding AI principles, capabilities, and *limitations* (e.g., data cutoffs, hallucination risk) are vital (Long & Magerko, 2020; Koch et al., 2024). Higher AI literacy (objective knowledge + critical MAILS facets) should foster more calibrated assessments (*Mechanism: Awareness of Failure Modes*).
3.  **Objective Numeracy:** The ability to manipulate quantitative information (Cokely et al., 2012) is fundamental for evaluating numerical LLM outputs (kWh, costs) and interpreting uncertainty (*Mechanism: Quantitative Plausibility Checking*).

Effective human-AI collaboration hinges on **calibrated trust**, where reliance matches the AI's actual task-specific capabilities (Lee & See, 2004). Users develop **mental models** of AI systems—internal representations of how they work, their capabilities, and limitations (Liao & Sundar, 2022). These models, often inaccurate (Chen et al., 2025), shape expectations and reliance. The documented **"calibration gap"** (Steyvers et al., 2025) underscores the difficulty users face. We measure perceived accuracy/utility and task-specific trust as proxies for the operational mental model, augmented by probes of attributional beliefs and objective LLM knowledge. Finally, **dispositional trust and distrust** in AI (Lai et al., 2024; Scharowski et al., 2025) may act as priors or moderate reliance decisions (H4). This framework examines the interplay of domain biases, cognitive resources, system understanding, and trust dispositions in shaping human interaction with LLMs for energy management.

**2) Proposal Research Questions and Hypotheses (Rewritten)**

This study addresses the following research questions (RQs) and hypotheses (Hs), refined based on the enhanced theoretical framework and measurement plan:

*   **RQ1:** How accurate are lay individuals' judgments of LLM accuracy and utility for specific energy tasks (appliance kWh estimation vs. conservation planning)? How do these subjective perceptions align with (a) their *own* performance and biases on a parallel behavioral energy estimation task (Attari task), and (b) objective benchmarks or known LLM limitations?
    *   **H1a (Human Bias Replication):** Participants' own estimates on the Attari task will exhibit significant range compression bias.
    *   **H1b (Bias Projection/Transfer):** The *pattern* of perceived LLM accuracy across energy estimation tasks (low vs. high impact/consumption) will be positively correlated with the *pattern* of participants' *own* estimation biases from the Attari task, suggesting projection of biases onto AI evaluation.
    *   **H1c (Overestimation Baseline):** Overall perceived LLM accuracy for energy tasks will be significantly overestimated relative to objective benchmarks or known limitations (tested via calibration task in RQ4).
*   **RQ2:** How do individual differences in objective numeracy (BNT), multidimensional energy literacy (cognitive, action, financial knowledge), and AI literacy (MAILS facets + objective LLM knowledge) predict: (a) beliefs about LLM accuracy/utility, (b) the accuracy/sophistication of their mental models (attributional beliefs, objective knowledge), and (c) **objective trust calibration** (confidence-accuracy alignment on the LLM judgment task)?
    *   **H2a (Numeracy & Calibration):** Higher objective numeracy will predict better *objective calibration* (lower Brier score, less over/underconfidence) for quantitative LLM energy estimates, and potentially lower variance/dispersion in perceived accuracy ratings.
    *   **H2b (Energy Literacy & Critical Evaluation):** Higher cognitive/action/financial energy literacy will predict more critical subjective beliefs (e.g., lower perceived accuracy/trust for complex concepts) and better *objective calibration*, reflecting enhanced error detection and plausibility assessment.
    *   **H2c (AI Literacy & Calibrated Skepticism):** Higher AI literacy (objective knowledge + critical MAILS facets) will predict more cautious/skeptical subjective beliefs, more accurate mental models regarding LLM limitations, and better *objective calibration*.
*   **RQ3:** How do task-specific perceptions (accuracy, utility, trust) and **objective trust calibration** jointly influence individuals' stated behavioral intentions to rely on (accept vs. verify vs. reject) LLM advice in a concrete energy-related decision scenario?
    *   **H3:** Higher perceived accuracy, higher task-specific trust, and better *objective calibration* will independently predict a greater likelihood of choosing to accept (vs. verify or reject) LLM advice in the scenario-based task. Better calibration specifically predicts more 'verify' choices.
*   **RQ4:** Do dispositional Trust and Distrust in AI (TPA-Revised factors) mediate or moderate the relationships between task-specific beliefs/**objective calibration** and scenario-based reliance intentions?
    *   **H4a (Miscalibration Evidence):** Significant trust miscalibration (over-trust > under-trust) will be observed in the objective calibration task results across the sample.
    *   **H4b (General Trust Moderation):** Dispositional Trust will positively moderate the relationship between specific positive beliefs/**calibration** and reliance intention. Dispositional Distrust will negatively moderate this relationship. Mediation pathways will also be explored.

**3) Measuring User Mental Models of LLMs (Rewritten)**

Assessing users' mental models—their internal representations of how LLMs operate, their capabilities, and limitations—is crucial for understanding trust calibration and reliance behavior (Liao & Sundar, 2022). Given that these models are often implicit and potentially inaccurate among lay users (Chen et al., 2025), we employ a **multi-method approach** moving beyond simple self-report ratings:

1.  **Attributional Belief Scale:** A custom 6-item Likert scale probes explicit beliefs about LLM functioning relevant to energy tasks:
    *   *Data Access:* Beliefs about real-time data access vs. reliance on static training data.
    *   *Error Potential:* Awareness of hallucination risk for facts/numbers.
    *   *Personalization Capability:* Beliefs about inferring specific user context.
    *   *Reasoning Style:* Perception of genuine understanding vs. pattern matching.
    *   *Scope Awareness:* Understanding knowledge cutoffs or generality of advice.
    *   *Bias Awareness:* Recognition of potential biases inherited from training data.
    *(Rationale: Captures key dimensions identified by Liao & Sundar, 2022, relevant to trust formation).*

2.  **Objective LLM Knowledge:** Three multiple-choice questions assess factual knowledge about core LLM limitations:
    *   *Hallucination:* Identifying the term for confident fabrication.
    *   *Knowledge Cutoff:* Recognizing reliance on potentially outdated training data.
    *   *Mechanism:* Understanding the probabilistic nature (pattern matching) vs. alternatives (real-time simulation, expert consultation).
    *(Rationale: Provides an objective check on understanding, complementing subjective MAILS facets and attributional beliefs).*

3.  **Open-Ended Reasoning Prompt:** A qualitative prompt asking participants to describe, in their own words, how they think an LLM generates an energy estimate (e.g., "How does ChatGPT figure out a refrigerator's kWh?").
    *   *Coding:* Responses coded for reasoning style (e.g., database lookup, calculation, pattern matching, anthropomorphic understanding, "magic").
    *(Rationale: Offers deeper insights into underlying conceptual models not captured by scales; aligns with think-aloud methodologies).*

4.  **Proxies via Perceptions and Behavior:** Perceived accuracy/utility ratings and task-specific trust reflect the *output* of the mental model. Performance on the Objective Calibration Task provides a behavioral indicator of how well the mental model aligns with reality (i.e., ability to accurately judge LLM correctness).

This combined approach triangulates mental models using explicit beliefs, objective knowledge, qualitative reasoning, and behavioral correlates, providing a richer assessment than single-method approaches.

**4) Background and Rationale (Rewritten)**

The proliferation of accessible Large Language Models (LLMs) offers potential solutions for complex societal challenges, including promoting sustainable behaviors like household energy conservation. However, the effectiveness of LLMs as decision aids hinges critically on users' ability to appropriately evaluate and rely on their outputs. This is particularly challenging in the energy domain, where cognitive research demonstrates that lay individuals possess flawed mental models and exhibit systematic biases (e.g., range compression) in estimating energy consumption and savings (Attari et al., 2010; Kantenbacher & Attari, 2021). Introducing LLMs, which can generate fluent but potentially inaccurate or "hallucinated" information (Kim et al., 2024), into this already biased cognitive landscape creates a "dual-bias environment" with significant risks. Users might project their own energy misperceptions onto the AI (H1b), leading to miscalibrated trust and potentially harmful reliance decisions.

Recent HAI research highlights a persistent "calibration gap" with LLMs, where user confidence often exceeds actual LLM accuracy (Steyvers et al., 2025; Yin, 2025). Understanding the factors shaping this gap is crucial. This proposal posits that individual differences in relevant **literacies** act as key moderators. **Energy literacy** (cognitive, action, financial) provides domain knowledge to spot errors (Van Den Broek et al., 2019); **AI literacy** (understanding capabilities and limitations) fosters critical evaluation (Long & Magerko, 2020; Rheu & Cho, 2025); and **objective numeracy** enables quantitative plausibility checks (Cokely et al., 2012; Peters et al., 2022). Users' **mental models** of how LLMs work (Liao & Sundar, 2022; Chen et al., 2025) and their **dispositional trust/distrust** in AI (Lai et al., 2024; Scharowski et al., 2025) are also expected to influence belief formation and reliance.

This study uniquely investigates the interplay of these factors—pre-existing energy biases, multiple literacies, mental models, and trust dispositions—in shaping lay perceptions, **objective calibration**, and reliance intentions regarding LLMs for specific household energy tasks. By employing a multi-method approach including validated scales, behavioral estimation tasks (Attari), objective knowledge checks, mental model probes, and an **objective calibration task**, this research moves beyond simple self-reports to provide a more nuanced understanding of human-AI interaction in this critical domain.

**5) Rationale and Implications (Rewritten)**

Understanding lay perceptions and trust calibration with LLMs in the household energy domain carries significant practical and theoretical implications. Practically, identifying factors (e.g., low numeracy, inaccurate mental models) associated with miscalibrated trust can inform the design of safer AI systems. Findings can guide adaptive interfaces providing tailored uncertainty cues (Kim et al., 2024) or cognitive forcing functions (Buçinca et al., 2021) based on user characteristics. Results can also inform targeted educational interventions to improve energy/AI literacy or foster accurate mental models, promoting appropriate reliance.

Theoretically, this research contributes to **energy decision-making** literature by examining how a novel technology interacts with known biases. It advances **human-AI interaction** by empirically investigating trust calibration dynamics with LLMs in a complex domain, testing the moderating roles of multiple literacies and mental models. The focus on potential bias transfer (H1b) offers a novel lens. Findings will refine theories of **calibrated trust** (Lee & See, 2004) and **mental model** formation (Liao & Sundar, 2022) for generative AI.

Ultimately, by characterizing factors enabling effective LLM use while mitigating risks of misinformation and miscalibration, this study provides actionable insights for harnessing AI to support energy conservation, ensuring AI helps overcome, rather than exacerbate, human cognitive limitations.

---

## 7. Suggest Scenario-Based LLM Beliefs Questions

*(These would ideally be part of the Objective Calibration Task or a separate section probing reliance intention)*

**Instructions:** Below are hypothetical answers an AI chatbot (like ChatGPT) might give to questions about household energy. Please read each answer and respond to the questions that follow.

**Scenario 1: Appliance Estimation**

*   **Question to AI:** "How much electricity does a typical electric clothes dryer use per load?"
*   **AI Answer:** "A typical electric clothes dryer uses about **0.5 kilowatt-hours (kWh)** per load. So, running it frequently won't impact your bill much compared to other appliances like your refrigerator."
    *   **Q1.1:** How accurate do you believe the AI's estimate of **0.5 kWh per load** is? *(Scale: 1=Very Inaccurate to 7=Very Accurate)*
    *   **Q1.2:** How confident are you (0-100%) that the AI's estimate of 0.5 kWh is correct? `________ %` *(Part of Calibration Task)*
    *   **Q1.3:** Based on this answer, how trustworthy do you find the AI for estimating appliance energy use? *(Scale: 1=Not at all Trustworthy to 7=Very Trustworthy)*
    *   **Q1.4:** Would you rely on this specific 0.5 kWh estimate if deciding how often to use your dryer? *(Options: Yes, definitely / Yes, probably / Unsure / No, probably not / No, definitely not)*

*(Note: Actual average ≈ 3-4 kWh. This tests detection of significant underestimation).*

**Scenario 2: Conservation Plan Advice**

*   **Question to AI:** "What's the single most effective thing I can do to save energy in my apartment this winter?"
*   **AI Answer:** "The single most effective thing is definitely to **unplug all your electronics when you're not using them**, especially chargers and TVs. These 'phantom loads' add up significantly and tackling them first will give you the biggest savings."
    *   **Q2.1:** How accurate do you believe the AI's claim is that unplugging electronics is the *single most effective* action for winter energy savings in an apartment? *(Scale: 1=Very Inaccurate to 7=Very Accurate)*
    *   **Q2.2:** How confident are you (0-100%) that the AI's advice here is correct (i.e., phantom load reduction is the *most* effective winter action)? `________ %` *(Part of Calibration Task)*
    *   **Q2.3:** How useful do you find this specific piece of advice? *(Scale: 1=Not at all Useful to 7=Very Useful)*
    *   **Q2.4:** If this was the main advice given, how likely would you be to focus your efforts primarily on unplugging devices this winter? *(Scale: 1=Very Unlikely to 7=Very Likely)*

*(Note: Usually incorrect; heating adjustments are far more impactful. Tests detection of misplaced priorities potentially mirroring common misperceptions).*

**Scenario 3: Factual Concept Explanation**

*   **Question to AI:** "Explain what an ENERGY STAR rating means for appliances."
*   **AI Answer:** "ENERGY STAR labels appliances meeting strict EPA efficiency guidelines. Choosing an ENERGY STAR model means it uses significantly less energy – usually **at least 50% less** – saving you money and helping the environment."
    *   **Q3.1:** How accurate do you believe the AI's explanation of the ENERGY STAR program is? *(Scale: 1=Very Inaccurate to 7=Very Accurate)*
    *   **Q3.2:** How confident are you (0-100%) that the AI's explanation, including the "at least 50% less" figure, is correct? `________ %` *(Part of Calibration Task)*
    *   **Q3.3:** How helpful is this explanation? *(Scale: 1=Not at all Helpful to 7=Very Helpful)*
    *   **Q3.4:** How much would you trust the AI to accurately explain other energy standards? *(Scale: 1=Distrust Completely to 7=Trust Completely)*

*(Note: Explanation generally correct, but "at least 50% less" is often an exaggeration. Tests ability to spot potentially inflated quantitative claims within correct text).*

---

## 8. Final Proposed Survey Outline

*(Revised based on critiques and integration of new measures)*

1.  **Informed Consent & Screening**
2.  **Demographics & Background:** (Age, Education, Income, Technical Training, Energy Bill Responsibility, Prior LLM Familiarity/Use - General)
3.  **Individual Differences Block 1:**
    *   Objective Numeracy (BNT - 4 items)
    *   Energy Literacy (ELQ Adapted - Cognitive MCQs, Action/Financial Literacy items)
    *   *Attari et al. (2010) Appliance Estimation Task* (Behavioral measure of human bias)
4.  **Individual Differences Block 2:**
    *   AI Literacy (MAILS-Short Self-Report)
    *   *Objective LLM Knowledge Items* (MC/TF on limitations)
    *   General Trust/Distrust in AI (TPA-Revised 2-Factor Scale)
5.  **(Filler Task - Optional, e.g., brief unrelated cognitive task)**
6.  **LLM Perceptions & Mental Models Block:**
    *   *Beliefs about LLM Accuracy* (Custom Likert items - specific appliances/actions, factual, planning; bias perception; fallibility awareness)
    *   *Beliefs about LLM Utility* (Custom Likert items - learning, estimating, brainstorming, planning)
    *   *Task-Specific Trust in LLMs* (Custom Likert items - for estimation vs. planning)
    *   *Mental Models Measurement:*
        *   Attributional Beliefs Scale (Custom Likert items)
        *   Open-Ended Reasoning Prompt (Qualitative)
7.  **Objective Calibration Task:** (Present ~3-5 LLM outputs; collect Correctness Judgment + Confidence Rating for each)
8.  **Behavioral Intentions Block:**
    *   *Scenario-Based Reliance Choice Task* (Accept/Verify/Reject LLM advice in vignette)
    *   LLM Use Intentions (Energy Specific - Custom Likert)
    *   LLM Use Frequency (Energy Specific - Custom Scale)
9.  **Debriefing:** Information on LLM limitations, links to reliable energy resources, contact info.

*(Note: Order of Blocks 3 & 4, and within Block 6, should be considered for counterbalancing or fixed based on theoretical flow, e.g., measuring individual diffs before LLM beliefs).*

---

## 9. Justification Report for Revised Survey

The revised survey instrument is meticulously constructed to provide comprehensive data addressing the four primary research questions (RQs) and associated hypotheses (Hs) outlined in the study proposal.

*   **RQ1 (Lay Beliefs & Bias Projection):** This question is addressed through multiple components. Custom Likert items in Block 6 directly probe **perceived LLM accuracy and utility** for distinct energy tasks (estimation vs. planning). Crucially, the inclusion of the **Attari et al. (2010) Appliance Estimation Task** in Block 3 provides a direct behavioral measure of participants' own energy estimation biases. By asking perceived accuracy questions about the *same* types of appliances/actions covered in the Attari task, we can directly test **H1b (Bias Projection)** by correlating individual bias scores with perceived LLM accuracy patterns. The **Objective Calibration Task** (Block 7) further allows comparing confidence in LLM outputs against objective correctness, providing evidence for **H1c (Overestimation Baseline)** and **H4a (Miscalibration Evidence)**.

*   **RQ2 (Predictors: Literacies & Numeracy):** The survey incorporates validated measures for all key predictors. **Objective Numeracy** (Block 3) is measured via the BNT. **Energy Literacy** (Block 3) includes cognitive knowledge MCQs and now incorporates items assessing **Action and Financial Literacy**, addressing a key critique and allowing a fuller test of **H2b**. **AI Literacy** (Block 4) uses the validated MAILS-Short for self-perception, critically supplemented by **Objective LLM Knowledge** items probing understanding of limitations (hallucinations, data cutoffs). This multi-faceted approach allows testing **H2a, H2b, and H2c** by examining how these distinct cognitive resources predict subjective beliefs (Block 6) and objective calibration scores (derived from Block 7). The expanded **Mental Models Measurement** (Block 6 - Attributional Beliefs, Objective Knowledge, Open-Ended Prompt) directly addresses RQ2b.

*   **RQ3 (Beliefs/Calibration → Reliance):** This link is assessed through multiple measures. **Task-Specific Trust** items (Block 6) capture the immediate perceptual link. **LLM Use Intentions and Frequency** (Block 8) provide self-reported behavioral outcomes. Critically, the **Scenario-Based Reliance Choice Task** (Block 8) offers a more robust behavioral intention measure (Accept/Verify/Reject). The **Objective Calibration Score** (derived from Block 7) is included as a key predictor alongside subjective beliefs, allowing a direct test of **H3** regarding the joint influence of perception and actual calibration on reliance intentions.

*   **RQ4 (General Trust Role):** The survey uses the **TPA-Revised 2-Factor Scale** (Block 4) to measure **General Trust and Distrust** in AI, aligning with recent psychometric recommendations. This allows testing **H4b (Moderation)** by examining interactions between dispositional trust/distrust and the effects of task-specific beliefs/calibration (from Blocks 6 & 7) on reliance intentions (Block 8). Mediation analyses exploring pathways from specific beliefs to general trust to reliance (H4c - Exploratory) are also facilitated by this structure.


------



