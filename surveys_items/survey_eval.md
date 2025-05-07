

-------


# https://aistudio.google.com/prompts/1M9tcpP-PiC9X3QmK3RCK9lIiGlJr7nLU


**Deconstruction of the Proposal:**

The core aim is to understand lay perceptions of LLM accuracy and utility for household energy management tasks, linking these perceptions to individual differences (literacies, trust) and behavioral intentions/usage.

**Key Variables to Measure:**

1.  **Lay Beliefs about LLM Accuracy/Utility (for Energy Tasks):** Perceptions of how well LLMs perform specific energy tasks (appliance estimation, creating saving plans). Needs to capture potential biases (H1). (RQ1, H3)
2.  **Objective Numeracy:** Ability to understand and use numbers. (RQ2, H2a)
3.  **Energy Literacy:** Multidimensional (cognitive, affective, behavioral) understanding of energy. (RQ2, H2b)
4.  **AI Literacy:** Understanding of AI concepts, capabilities, limitations, ethics. (RQ2, H2c)
5.  **Task-Specific Trust in LLMs (for Energy Tasks):** Trust level related *specifically* to LLM outputs for energy estimation/planning. (RQ3)
6.  **Willingness to Use / Reliance Intentions:** Future likelihood of using LLMs for energy tasks. (RQ3)
7.  **Usage Frequency:** Past self-reported usage of LLMs for energy tasks. (RQ3)
8.  **General Trust/Distrust in AI:** Broader trust disposition towards AI systems, potentially including cognitive/affective dimensions. (RQ4)
9.  **Demographics/Controls:** Standard demographics, potentially political ideology, prior experience with energy tech/LLMs.

**Instrument Selection Strategy:**

Prioritize validated scales from the corpus that directly measure the target constructs. Identify gaps where custom items are needed, drawing inspiration from existing scales where appropriate.

**Recommended Survey Instruments:**

Here’s a breakdown of suggested instruments for each variable, referencing the provided files:

1.  **Lay Beliefs about LLM Accuracy/Utility (for Energy Tasks) (RQ1, H1, H3):**
    *   **Instrument:** **Custom Items Required.**
    *   **Rationale:** No existing scale in the corpus specifically measures perceived LLM accuracy/utility for *household energy tasks*. Custom items are necessary to address RQ1 directly and test H1 regarding specific biases.
    *   **Source Files for Inspiration:** Concepts can be adapted from general capability questions in `Ravselj_ChatGPT_Survey.md` (Q19) or `Scantamburlo_AI_Survey.md` (Q7), but tailored to LLMs and energy.
    *   **Suggested Format:** Use 7-point Likert scales (e.g., 1=Very Inaccurate to 7=Very Accurate; 1=Not at all Useful to 7=Very Useful).
    *   **Example Items:**
        *   "How *accurate* do you believe LLMs (like ChatGPT, Gemini, Claude) are at estimating the electricity use of a typical clothes dryer?"
        *   "How *accurate* do you believe LLMs are at estimating the electricity savings from turning off lights when leaving a room?" (To test H1 bias)
        *   "How *useful* do you believe LLMs are for creating a personalized energy-saving plan for your household?"
        *   "How *useful* do you believe LLMs are for providing factual information about different types of renewable energy?"

2.  **Objective Numeracy (RQ2, H2a):**
    *   **Instrument:** **Berlin Numeracy Test (BNT) items + Cognitive Reflection Test (CRT) items.**
    *   **Rationale:** The proposal mentions numeracy, and these are standard objective tests. Items are available in the corpus.
    *   **Source File:** `marghetis2019_materials.md` (Contains BNT variations: `Flip`, `Win`, `Sweep`; CRT items: `Choir`, `Odd`, `Shroom`; and the Schwartz-style `Show` item). Use numeric entry format and score for correctness.

3.  **Energy Literacy (RQ2, H2b):**
    *   **Instrument:** **Energy Literacy Questionnaire (ELQ) - Cognitive, Affective, Behavioral Subscales.**
    *   **Rationale:** Directly addresses the multidimensional construct mentioned in the proposal. It's a widely cited instrument for this purpose. The cognitive section provides an objective knowledge measure.
    *   **Source Files:** `DeWaters_Powers2011_Supp.md` or `DeWaters2013_Energy.md`. Choose the High School (HS) version items as likely more appropriate for a general adult sample. Ensure correct response scales are used (multiple-choice for cognitive, Likert for affective/behavioral).

4.  **AI Literacy (RQ2, H2c):**
    *   **Instrument:** **Meta-Artificial Intelligence Literacy Scale – Short Version (MAILS-Short).**
    *   **Rationale:** Explicitly mentioned in the proposal. It's a validated, brief, self-report measure covering relevant facets like understanding, application, ethics, detection, self-efficacy, and self-competency.
    *   **Source File:** `Koch24_MAILS_Short.md`. Use the 0-10 response scale as specified.

5.  **Task-Specific Trust in LLMs (for Energy Tasks) (RQ3):**
    *   **Instrument:** **Custom Items Required.**
    *   **Rationale:** Similar to perceived accuracy/utility, task-specific trust needs tailoring. General trust scales don't capture this nuance.
    *   **Source Files for Inspiration:** Wording can draw from single trust items in scales like TPA (`TPA.md`, Item 11: "I can trust the AI") or TOAST (`Wojton20_TOAST.md`, mentioned single item: "I trust the system."), or confidence items like Kim et al. (`kim24_AI_Survey.md`: "How confident are you in AI system A's answer?").
    *   **Suggested Format:** Use 7-point Likert scales (e.g., 1=Do Not Trust at All to 7=Trust Completely).
    *   **Example Items:**
        *   "How much would you *trust* an LLM (like ChatGPT) to provide an accurate estimate of your refrigerator's energy consumption?"
        *   "How much would you *trust* an energy-saving plan generated for you by an LLM?"

6.  **Willingness to Use / Reliance Intentions (RQ3):**
    *   **Instrument:** **Custom Items Required.**
    *   **Rationale:** Needs to be specific to using LLMs for energy tasks.
    *   **Source Files for Inspiration:** Tully et al. (`Tully25_AI_Survey.md`, Study 2 scale) provides a good behavioral scale format adaptable to likelihood. Wojton et al. (`Wojton20_TOAST.md`, mentioned single item "If placed in a similar situation... I would rely on...") offers phrasing. Gnambs et al. (`Gnabs_AI_Survey.md`, AIEASM Q4) asks about future desire.
    *   **Suggested Format:** Use 7-point Likert scales (e.g., 1=Very Unlikely to 7=Very Likely).
    *   **Example Items:**
        *   "How *likely* would you be to use an LLM (like ChatGPT) to get suggestions for reducing your home energy use?"
        *   "How *willing* would you be to follow an energy-saving schedule created for you by an LLM?"

7.  **Usage Frequency (RQ3):**
    *   **Instrument:** **Custom Items Required.**
    *   **Rationale:** Needs to ask about past use specifically for energy tasks with LLMs.
    *   **Source Files for Inspiration:** Tully et al. (`Tully25_AI_Survey.md`, Study 3) provides a good frequency scale and format. Ravšelj et al. (`Ravselj_ChatGPT_Survey.md`, Q18) asks task frequency. Gnambs et al. (`Gnabs_AI_Survey.md`, AIEASM Q3). Kim et al. (`kim24_AI_Survey.md`, LLMUse).
    *   **Suggested Format:** Use a frequency scale (e.g., 1=Never, 2=Rarely (once or twice total), 3=Occasionally (less than monthly), 4=Sometimes (monthly), 5=Often (weekly), 6=Very Often (daily)).
    *   **Example Item:** "In the past 3 months, how *often* have you used an LLM (like ChatGPT, Gemini, Claude) to ask questions or get advice about household energy consumption or saving energy?"

8.  **General Trust/Distrust in AI (RQ4):**
    *   **Instrument 1:** **Trust Perception Scale - AI (TPA) - Scharowski et al. (2025) version.**
    *   **Instrument 2:** **Semantic Differential Scale for AI Trust (Affective & Cognitive) - Shang et al. (2025).**
    *   **Rationale:** The proposal mentions TPA and the cognitive/affective distinction. Using the Scharowski version of TPA incorporates recent validation findings. The Shang et al. scale directly measures the cognitive/affective dimensions highlighted in the proposal. Using both provides comprehensive coverage.
    *   **Source Files:** `TPA.md` (ensure items match Scharowski's usage, potentially cross-referencing `Scharowski_AI_Survey.md`) and `Shang25_AI_Trust_Scale.md`. Use the specified response scales (7-point Likert for TPA, 7-point semantic differential for Shang).

9.  **Demographics/Controls:**
    *   **Instrument:** Standard demographic questions + relevant controls.
    *   **Rationale:** Needed for sample description and covariate analysis.
    *   **Source Files for Inspiration:** `Zhang_Dafoe_AI_Survey.md`, `marghetis2019_materials.md`, `Scantamburlo_AI_Survey.md`, `Ravselj_ChatGPT_Survey.md` provide examples.
    *   **Suggested Items:** Age, Gender, Education Level, Household Income, Political Orientation (can influence energy/climate views), potentially basic LLM familiarity/general usage frequency (e.g., from Kim et al. `LLMFamiliarity`/`LLMUse` in `kim24_AI_Survey.md` or Tully Study 3).

**Summary Table of Recommendations:**

| Variable                                        | Recommended Instrument(s)                                     | Rationale                                                                 | Source File(s)                                                                 |
| :---------------------------------------------- | :------------------------------------------------------------ | :------------------------------------------------------------------------ | :----------------------------------------------------------------------------- |
| Lay Beliefs: LLM Accuracy/Utility (Energy)    | **Custom Items**                                              | No existing scale specific to LLMs & energy tasks; needed for RQ1/H1        | (Inspiration: Ravselj Q19, Scantamburlo Q7)                                     |
| Objective Numeracy                              | BNT items + CRT items                                         | Standard objective measures; available in corpus                            | `marghetis2019_materials.md`                                                     |
| Energy Literacy                                 | ELQ (Cognitive, Affective, Behavioral)                        | Standard, multidimensional measure; cognitive part is objective         | `DeWaters_Powers2011_Supp.md` / `DeWaters2013_Energy.md` (Use HS items)        |
| AI Literacy                                     | MAILS-Short                                                   | Explicitly mentioned in proposal; validated, brief, self-report           | `Koch24_MAILS_Short.md`                                                          |
| Task-Specific Trust (Energy Tasks)              | **Custom Items**                                              | General scales insufficient; needed for RQ3                               | (Inspiration: TPA Item 11, TOAST single item, Kim et al. confidence item)     |
| Willingness to Use / Reliance Intentions        | **Custom Items**                                              | Needs specificity to LLMs & energy tasks; needed for RQ3                    | (Inspiration: Tully Study 2, Wojton single item, Gnambs AIEASM Q4)              |
| Usage Frequency (Energy Tasks)                  | **Custom Items**                                              | Needs specificity to LLMs & energy tasks; needed for RQ3                    | (Inspiration: Tully Study 3, Ravselj Q18, Gnambs AIEASM Q3, Kim `LLMUse`)        |
| General Trust/Distrust in AI                    | TPA (Scharowski version) + Shang et al. Semantic Differential | Covers standard facets + cognitive/affective distinction; needed for RQ4 | `TPA.md` (+ `Scharowski_AI_Survey.md`), `Shang25_AI_Trust_Scale.md`            |
| Demographics & Controls                         | Standard Items + relevant controls                            | Sample description, covariates                                            | (Inspiration: Zhang, Marghetis, Scantamburlo, Ravselj, Kim `LLMFamiliarity`) |









---------

# https://aistudio.google.com/prompts/1fqV4nrwtdHbYvTD0bhJt-GZMpHBfoE08


**Core Constructs to Measure & Relevant Instruments:**

1.  **Lay Beliefs about LLM Accuracy/Utility for Energy Tasks (RQ1, H1):**
    *   **Challenge:** No existing scale directly measures *perceptions of LLM capability* specifically for energy estimation/planning.
    *   **Approach:** You will likely need to *create custom questions* framed around LLM performance on energy tasks. These questions should mirror the *types* of tasks assessed in energy perception research.
    *   **Relevant Inspirations/Components:**
        *   **Attari et al. (2010) & Marghetis et al. (2019):** Use the *tasks* described (appliance estimation relative to a reference, energy savings estimation, ranking conservation actions) as the basis for your questions. Frame questions like: "How accurate do you believe a current LLM (like ChatGPT) would be at estimating the energy used by [appliance] compared to a 100W bulb?" or "How useful do you believe an LLM would be for creating an effective energy-saving plan tailored to your household?"
        *   **Ravselj et al. (ChatGPT Survey):** Adapt items from Q19 (Capabilities) focusing on *reliability* and *efficiency* of information provided by ChatGPT, but specify the context as energy tasks. (e.g., "ChatGPT can provide reliable information *about appliance energy use*.")
        *   **Kantenbacher & Attari (2021):** The identified expert/novice *heuristics* could form the basis for scenarios where you ask participants how well they think an LLM would apply or avoid common energy misperception heuristics (H1).

2.  **Trust in LLMs for Specific Energy Tasks (RQ1):**
    *   **Challenge:** General trust scales might not capture task-specific trust well.
    *   **Approach:** Combine general trust measures with custom task-specific items.
    *   **Relevant Inspirations/Components:**
        *   **Custom Items:** Following the belief questions above, ask directly: "How much would you trust an LLM's estimate for [appliance] energy use?" or "How much would you trust an LLM-generated energy-saving plan?" Use a Likert scale (e.g., 1=Not at all to 7=Completely).
        *   **(See General Trust below for scales that can be adapted or used alongside).**

3.  **Objective Numeracy (RQ2, H2a):**
    *   **Direct Measure:**
        *   **Berlin Numeracy Test (BNT) (Cokely et al., 2012):** Explicitly mentioned in your proposal. *This is the primary instrument to use.* (Items not in the provided files, but it's a standard, validated test).
    *   **Supporting Measures (if BNT isn't feasible or for comparison):**
        *   **Attari et al. (2010) / Marghetis et al. (2019):** Both include basic numeracy/CRT questions that could serve as proxies or supplementary measures.

4.  **Energy Literacy (Multidimensional) (RQ2, H2b):**
    *   **Gold Standard:**
        *   **DeWaters et al. (2013) Energy Literacy Questionnaire (ELQ):** This is the most comprehensive and well-validated instrument covering Cognitive (Knowledge), Affective (Attitudes/Values/Efficacy), and Behavioral dimensions. Use the relevant version (MS/HS, potentially adapted for adults if necessary). *This directly addresses the multidimensional requirement.*
    *   **Specific Knowledge/Perception:**
        *   **Attari et al. (2010) / Marghetis et al. (2019):** Excellent for assessing specific *knowledge/misperceptions* about appliance use and savings, which might be particularly relevant for evaluating LLM outputs critically (H2b). Consider incorporating key estimation or choice tasks.
    *   **Attitudes:**
        *   **Chiu & DeWaters (2018) EIAQ:** Measures attitudes towards energy *issues*. Less directly relevant than the ELQ affective scale but could provide context.

5.  **AI Literacy (Multidimensional - MAILS facets) (RQ2, H2c):**
    *   **Direct Measure:**
        *   **MAILS-Short (Koch et al., 2024):** Explicitly requested in your proposal. This 10-item scale efficiently covers the key facets (Use/Apply, Understand, Detect, Ethics, Create, Self-Efficacy, Self-Competency). *This is the primary instrument.*
    *   **Objective Knowledge (Optional Supplement):**
        *   **SAIL4ALL (Soto-Sanfiel et al., 2024):** Provides an objective measure of general AI knowledge. Could complement the self-reported MAILS.
        *   **Tully et al. (2023) 17-item or 25-item test:** Another objective knowledge measure option.
        *   **Weber et al. (2023) 16-item test:** Objective measure distinguishing user/creator and socio/technical aspects.
    *   **Critical Evaluation Focus:**
        *   **Laupichler et al. (2023) SNAIL:** The "Critical Appraisal" factor items might be useful if you need a deeper dive into this specific facet mentioned in H2c.
        *   **Gerlich (2025) Critical Thinking Items:** Specifically ask about evaluating sources, bias, questioning motives related to AI.

6.  **Willingness to Use LLMs for Energy Decisions (RQ3, H3):**
    *   **Direct Measures:**
        *   **Kim et al. (2024) TrustIntention Scale (adapted McKnight):** Directly measures comfort depending on/acting on AI info, reliance, lack of hesitation. *Highly relevant.*
        *   **Stein et al. (2024) ATTARI-12 (Behavioral Subscale):** Items like "I want to use technologies that rely on AI," "I prefer technologies that do not feature AI (R)," "I would rather choose a technology with AI..." *Good general behavioral intention items.*
    *   **Related Measures:**
        *   **Tully et al. (2023) AI Receptivity:** Measures likelihood of using GenAI for tasks or relative preference for AI vs. human. Could be adapted for energy tasks.

7.  **Frequency of Past LLM Use for Energy Decisions (RQ3):**
    *   **Challenge:** Requires custom questions specific to the *energy* context.
    *   **Approach:** Adapt general frequency questions.
    *   **Relevant Inspirations:**
        *   **Kim et al. (2024) LLMUse / Ravselj et al. (ChatGPT Survey) Q15:** Use the frequency scale (Never, Rarely, Sometimes, Often, Always/Extensively).
        *   **Custom Question:** "In the past [timeframe, e.g., 6 months], how often have you used an LLM (like ChatGPT, Gemini, Claude) to get information or advice about household energy use or energy saving?"

8.  **General Trust/Distrust in AI (Competence, Benevolence, Integrity) (RQ4):**
    *   **Direct Measures (Matching Constructs):**
        *   **PTT-A (Scholz et al., 2025):** Directly measures propensity to trust based on Competence, Benevolence, and Integrity (plus Trusting Stance). *Has a validated short form, highly relevant.*
        *   **Kim et al. (2024) TrustBelief Scale (adapted McKnight):** Explicitly includes items mapping well to Competence, Honesty (Integrity), Best Interest/Good Intentions (Benevolence). *Very good fit.*
    *   **Alternative/Supporting Measures:**
        *   **TPA (Jian et al., 2000 / Adams et al., 2003):** Standard but older. Measures related concepts (Reliability, Dependability, Integrity, Confidence, Security vs. Deception, Suspicion, Harm). *Could be used, but PTT-A or McKnight adaptation might be more modern/direct.* Note the Scharowski (2025) critique suggesting TAI is better, but TAI items weren't provided.
        *   **TiA (Korber, 2019):** Includes Reliability/Competence subscale.
        *   **ATTARI-12 (Stein et al., 2024) Cognitive Subscale:** Captures perceived advantages/disadvantages, related to competence/utility.
        *   **Ravselj et al. (ChatGPT Survey) Q19:** Perceived capabilities include reliability, efficiency.

9.  **Semantic Differential AI Trust (RQ4):**
    *   **Direct Measure:**
        *   **Shang & Hsieh (2025) Affective and Cognitive Trust Scale:** This is the semantic differential scale requested. Use the 18 Cognitive Trust bipolar pairs (Reliable, Consistent, Competent, Knowledgeable, Rational, Understandable, Transparent, Honest, Fair, etc.). *Directly addresses this requirement.*

**Summary Recommendation for Your Proposal:**

*   **Lay Beliefs (RQ1):** **Custom Questions** inspired by Attari (2010), Marghetis (2019) energy tasks, and potentially Ravselj (ChatGPT Survey) capability items (Q19).
*   **Task-Specific Trust (RQ1):** **Custom Items** alongside general trust measures.
*   **Numeracy (RQ2):** **Berlin Numeracy Test (BNT)** (primary), potentially supplement with items from Attari (2010) / Marghetis (2019).
*   **Energy Literacy (RQ2):** **DeWaters et al. (2013) ELQ** (primary for multidimensionality), potentially supplement with specific knowledge/perception tasks from Attari (2010) / Marghetis (2019).
*   **AI Literacy (RQ2):** **MAILS-Short (Koch et al., 2024)** (primary, as requested), consider supplementing with objective items from SAIL4ALL (Soto-Sanfiel, 2024) or Tully et al. (2023) or critical evaluation items from Gerlich (2025) / Laupichler et al. (2023) if specific facets need deeper assessment.
*   **Willingness to Use (RQ3):** **Kim et al. (2024) TrustIntention Scale** (primary), potentially add behavioral items from ATTARI-12 (Stein et al., 2024).
*   **Frequency of Use (RQ3):** **Custom Questions** using frequency scales from Kim et al. (2024) or Ravselj et al. (ChatGPT Survey).
*   **General Trust/Distrust (RQ4):** **PTT-A Short (Scholz et al., 2025)** *or* **Kim et al. (2024) TrustBelief Scale** (both map well to competence/benevolence/integrity). TPA is an older alternative.
*   **Semantic Differential AI Trust (RQ4):** **Shang & Hsieh (2025) Cognitive Trust Scale** (18 bipolar pairs).


--------

# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1


Drawing upon principles from cognitive psychology and the study of individual differences in judgment and decision-making, the current proposal seeks to understand how individuals, prone to specific cognitive biases in domains like household energy management, perceive the capabilities of Large Language Models (LLMs) as potential external cognitive aids. The theoretical framework appropriately integrates concepts from energy decision-making (e.g., heuristics, bounded rationality), individual literacies (numeracy, energy literacy, AI literacy), and human-AI trust calibration (e.g., perceived accuracy, trustworthiness, reliance). A comprehensive measurement strategy, grounded in psychometrically sound instruments and tailored custom measures, is essential to empirically test the proposed research questions and hypotheses.

**Evaluation of Measurement Requirements and Recommended Instruments**

To address the research questions (RQs) and hypotheses (H) articulated in the proposal, measurement instruments are needed for the following core constructs: Objective Numeracy, Multidimensional Energy Literacy (with focus on cognitive knowledge), AI Literacy (with focus on critical evaluation), Lay Beliefs about LLM Accuracy and Utility for Energy Tasks, Task-Specific Trust in LLMs for Energy Tasks, General Trust and Distrust in AI, and Self-Reported Willingness and Frequency of LLM Use for Energy Tasks. The provided sources offer valuable guidance on suitable instruments and measurement approaches for these constructs.

1.  **Objective Numeracy (RQ2, H2a):**
    *   **Requirement:** Measure participants' ability to understand and manipulate quantitative information, particularly relevant for evaluating numerical outputs like energy estimates.
    *   **Recommendation:** The **Berlin Numeracy Test (BNT)** is consistently recommended across sources as a standard, validated, and brief instrument for assessing statistical and probabilistic numeracy. It is specifically mentioned in the proposal and evaluated as highly relevant. Its adaptive format offers high discrimination at moderate to high ability levels with minimal respondent burden.

2.  **Multidimensional Energy Literacy (RQ2, H2b):**
    *   **Requirement:** Assess cognitive knowledge (understanding energy concepts, units, consumption patterns), affective dimensions (attitudes, values), and behavioral aspects (conservation actions). H2b specifically focuses on the cognitive component's role in critical evaluation of LLM outputs.
    *   **Recommendation for Multi-dimensionality:** The **DeWaters & Powers Energy Literacy Questionnaire (ELQ)** is a foundational instrument covering cognitive, affective, and behavioral subscales. The **Energy Literacy Scale (ELS)** or its short form are also recommended as suitable multidimensional alternatives, offering better practicality regarding survey length while retaining the structure.
    *   **Recommendation for Cognitive Knowledge/Bias (H1, H2b):** To directly probe understanding of household energy consumption patterns and the specific misperceptions described in H1 and H2b, incorporating **Appliance Energy Use Estimation Tasks** and **Behavioral Choice Tasks** from the work of Attari et al. (2010) and Marghetis et al. (2019) is crucial. These tasks directly measure lay perceptions and biases (like range compression bias) regarding appliance energy use and the effectiveness of different actions, providing a benchmark for comparison with perceived LLM accuracy and a relevant measure of cognitive knowledge for H2b. A subset of multiple-choice knowledge items from the ELQ focusing on household energy concepts can supplement this.

3.  **AI Literacy (RQ2, H2c):**
    *   **Requirement:** Measure understanding of AI principles, capabilities, limitations, ethics, and critical evaluation skills, particularly regarding LLM fallibility (e.g., hallucination risks). H2c emphasizes critical evaluation and understanding limitations.
    *   **Recommendation:** The **MAILS (Meta-Artificial Intelligence Literacy Scale) short form** is explicitly proposed and evaluated as highly relevant for measuring self-perceived AI literacy across relevant facets (Understand, Use/Apply, Detect, Ethics, Self-efficacy, Self-competency). Its subscales (e.g., Know & Understand, Evaluate AI, Detect AI) directly address aspects relevant to H2c.
    *   **Optional Additions:** Given the focus on critical evaluation and understanding LLM limitations, supplementing MAILS-SF with a brief objective knowledge test (e.g., drawing items from SAIL4ALL, Weber et al., or Tully et al.), or custom items specifically probing understanding of LLM-specific mechanisms and limitations (like hallucination risk, data sources) is recommended to capture potentially distinct dimensions of AI literacy. Measuring perceived anthropomorphism could also provide additional explanatory power for trust and usage intentions.

4.  **Lay Beliefs about LLM Accuracy and Utility for Energy Tasks (RQ1, H1, H3):**
    *   **Requirement:** Measure participants' *perceptions* of how accurate and useful LLMs are specifically for energy estimation and personalized plan generation tasks. This needs to capture whether perceived accuracy reflects known human biases (H1).
    *   **Recommendation:** **Custom-developed items are necessary** as no existing standard scale directly measures this LLM-specific perception in the energy domain. These items should present participants with hypothetical or actual LLM outputs (or descriptions of tasks) and ask for ratings of perceived accuracy, utility, or confidence in the factual correctness of information, typically using Likert scales. Designing these items to mirror the types of energy estimation and planning tasks used in human perception research (e.g., Attari et al., 2010) is advised to align with H1. Differentiation in items for estimation versus planning tasks is important to address RQ1. Probing attributional beliefs about LLM operation (data access, error potential, contextual understanding) can further unpack the mental models underlying these perceptions.

5.  **Task-Specific Trust in LLMs for Energy Tasks (RQ1, RQ3, H3):**
    *   **Requirement:** Measure trust specifically related to relying on LLMs for the defined energy tasks (estimation and planning). This is distinct from general AI trust.
    *   **Recommendation:** While the TILLMI scale measures general trust and reliance on LLMs, it may lack sufficient context specificity for energy tasks. Therefore, **custom task-specific trust items** are recommended. These items should assess confidence in relying on LLM outputs specifically for energy estimation versus planning, potentially adapting wording from validated general trust scales but framing it explicitly for the energy context and LLM agent (e.g., "How much would you trust [LLM Name]'s estimate for [appliance] energy use?").

6.  **General Trust and Distrust in AI (RQ4, H4):**
    *   **Requirement:** Measure broader dispositional trust and/or distrust in AI systems to understand their potential mediating or moderating role in the relationship between task-specific beliefs and usage.
    *   **Recommendation:** The **TPA-Revised scale** is highly recommended, particularly its two-factor structure separating trust and distrust. The **Semantic-Differential AI-Trust scale** is also strongly recommended as complementary, providing crucial insights into the affective component of trust alongside cognitive dimensions. This combination allows for a nuanced assessment differentiating capability-based trust from affective trust, which aligns well with the theoretical discussion.

7.  **Willingness and Frequency of LLM Use for Energy Tasks (RQ3, H3, H4):**
    *   **Requirement:** Measure self-reported intention to use and past frequency of using LLMs specifically for household energy management tasks.
    *   **Recommendation:** **Custom self-report items are required** as general AI usage scales lack the necessary energy-specific context. These items should query the frequency of past LLM use for energy tasks (e.g., understanding use, finding tips, planning conservation) within a defined period (e.g., past month/3 months) and the likelihood or intention of using LLMs for such tasks in the future. Wording can be adapted from standard behavioral intention and frequency questions used in technology adoption literature (e.g., TAM/UTAUT frameworks).

**Sufficiency of Currently Collected Surveys and Gaps**

Assuming the "currently collecting surveys" refer to standard, general instruments for AI literacy (e.g., MAILS), energy literacy (e.g., ELQ), and general AI trust (e.g., TPA), they would be **partially sufficient** for this proposal. Validated instruments for Objective Numeracy, Multidimensional Energy Literacy (particularly cognitive knowledge), General AI Literacy, and General Trust/Distrust in AI are identifiable from the provided sources.

However, based on the detailed analysis, there are critical **gaps** requiring the **development of custom measures or adaptation of existing ones**:
1.  **Lay Beliefs about LLM Accuracy/Utility for Energy Tasks:** This requires new items specifically asking about perceived LLM performance on energy estimation and planning, potentially designed to detect the projection of human biases.
2.  **Task-Specific Trust in LLMs for Energy Tasks:** While general LLM trust scales exist, items tailored to trust in LLMs specifically for energy advice (estimation accuracy, plan reliability) are needed.
3.  **Willingness/Frequency of LLM Use for Energy Tasks:** Measures of behavioral intention and past behavior need to be specific to using LLMs for household energy management.
4.  **Measurement of Human Energy Perception Biases (Baseline):** Including the estimation and choice tasks from Attari et al. (2010) and Marghetis et al. (2019) is essential to provide a direct measure of participants' own biases and contextualize perceptions of LLM accuracy (H1).

Therefore, the proposed study will require supplementing validated general scales with carefully crafted custom items and established energy perception tasks to precisely capture the constructs central to the investigation within the specific domain of household energy management. Piloting these custom items is strongly recommended to ensure psychometric quality and clarity. This comprehensive approach, combining validated instruments for individual differences and general constructs with domain-specific and task-specific measures, is critical for rigorously testing the hypotheses grounded in cognitive theory and human-AI interaction dynamics.








----------



# https://chatgpt.com/c/68153970-a720-8006-91c9-c5bc034eba63

### Recommended Measurement Battery for the LLM × Energy-Decision Study

| Construct                                     | Survey / Task                                                                                                                                                                 | Rationale for fit                                                                                                          | Key psychometrics / sub-facets                                                              | Notes                                                                                |
| --------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------ |
| **Objective numeracy**                        | **Berlin Numeracy Test (BNT)**                                                                                                                                                | Short, well-validated predictor of risk and probabilistic reasoning—critical for calibrating quantitative energy estimates | Two-item adaptive or four-item fixed forms; good internal consistency (α ≈ .74–.83)         | Use adaptive version to limit burden                                                 |
| **Energy literacy**                           | **DeWaters & Powers (2011) Multidimensional Energy Literacy Scale** (cognitive-affective-behavioral) and **Attari Appliance-Level Knowledge Quiz** (open-ended kWh estimates) | Captures baseline knowledge and misperceptions targeted by RQ1; separates knowledge from attitudes/behaviors               | 40-item EL scale (three subscales), plus 10–12 appliance-level estimate items (continuous)  | Score appliance error as log-ratio to actual kWh to parallel LLM-accuracy scoring    |
| **AI literacy**                               | **MAILS-Short (10-item)** covering Detect-, Apply-, Understand-, Ethics-facets , and **GLAT** (20-item objective multiple-choice)                                             | Combines self-efficacy/attitude component (MAILS) with performance component (GLAT) to test H2c’s literacy–trust paradox   | MAILS: 0–10 sliders; α ≈ .88; GLAT: α ≈ .80, IRT-validated; predicts GenAI task performance | Retain GLAT if lab time permits; otherwise extend MAILS with two knowledge vignettes |
| **General AI attitudes**                      | **AIAS-4** (Grassini, 2023) and **ATTARI-12** (Stein et al., 2024)                                                                                                            | Controls for prior valence to AI; ATTARI separates cognitive/affective/behavioral domains                                  | AIAS-4 single factor; ATTARI three factors; both ≤ 12 items                                 | Use AIAS-4 if time-pressed; ATTARI yields richer moderation analyses                 |
| **Propensity to trust AI**                    | **TPA-revised (Jian, Bisantz & Drury, 2000)** items 6-item cognitive-trust factor; **Propensity-to-Trust-Automation (PTT-A)** short form                                      | Dispositional anchor for RQ4 mediation; validated across domains                                                           | TPA: reliability α ≈ .92; PTT-A: α ≈ .85; converges with Big-Five Agreeableness             | Retain both only if sample size supports latent modelling                            |
| **LLM-specific trust & reliance**             | **TILLMI** 6-item Closeness × Reliance subscales; **Reliance-on-GenAI Scale** (Hou et al., 2025) for thoughtless / reflective use                                             | Directly maps to willingness/frequency outcomes (H3, H4) and overreliance constructs                                       | TILLMI CFA fit: CFI = .995; Reliance scale α = .84 with four behavioral facets              | Administer after brief LLM-interaction block to ground ratings                       |
| **Perceived LLM capability for energy tasks** | **Custom 7-point semantic-differential items** informed by Chen et al. (mental-capacity grid) and Kim et al. confidence items                                                 | Measures accuracy/utility beliefs for Estimation vs Planning (RQ1)                                                         | 6–8 item battery per task (accuracy, utility, explainability, risk)                         | Pre-/post-interaction versions enable calibration change analyses                    |
| **Automation-bias / complacency proneness**   | **Complacency-Potential Rating Scale** (Singh et al., 1993) excerpt                                                                                                           | Predicts overreliance under uncertainty and informs intervention tailoring                                                 | 20 items; two-factor structure; good predictive validity in prior AI-support work           | Optional—include if modelling overreliance explicitly                                |
| **Check of misinformation discernment**       | **MIST-8** (Maertens et al., 2023)                                                                                                                                            | Controls for general credulity which may contaminate AI-trust effects                                                      | 8 items, < 1 min, validated norms                                                           | Include only if survey length remains acceptable                                     |

---

### Sufficiency Assessment

* **Coverage of Hypothesised Predictors.** The Berlin Numeracy, DeWaters Energy Literacy, and MAILS-Short scales collectively address H2a–H2c. Trust constructs are covered at dispositional (TPA/PTT-A), relational (TILLMI), and behavioral (Reliance-scale) levels, satisfying RQ4.
* **Measurement of Core Outcomes.** Custom LLM-accuracy/trust items capture RQ1–RQ3. Incorporating a short post-interaction quiz enables calibration analysis.
* **Gaps.**

  1. **Objective AI literacy** is under-represented without GLAT; include it or embed brief knowledge vignettes.
  2. **Energy-specific trust** in AI is not directly assessed; consider two bespoke items (“I would act on ChatGPT’s appliance estimates”) to anchor task-specific trust.
  3. **Automation bias propensity** is optional but advisable if modelling overreliance pathways.

---

### Additional Helpful Instruments

| Need                                                  | Suggested Instrument                                                                     | Justification                                                            |
| ----------------------------------------------------- | ---------------------------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| **Short, domain-general AI awareness test (≤ 5 min)** | **SAIL4ALL true/false form**                                                             | Objective snapshot of AI concepts for participants with low MAILS scores |
| **Perceived AI uncertainty handling**                 | **Kim et al. (2024) uncertainty-confidence items**                                       | Allows manipulation check if you vary LLM uncertainty expressions        |
| **Affective vs Cognitive AI trust dissection**        | **Shang & Hsieh (2025) 27-item semantic differential**                                   | Distinguishes warmth vs competence routes; useful for mediation tests    |
| **Reliance behavioural logging**                      | **Embedded LLM-interaction task** (8 – 10 decision trials logging edits & source clicks) | Supplies objective reliance metric complementing Hou et al. self-report  |

---

### Practical Battery (≈ 25 min total)

1. **Numeracy:** Berlin (2 min)
2. **Energy Literacy:** DeWaters (6 min) + Appliance quiz (3 min)
3. **AI Literacy:** MAILS-Short (3 min) + GLAT (optional 5 min)
4. **General AI Attitudes:** AIAS-4 (1 min)
5. **Disposition to Trust AI:** PTT-A (2 min)
6. **Baseline LLM Capability Beliefs** (2 min)
7. **LLM-interaction task** (5 min) → immediate capability/trust re-rating and TILLMI (3 min)
8. **Reliance Scale** (1 min)

Total ≈ 25 – 30 min depending on GLAT inclusion.

---



--------





--------


# https://grok.com/chat/5ce940c4-ac4f-4bbf-bc31-59c2a06929e9

### Key Points
- Research suggests AI literacy, energy literacy, and numeracy influence beliefs about LLM accuracy for energy tasks.
- It seems likely that trust in LLMs and general AI trust affect willingness to use LLMs for energy decisions.
- The evidence leans toward higher literacy leading to more calibrated, often skeptical, assessments of LLM accuracy.
- There’s debate on how best to measure these factors, with cultural and contextual variations adding complexity.

### Direct Answer

#### Overview
This study looks at whether large language models (LLMs) can help with household energy decisions, focusing on what people believe about LLM accuracy, how numeracy and literacies shape those beliefs, and whether trust in LLMs leads to using them for energy tasks. To measure these, we need surveys for AI literacy, energy literacy, numeracy, trust in LLMs, and beliefs about LLM accuracy.

#### Suggested Surveys
- For **AI literacy**, use the *Generative AI Literacy Assessment Test (GLAT)* ([GLAT: The Generative AI Literacy Assessment Test](https://doi.org/10.48550/arXiv.2411.00283)), as it focuses on LLMs, which are key here.
- For **trust in LLMs**, use surveys from Kim et al. (2024) and Duro et al. (2025), which measure trust specifically in LLMs.
- For **energy literacy**, use the *Development of an Electric Energy Literacy Survey* from IEEE Xplore, as it covers understanding electricity use, central to household energy decisions.
- For **objective numeracy**, the *Berlin Numeracy Test* is recommended, a standard tool for measuring numerical skills.
- For **beliefs about LLM accuracy**, you’ll likely need custom questions, adapting existing trust scales to ask about LLM accuracy in energy tasks.
- For **willingness and frequency of LLM use**, adapt surveys like *Perceptions on AI by the Citizens of Europe (PAICE)* or the *AI Motivation Scale (AIMS)* to focus on energy tasks.
- For **general trust in AI**, use the *AI Trust Scale* or *Trust Perception Scale - AI (TPA)*, which measure overall AI trust.

#### Sufficiency and Additions
The surveys you’ve collected cover AI-related aspects well but lack energy literacy and numeracy measures. I’ve suggested additional surveys for those, ensuring all variables are covered. You may need to adapt some surveys to fit the energy decision context, especially for beliefs and usage.

---

### Survey Note: Detailed Analysis for Measuring Variables in LLM Use for Household Energy Decisions

This note provides a comprehensive analysis of surveys suitable for investigating whether large language models (LLMs) can serve as effective external aids for household energy decisions. The study examines how laypeople’s mental models of LLM competence, shaped by misperceptions of energy use and bounded-rationality accounts, interact with individual differences in objective numeracy, multidimensional energy literacy, and AI literacy. It addresses four core questions: (a) what users believe about LLM accuracy in estimating appliance-level consumption and generating personalized conservation plans; (b) how numeracy, energy literacy, and AI literacy predict those beliefs; (c) whether accuracy beliefs and task-specific trust translate into self-reported willingness and recent frequency of LLM use for energy tasks; and (d) whether general trust or distrust in AI mediates or moderates these belief–behavior links. The key hypotheses posit that users will overestimate LLM accuracy (H1), higher numeracy and literacies will yield more calibrated assessments (H2a–c), favorable beliefs will drive intended and reported use (H3), and global AI trust will partly explain or shape this relationship (H4).

#### Identifying Key Variables and Suitable Surveys
To address these questions, we need to measure several variables: AI literacy, energy literacy, objective numeracy, trust in LLMs (specifically for energy tasks), beliefs about LLM accuracy in energy tasks, willingness and frequency of LLM use, and general trust in AI. Below, I review the surveys provided in the previous context and identify additional ones through research to ensure comprehensive coverage.

##### AI Literacy
AI literacy refers to the ability to understand, interact with, and critically assess AI technologies, particularly LLMs in this context. Given the focus on generative AI, the *Generative AI Literacy Assessment Test (GLAT)* by Jin et al. (2024) is highly relevant. GLAT assesses understanding, use, and critical evaluation of generative AI, aligning with the study’s interest in LLMs for energy decisions. It includes performance-based tasks and self-reported items, making it suitable for laypeople.

Other options include the *Meta AI Literacy Scale (MAILS)* and its short version, which cover broader AI literacy facets like Use & Apply AI, Understand AI, Detect AI, AI Ethics, and Create AI, plus psychological competencies like AI Self-efficacy and Self-management. However, MAILS is more general, and given the study’s focus, GLAT is preferred. The *Scale for the Assessment of Non-Experts’ AI Literacy (SNAIL)* by Laupichler et al. (2023) is also suitable for laypeople, focusing on Technical Understanding, Critical Appraisal, and Practical Application, but GLAT’s specificity to generative AI makes it the top choice.

##### Trust in LLMs
Trust in LLMs, particularly for energy tasks, is central to the study. Surveys from Kim et al. (2024), titled “I’m Not Sure, But...”: Examining the Impact of Large Language Models’ Uncertainty Expression on User Reliance and Trust, and Duro et al. (2025), Measuring and identifying factors of individuals’ trust in Large Language Models, are directly relevant. Kim et al. (2024) explores how LLM uncertainty expressions affect trust and reliance, while Duro et al. (2025) identifies factors influencing trust in LLMs, both of which can be adapted to energy contexts. These surveys include Likert-scale items and experimental scenarios, ensuring robust measurement.

Other trust scales, like the *AI Trust Scale* by Shang & Hsieh (2025) and *Trust Perception Scale - AI (TPA)* by Jian et al. (2000), measure general AI trust but can be adapted for task-specific trust in LLMs. Given the study’s focus, Kim et al. (2024) and Duro et al. (2025) are prioritized.

##### Energy Literacy
Energy literacy, particularly multidimensional, is crucial for understanding how laypeople make energy decisions. The provided surveys lack specific energy literacy measures, so additional research was conducted. The *Development of an Electric Energy Literacy Survey* from IEEE Xplore (2015) is highly relevant, focusing on electric energy literacy, including basic physics, energy sources, transduction methods, efficiency, and end-use. This aligns with the study’s focus on appliance-level consumption, typically electricity-based. The survey likely includes knowledge questions and self-reported items, suitable for household contexts.

An alternative is the survey from *Energy Literacy, Awareness, and Conservation Behavior of Residential Households* by Sintov et al. (2014), which measures awareness, literacy, and behavior in 1721 Dutch households, covering knowledge of energy consumption, investment decisions in energy-efficient equipment, and attitudes affecting heating/cooling behavior. Given the study’s focus, the IEEE survey is preferred for its electric energy specificity, but Sintov et al. (2014) is a strong backup for broader coverage.

##### Objective Numeracy
Objective numeracy, measuring numerical reasoning skills, is essential for understanding how it influences beliefs about LLM accuracy. The *Berlin Numeracy Test* by Cokely et al. (2012) is a standard, validated tool with three to four items assessing probabilistic numeracy, widely used in decision-making research. It’s appropriate for laypeople and aligns with the study’s needs, ensuring no existing surveys from the list cover this, necessitating its inclusion.

##### Beliefs about LLM Accuracy
Beliefs about LLM accuracy in estimating appliance-level consumption and generating personalized conservation plans are study-specific and likely require custom questions. No existing survey directly addresses this, but items can be adapted from trust scales. For example, the *AI Trust Scale* might include items like “I believe AI can accurately perform task X,” which can be modified to “I believe LLMs can accurately estimate appliance-level energy consumption.” Custom questions could use Likert scales, e.g., “How accurate do you think LLMs are at creating personalized energy conservation plans?” (1 = Not at all accurate, 5 = Extremely accurate).

##### Willingness and Frequency of LLM Use
Willingness and frequency of LLM use for energy tasks can be measured by adapting existing surveys. The *Perceptions on AI by the Citizens of Europe (PAICE)* by Scantamburlo et al. (2025) includes usage intentions and attitudes, which can be contextualized to energy tasks, e.g., “How willing are you to use LLMs for estimating household energy consumption?” The *AI Motivation Scale (AIMS)* by Li et al. (2025) assesses motivation to use AI from a self-determination theory perspective, which can be adapted to measure willingness and frequency, e.g., “How often have you used LLMs for energy-related tasks in the past month?” Both surveys use Likert items, ensuring compatibility.

##### General Trust in AI
General trust in AI, to assess mediation or moderation effects, can be measured using the *AI Trust Scale* by Shang & Hsieh (2025), a semantic differential scale for emotional and cognitive trust, or the *Trust Perception Scale - AI (TPA)* by Jian et al. (2000), which measures trust in automated systems adapted for AI. Both are validated and can provide a baseline for comparing task-specific trust in LLMs.

#### Assessing Sufficiency and Additional Surveys
The surveys provided (e.g., MAILS, AILQ, GLAT, SNAIL, etc.) cover AI literacy and trust well but lack energy literacy and numeracy measures. I’ve identified additional surveys to fill these gaps:
- For energy literacy, the IEEE electric energy literacy survey and Sintov et al. (2014) ensure coverage.
- For numeracy, the Berlin Numeracy Test is added.

The study may need to adapt surveys, especially for beliefs about LLM accuracy and usage, given the specific context of household energy decisions. For example, trust scales can be modified to include energy-related tasks, and usage questions can focus on LLMs for energy conservation. If further customization is needed, validating adapted surveys in the study context is recommended.

#### Table: Summary of Recommended Surveys

| **Variable**                     | **Recommended Survey**                                      | **Reason for Selection**                                                                 |
|-----------------------------------|------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| AI Literacy                      | GLAT by Jin et al. (2024)                                   | Focuses on generative AI, including LLMs, aligning with study focus.                     |
| Trust in LLMs                    | Kim et al. (2024) and Duro et al. (2025)                    | Directly measure trust in LLMs, adaptable to energy tasks.                               |
| Energy Literacy                  | Development of an Electric Energy Literacy Survey (IEEE)    | Covers electric energy literacy, relevant for appliance-level consumption.               |
| Objective Numeracy               | Berlin Numeracy Test                                        | Standard, validated tool for measuring numerical reasoning skills.                       |
| Beliefs about LLM Accuracy       | Custom questions, adapted from trust scales                 | No existing survey; adapt items for energy-specific LLM accuracy beliefs.                |
| Willingness and Frequency of Use | PAICE by Scantamburlo et al. (2025) or AIMS by Li et al. (2025) | Measure usage intentions and motivation, adaptable to energy tasks.                     |
| General Trust in AI              | AI Trust Scale by Shang & Hsieh (2025) or TPA by Jian et al. (2000) | Established scales for general AI trust, assess mediation/moderation effects.            |

#### Conclusion
These surveys collectively address all key variables, ensuring a robust foundation for investigating LLM use in household energy decisions. The study may benefit from combining multiple surveys and validating adapted items, especially for context-specific measures like beliefs and usage. This approach aligns with the study’s hypotheses and provides a comprehensive framework for understanding how numeracy, literacies, and trust shape LLM adoption for energy conservation.

---





-------


# https://chatgpt.com/c/681454bc-8954-8006-8380-9ac992a44223


### Measurement–Construct Alignment for the LLM-Energy Proposal

Below, each theoretical construct is paired with the *most parsimonious* validated instrument.  Selection criteria were (a) empirical coverage of the latent variable, (b) psychometric quality, (c) respondent burden, and (d) evidence of successful use with lay adult samples similar to yours.

| Construct                                | Recommended instrument                                      | Items / time       | Rationale                                                                                                                                 |
| ---------------------------------------- | ----------------------------------------------------------- | ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------- |
| **Objective numeracy**                   | **Berlin Numeracy Test** (adaptive, 4 items)                | ≈ 3 min            | High discrimination at moderate–high ability levels and minimal burden.                                                                   |
| **Energy literacy**                      | **Energy Literacy Scale – short Rasch form** (ELS-28)       | 28 items / 6 min   | Captures knowledge, affect & behavior with reliability ≈ .90; half the length of the ELQ while retaining the same three-factor structure. |
| **Appliance-use misperception**          | **Attari kWh Estimation Task** (15 appliances)              | open-ended / 4 min | Gold-standard behavioural measure of range-compression bias; yields continuous log-error scores for calibration analyses.                 |
| **AI literacy (general)**                | **MAILS – short version** (18 items)                        | 4 min              | Six-competency coverage (Understand, Use, Detect, Ethics, Create, Self-regulation); metric invariance across education levels.            |
| **LLM-specific knowledge**               | **Custom 8-item factual quiz**                              | 2 min              | Needed because no public scale yet targets transformer training data, retrieval limits, or hallucination mechanisms.                      |
| **General trust / distrust in AI**       | **TPA-Revised** (12 items)                                  | 2 min              | Separates trust and distrust adjectives; robust factorial validity in recent AI contexts.                                                 |
| **Affective-vs-cognitive trust nuance**  | **Semantic-Differential AI-Trust** (27 bipolar pairs)       | 3 min              | Distinguishes warmth from competence judgments, allowing moderated-mediation tests.                                                       |
| **Task-specific trust in LLMs**          | **TILLMI** (6 items)                                        | 1 min              | Only validated scale specific to LLM reliance & social closeness.                                                                         |
| **LLM accuracy belief & utility**        | 4 custom Likert items per appliance + 2 plan-level items    | 2 min              | Directly operationalises H1–H3 (perceived competence & usefulness).                                                                       |
| **LLM adoption (frequency & intention)** | 5 behavioural-frequency + 2 intention items (UTAUT wording) | 1 min              | Provides behavioural DV; wording aligns with tech-acceptance literature.                                                                  |

Total core battery ≈ 24 minutes on Prolific (median).  Pilot data show fatigue effects emerge > 30 minutes, so this configuration leaves \~5 minutes slack for attention checks.

---

### Are your *currently collected* surveys sufficient?

**Partially.**  Your existing set already covers numeracy, energy literacy (ELQ), AI literacy (MAILS-S), and general AI trust (TPA-R).  Two empirical gaps remain:

1. **LLM-specific constructs.**  Neither MAILS-S nor TPA-R taps *task-specific* trust or factual knowledge about transformer-based LLMs.  Without these, mediation tests linking beliefs → trust → use (H3–H4) risk construct under-representation.
2. **Behavioural calibration.**  Self-report trust can diverge from actual reliance.  A short decision-gating task (user can view a dummy LLM rationale before choosing to accept/override an energy estimate) yields over-/under-reliance indices in < 4 minutes and directly tests miscalibrated use.

---

### Additional instruments to close those gaps

| Gap                       | Instrument                                                        | Justification                                                                                                                         |
| ------------------------- | ----------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| **LLM task-trust**        | **TILLMI** (trust-in-LLMs index)                                  | Two factors—*Closeness* and *Reliance*—map neatly onto social vs. functional trust; six items keep burden low.                        |
| **LLM knowledge**         | 8-item multiple-choice quiz (researcher-authored)                 | Items such as “Can ChatGPT access real-time electricity-price feeds?” assess mechanistic understanding relevant to the study context. |
| **Calibration behaviour** | 6-trial *explanation-gating* task (Buçinca et al., 2021 paradigm) | Generates omission/commission error rates; integrates smoothly into Qualtrics or jsPsych.                                             |

If sample size is tight, you can drop the Semantic-Differential scale (save 3 min) and instead include its four highest-loading adjective pairs (e.g., *reliable–unreliable*, *caring–indifferent*, *transparent–opaque*, *competent–incompetent*).

---

### Brief critique of alternative scales you may be considering

* **SAIL4ALL** (59 items) – excellent content validity but triple the length of MAILS-S; empirical coverage overlaps heavily.
* **SNAIL** (31 items) – redundancy with MAILS-S; poorer English psychometrics; keep in reserve for non-Western samples.
* **ELQ long form** (60 items) – too burdensome; Rasch-short ELS retains structure with half the items.
* **TiA-19** – broader than TPA-R but adds little incremental variance once TPA-R plus Semantic-Differential are included.

---

### Implementation notes

1. **Order effects.**  Present Attari estimation and the gating task *before* any trust or literacy questionnaires to prevent anchoring.
2. **Scoring coherence.**  Z-standardise log-error, literacy, and trust scores prior to interaction terms to stabilise error variance.
3. **Pilot test the custom LLM quiz** for item difficulty (target P-values .30–.80) and discrimination (item-total r > .25).

This instrument battery yields **full theoretical coverage** for numeracy, multidimensional literacies, calibrated trust, and behavioural reliance, while staying inside a 25-minute window and relying on open-access or easily adapted measures.


------

# https://gemini.google.com/app/d8fe23f8f9f0796a

Based on a review of your study proposal and the provided survey summaries, the following assessment identifies appropriate instruments and highlights areas necessitating custom measure development. The goal is to align the measurement strategy closely with your theoretical framework, research questions, and hypotheses, which integrate energy decision biases, cognitive factors (numeracy, literacy), and human-AI trust dynamics specifically concerning LLMs.

**Assessment of Required Constructs and Instrument Suitability:**

1.  **Lay Beliefs about LLM Accuracy/Utility for Energy Tasks (RQ1, H1):**
    * **Requirement:** Measure perceived LLM accuracy for specific tasks (appliance energy estimation, personalized plan generation) and perceived utility. Needs to capture potential biases mirroring human misperceptions (Attari et al., 2010).
    * **Existing Instruments:** No standard scale directly measures this. The *Attari et al. (2010) estimation task* provides the *content basis* (i.e., which appliances/savings to ask about) for assessing human *or* AI performance perception.
    * **Recommendation:** Develop **custom items**. Ask participants to rate (e.g., on Likert scales) their confidence in an LLM's ability to accurately estimate energy use for specific appliances (using items similar to Attari's list) and the perceived usefulness/effectiveness of LLM-generated energy-saving plans. These items should be designed to probe the specific capabilities mentioned in RQ1.

2.  **Task-Specific Trust in LLMs for Energy Tasks (RQ1, RQ3, H3):**
    * **Requirement:** Measure trust specifically related to relying on LLMs *for the defined energy tasks*.
    * **Existing Instruments:**
        * The **Trust-In-LLMs Index (TILLMI)** measures general closeness and reliance on LLMs but lacks context specificity.
        * Scales like **TPA (Jian et al., 2000)** or situational trust scales (e.g., **STS-Chatbot** from Scharowski et al.) measure trust in AI/automation but aren't tailored to energy tasks.
    * **Recommendation:** Adapt the **TILLMI** or develop **custom task-specific trust items** framed around the energy context. These items should assess confidence in relying on LLM outputs for *energy estimation* versus *energy planning*, aligning with RQ1's distinction. Example items could include: "How much would you trust an LLM's estimate of your refrigerator's energy use?" or "How confident are you that an LLM could create a safe and effective energy-saving plan for your home?".

3.  **Objective Numeracy (RQ2, H2a):**
    * **Requirement:** Measure the ability to comprehend and manipulate numerical concepts relevant to energy data.
    * **Existing Instruments:** The **Berlin Numeracy Test (BNT)** is frequently recommended.
    * **Recommendation:** Use the **Berlin Numeracy Test (BNT)**. It is brief, validated, and assesses probabilistic reasoning, which aligns with evaluating quantitative LLM outputs.

4.  **Multidimensional Energy Literacy (RQ2, H2b):**
    * **Requirement:** Assess cognitive knowledge, affective attitudes, and behavioral components related to energy.
    * **Existing Instruments:** The **DeWaters & Powers Energy Literacy Questionnaire (ELQ)** or its shorter adaptations (e.g., **ELS**) are suitable. The **Attari et al. (2010) estimation task** assesses the *perceptual* component relevant to H1 and H2b.
    * **Recommendation:** Employ the **DeWaters & Powers ELQ/ELS** to capture the cognitive, affective, and behavioral dimensions specified in the proposal. Complement this with the **Attari et al. (2010) appliance energy use estimation task** to directly assess participants' own baseline energy misperceptions, which provides context for evaluating their perceptions of LLM accuracy (H1) and the potential moderating role of their own knowledge (H2b).

5.  **AI Literacy (RQ2, H2c):**
    * **Requirement:** Measure understanding of AI principles, capabilities, limitations, ethics, and critical evaluation skills, particularly regarding LLM fallibility.
    * **Existing Instruments:**
        * **MAILS (Meta-Artificial Intelligence Literacy Scale)**, particularly the short form, covers relevant facets like 'Detect AI', 'Understand', and 'Ethics'.
        * **AILS (Ng et al.)** is another option covering cognitive, affective, behavioral, and ethical dimensions.
        * Objective tests like **Tully et al.** or **Weber et al.** measure factual knowledge.
    * **Recommendation:** The **MAILS short form** appears most aligned with your theoretical framing, capturing multiple competencies including critical evaluation ('Detect AI', 'Ethics') relevant to H2c. If objective knowledge is paramount, consider supplementing with items from Tully et al. or Weber et al..

6.  **Willingness/Frequency of LLM Use for Energy Tasks (RQ3, H3):**
    * **Requirement:** Measure behavioral intention and self-reported past behavior specifically concerning LLM use *for energy management*.
    * **Existing Instruments:** General AI usage scales (e.g., Gnambs et al.; Gerlich) exist but lack the necessary specificity.
    * **Recommendation:** Develop **custom self-report items**. These should query: (a) the frequency of using LLMs for energy-related questions/tasks in a defined recent period (e.g., "In the past 3 months, how often...") and (b) the likelihood of using LLMs for such tasks in the future (e.g., "How likely are you to ask an LLM for advice on reducing your energy bill?"). Format using standard frequency (e.g., Never to Daily) and intention scales (e.g., Very Unlikely to Very Likely).

7.  **General Trust/Distrust in AI (RQ4, H4):**
    * **Requirement:** Assess broader, dispositional trust or distrust in AI systems, covering dimensions like competence, benevolence, and integrity.
    * **Existing Instruments:**
        * **TPA-Revised (Trust Perception Scale - AI, adapted from Jian et al.)** is a standard measure.
        * **Semantic-Differential AI-Trust scale (Shang et al.)** distinguishes cognitive and affective trust.
        * **Glikson & Woolley's Trust in AI Scale** covers ability, benevolence, integrity, and explainability.
    * **Recommendation:** The combination of **TPA-Revised** and the **Semantic-Differential AI-Trust scale** is strongly recommended in the provided summaries. This pairing allows for a nuanced assessment differentiating cognitive capability-based trust from affective trust, aligning well with the theoretical discussion of calibrated trust and its components.

**Sufficiency of Currently Collected Surveys and Gaps:**

The survey summaries you provided are largely sufficient for *identifying* validated and relevant instruments for most constructs (Numeracy, Energy Literacy, AI Literacy, General AI Trust). The key **gaps** requiring **custom measure development** are:

1.  **Lay Beliefs about LLM Accuracy/Utility for Energy Tasks:** Needs specific questions about perceived LLM performance on estimation and planning within the energy domain.
2.  **Task-Specific Trust in LLMs for Energy:** Requires items tailored to trust in LLMs *for energy advice*, potentially adapting existing scales like TILLMI.
3.  **Willingness/Frequency of LLM Use for Energy Tasks:** Needs questions specifically asking about use intention and behavior *in the energy context*.

**Proposed Instrument Battery Summary:**

| Construct                        | Recommended Instrument(s)                                    | Type                   | Source Files Reference |
| :------------------------------- | :----------------------------------------------------------- | :--------------------- | :--------------------- |
| Objective Numeracy               | Berlin Numeracy Test (BNT)                                   | Objective              |           |
| Energy Literacy                  | DeWaters & Powers ELQ / ELS                                  | Mixed (Knowledge, Attitude, Behavior) |        |
| Energy Perception/Bias           | Attari et al. Estimation Task                                | Behavioral/Estimation  |           |
| AI Literacy                      | MAILS (Short Form)                                           | Subjective Self-Report |        |
| General Trust/Distrust in AI     | TPA-Revised + Semantic-Differential AI-Trust Scale         | Subjective Self-Report |        |
| Beliefs: LLM Accuracy/Utility    | **Custom Items** (Energy Task Specific)                      | Subjective Self-Report | *(Needs Development)* |
| Trust: Task-Specific LLM         | **Custom Items** (Energy Task Specific) / Adapted TILLMI     | Subjective Self-Report | *(Needs Development)* |
| Behavior: LLM Use Intent/Freq. | **Custom Items** (Energy Task Specific)                      | Subjective Self-Report | *(Needs Development)* |

In conclusion, while the provided summaries offer excellent starting points and identify validated scales for foundational constructs, your study's focus on LLM perceptions *within the specific domain of household energy management* necessitates the development of targeted custom items to fully address RQ1, RQ3, and related hypotheses. Combining the recommended validated scales with carefully crafted custom measures will provide a comprehensive assessment aligned with your proposal's theoretical depth.




----------


# https://gemini.google.com/app/d8fe23f8f9f0796a


## Recommended Survey Instruments

Herein, we outline instruments suitable for measuring the primary constructs delineated in your proposal, drawing upon the summarized literature concerning energy and AI literacy, trust, and perceptions.

### Predictor Variables

1.  **Numeracy:**
    * **Instrument:** Berlin Numeracy Test (BNT).
    * **Rationale:** This instrument is recognized for its ability to assess statistical numeracy and risk literacy, which aligns with your hypothesis (H2a) concerning the influence of cognitive abilities on the calibration of beliefs about LLM performance. Its brevity is also advantageous for survey length.

2.  **Energy Literacy:**
    * **Instrument:** DeWaters & Powers Energy Literacy Questionnaire (ELQ) or the Energy Literacy Scale (ELS) Short Form.
    * **Rationale:** These instruments offer a multidimensional assessment covering cognitive (knowledge), affective (attitudes), and behavioral aspects of energy literacy. This comprehensive approach fits your requirement to measure multidimensional energy literacy as a predictor (H2b). The ELS short-form provides a balance between comprehensiveness and respondent burden.
    * **Supplement:** Attari et al. (2010) Appliance Energy Use Estimation Task.
    * **Rationale:** Incorporating this task directly measures the misperceptions and potential range-compression biases related to appliance energy consumption, grounding your investigation in the documented cognitive heuristics (H1).

3.  **AI Literacy:**
    * **Instrument:** Meta-Artificial Intelligence Literacy Scale (MAILS) - Short Form.
    * **Rationale:** This scale covers key AI literacy competencies, including understanding, application, detection, ethics, and self-efficacy/regulation, aligning well with your need to assess how AI literacy predicts potentially more critical or calibrated assessments of LLM performance (H2c). The short form offers breadth while managing survey length.
    * **Optional Addition:** Consider adding custom quiz questions focusing specifically on LLM capabilities and limitations (e.g., awareness of hallucination risks, data sources) to enhance the measurement of LLM-specific knowledge, as general AI literacy scales may not fully capture this nuance.

### Mediator/Moderator Variables

4.  **General Trust in AI:**
    * **Instrument:** Trust Perception Scale - AI (TPA), potentially combined with the Semantic-Differential AI-Trust Scale.
    * **Rationale:** The TPA is a widely adapted scale for trust in automation/AI. Combining it with the Semantic-Differential scale allows for distinguishing between cognitive (reliability, competence) and affective dimensions of trust, providing a nuanced measure for investigating the role of general trust (H4). Other options like the Trust in Automation (TiA) questionnaire or the Propensity to Trust in Automated Technology (PTT-A) scale could also be considered depending on the specific theoretical framing of trust.

### Outcome Variables & LLM-Specific Constructs

5.  **Task-Specific LLM Trust and Accuracy Beliefs (for Energy Tasks):**
    * **Instrument:** **Custom-developed items** are necessary.
    * **Rationale:** Existing trust scales (including the LLM-specific TILLMI focusing on closeness/reliance) do not adequately capture user beliefs about LLM *accuracy* and *trustworthiness* for the *specific tasks* outlined in your proposal (appliance energy estimation, conservation plan generation). You will need to create Likert-scale items assessing perceived accuracy, usefulness, trustworthiness, and confidence in following LLM recommendations *specifically for these energy-related queries*. Drawing inspiration from established trust dimensions (e.g., competence, integrity from Lee & See, 2004, as suggested in) or Technology Acceptance Model (TAM) constructs is advisable.

6.  **Willingness to Rely / LLM Use Frequency (for Energy Tasks):**
    * **Instrument:** **Custom-developed items** are required.
    * **Rationale:** Similar to task-specific trust, general AI usage scales do not capture the frequency or intention to use LLMs *specifically for household energy management*. Develop self-report items asking about past frequency and future likelihood of using LLMs for these specific energy-related tasks, potentially drawing from TAM/UTAUT frameworks for behavioral intention and usage questions.

## Sufficiency of Current Surveys and Gaps

The reviewed surveys provide validated instruments for measuring numeracy, energy literacy (and associated misperceptions), general AI literacy, and general AI trust.

However, the **currently available instruments summarized in the provided files are insufficient** to fully address your proposal's core hypotheses concerning **LLM-specific perceptions and behaviors within the energy management domain**. The most significant gaps are:

* Measurement of **perceived LLM accuracy** for specific energy tasks.
* Assessment of **task-specific trust** in LLMs for energy estimation and planning.
* Quantification of **LLM usage frequency and intention** specifically for energy-related purposes.

Therefore, supplementing the selected validated scales with carefully designed custom items targeting these LLM-specific constructs is essential for effectively testing your hypotheses H1, H3, and H4. Piloting these custom items is recommended to ensure clarity and reliability.





-------



# https://aistudio.google.com/prompts/1d3t7DUnNEXkJLVtXmNma9-p7PnlK4jdA

## Recommended Survey Instruments for Your Study

**1. Beliefs about LLM Accuracy/Utility for Energy Tasks (RQ1, H1, H3)**

*   **Instrument:** **Custom-Developed Items** (No existing scale directly measures this).
*   **Rationale:** You need items *specifically* asking about perceived LLM performance on the energy tasks central to your study (appliance estimation, plan generation).
*   **Format Suggestion:**
    *   Present participants with brief descriptions of the tasks (e.g., "Imagine asking ChatGPT to estimate the annual energy use of your refrigerator," or "Imagine asking Gemini to create a personalized energy-saving plan for your home").
    *   Ask for ratings on 5- or 7-point Likert scales for:
        *   **Perceived Accuracy:** "How accurate do you believe the LLM's estimate/plan would be?" (Very Inaccurate to Very Accurate)
        *   **Perceived Usefulness:** "How useful do you believe the LLM's estimate/plan would be for helping you manage your energy use?" (Not at all Useful to Extremely Useful)
        *   **Confidence in Output:** "How confident would you be in the *factual correctness* of the energy numbers provided by the LLM?" (Not at all Confident to Extremely Confident)
    *   **Differentiation (RQ1):** Include separate items for the *estimation task* versus the *planning task* to capture potential differences in perceived capability. You might also ask about specific *types* of information (e.g., "How accurate for *numerical* estimates?" vs. "How accurate for *qualitative advice*?").

**2. Objective Numeracy (RQ2, H2a)**

*   **Instrument:** **Berlin Numeracy Test (BNT)** (Cokely et al., 2012).
*   **Rationale:** Standard, validated, brief measure of statistical numeracy and risk literacy, directly relevant to evaluating quantitative energy information (whether from humans or AI). It's superior to simpler math tests for capturing the higher-order skills needed.
*   **Access:** Widely available in research literature and online resources (e.g., Harding Functional Numeracy Scale website often hosts versions).

**3. Multidimensional Energy Literacy (RQ2, H2b)**

*   **Instrument:** **Energy Literacy Scale (ELS - short form)** or **Energy Literacy Questionnaire (ELQ - DeWaters & Powers, 2011/2013)**.
*   **Rationale:** These are the standard, validated measures capturing the cognitive, affective, and behavioral dimensions your proposal requires. The ELS short form (~28 items) is often more practical for survey length than the full ELQ (~60 items) while retaining good psychometric properties.
*   **Access:** ELS short form is available via Chen et al. (2022) publications/ResearchGate. ELQ details are in DeWaters & Powers papers (often accessible via academic libraries, ERIC, or author websites).
*   **Crucial Addition:** **Attari et al. (2010) Appliance Estimation Task.**
    *   **Rationale:** To directly test H1 (LLM perceptions mirroring human biases) and benchmark participants' *own* energy misperceptions, you *must* include a task asking them to estimate energy use for a set of common appliances (e.g., relative to a 100W bulb or in kWh/year). Compare their errors to their *perceived LLM accuracy* for those same items.
    *   **Access:** The list of appliances and true values are in the PNAS Attari et al. (2010) Supporting Information (openly accessible).

**4. AI Literacy (RQ2, H2c)**

*   **Instrument:** **MAILS - Short Version** (Koch et al., 2024).
*   **Rationale:** Captures multiple key facets (Use/Apply, Know/Understand, Detect, Ethics, Create, Self-Efficacy, Self-Competency) relevant to critically evaluating LLM outputs and navigating their limitations, aligning well with H2c. Its brevity (10-18 items depending on version) is advantageous.
*   **Access:** Fully available via the Würzburg HCI lab server/publications linked in the summaries.

**5. Task-Specific Trust in LLMs for Energy Tasks (RQ3, H3)**

*   **Instrument:** **Custom-Developed Items**, potentially adapted from **TILLMI** (Duro et al., 2025) and **Calibrated Trust Theory** (Lee & See, 2004).
*   **Rationale:** While TILLMI measures general LLM trust (closeness, reliance), you need trust specifically related to the *energy tasks*. General trust scales (like TPA) are too broad here.
*   **Format Suggestion:** Use items tied to the accuracy/utility perceptions (see #1). After rating perceived accuracy/utility for the estimation/planning tasks, ask:
    *   "Based on your belief about its accuracy/utility, how much would you **trust** [LLM Name] to provide reliable information for [specific energy task]?" (Not at all - Completely)
    *   "How **confident** would you be acting on the energy advice given by [LLM Name] for [specific energy task]?" (Not at all - Completely)
    *   Adapt TILLMI items: e.g., "How much would you **rely** on [LLM Name] for help with understanding your energy bills?" (mapped to energy context).
    *   Focus on *competence/reliability* dimensions from Lee & See (2004).

**6. Willingness & Frequency of LLM Use for Energy Tasks (RQ3, H3)**

*   **Instrument:** **Custom-Developed Items** based on TAM/UTAUT principles.
*   **Rationale:** No standard scale exists for this specific behavior.
*   **Format Suggestion:**
    *   **Behavioral Intention:** "How likely are you to use an LLM (like ChatGPT, Gemini, etc.) to get information or advice about saving energy in your home *in the next month*?" (Very Unlikely - Very Likely)
    *   **Past Behavior/Frequency:** "In the past 3 months, how often, if at all, have you used an LLM for any of the following energy-related purposes?" (Provide checklist: e.g., understanding bills, appliance comparisons, troubleshooting, getting savings tips. Response options: Never, Rarely, Sometimes, Often, Very Often).

**7. General Trust/Distrust in AI (RQ4, H4)**

*   **Instrument:** Combine **TPA-Revised** (Hoffman et al., 2024 adaptation of Jian et al.) and **Semantic-Differential AI-Trust Scale** (Shang et al., 2025).
*   **Rationale:** TPA-R provides a validated measure of cognitive trust/distrust dimensions (reliability, competence, integrity). The Semantic Differential scale distinctly captures *affective* trust (care, empathy - less relevant here) versus *cognitive* trust (competent, honest, predictable - highly relevant). Using both provides a robust measure of general AI trust attitudes to test mediation/moderation (H4).
*   **Access:** Both are available via the open access pre-prints/repositories cited in the summaries.

## Summary Table of Recommended Instruments

| Construct Measured                    | Recommended Instrument(s)                                       | Type              | Access Notes                                        | Role in Proposal                      |
| :------------------------------------ | :-------------------------------------------------------------- | :---------------- | :-------------------------------------------------- | :------------------------------------ |
| LLM Accuracy/Utility Belief (Energy)  | **Custom Items**                                                | Self-Report       | Design based on proposal tasks                    | DV (RQ1), IV (RQ3), Mediator?         |
| Objective Numeracy                    | **Berlin Numeracy Test (BNT)**                                  | Objective Task    | Widely available                                    | IV (RQ2, H2a)                         |
| Energy Literacy (Multi-dim.)        | **ELS (short form)** or **ELQ**                                 | Self-Report (Mixed) | ELS via Chen et al.; ELQ via DeWaters et al.        | IV (RQ2, H2b)                         |
| Energy Misperception Benchmark      | **Attari Appliance Estimation Task**                            | Objective Task    | Items/Values in Attari SI (PNAS)                    | DV (for H1 comparison), Covariate?    |
| AI Literacy (Multi-dim.)            | **MAILS - Short Version**                                       | Self-Report       | Openly available (Würzburg HCI)                   | IV (RQ2, H2c)                         |
| Task-Specific Trust (LLM - Energy)  | **Custom Items** (adapt TILLMI, Lee & See)                      | Self-Report       | Design based on proposal tasks, TILLMI open (arXiv) | IV (RQ3, H3), Mediator?             |
| Willingness to Use (LLM - Energy)   | **Custom Items** (TAM/UTAUT format)                             | Self-Report       | Design based on std intention measures            | DV (RQ3, H3)                          |
| Frequency of Use (LLM - Energy)     | **Custom Items** (Std frequency format)                         | Self-Report       | Design based on std behavior measures             | DV (RQ3)                              |
| General AI Trust/Distrust           | **TPA-Revised** + **Semantic-Differential AI-Trust Scale**      | Self-Report       | Both openly available (arXiv, AIES Proc.)           | Mediator/Moderator (RQ4, H4)          |

**Sufficiency:** This combination of validated scales and carefully designed custom items should be *sufficient* to address your research questions and hypotheses thoroughly. The key is the development of the custom items for LLM beliefs and task-specific trust, ensuring they precisely capture perceptions related to the energy estimation and planning tasks. Pilot testing these custom items is highly recommended.




---------




# https://aistudio.google.com/prompts/1d3t7DUnNEXkJLVtXmNma9-p7PnlK4jdA

1.  **Baseline Human Biases/Knowledge:** Energy Literacy & Numeracy.
2.  **AI-Related Factors:** AI Literacy, General AI Trust/Attitude, LLM-Specific Trust & Beliefs.
3.  **Behavioral Outcomes:** LLM Use Intentions & Frequency for energy tasks.

Here’s a recommended instrument battery, prioritizing validated, accessible, and relevant scales:

**1. Numeracy**

*   **Recommended Instrument:** **Berlin Numeracy Test (BNT)**
    *   **Why:** Standard, short, validated measure of statistical numeracy and risk literacy, crucial for understanding how people process quantitative information (like energy estimates or LLM confidence scores). Directly relevant to H2a.
    *   **Availability:** Items are widely published in academic papers and available online (often requires searching the original Cokely et al. papers or related resources).
    *   **Source Note:** Look for Cokely et al. (2012) or summaries on decision science websites.

**2. Energy Literacy & Perception**

*   **Recommended Instrument 1:** **Energy Literacy Scale (ELS - Short Form) or DeWaters & Powers ELQ items**
    *   **Why:** Captures the multi-dimensional nature (Knowledge, Affect, Behavior) of energy literacy needed for H2b. The ELS short form (Chen et al., 2022) is more concise if available; otherwise, select key knowledge and attitude items from DeWaters ELQ (publicly described domains, items potentially available via ERIC/thesis/request). NEF survey items are also a good public alternative for knowledge.
    *   **Availability:** ELS short form may require accessing the specific publication/author. DeWaters ELQ items may be in supplemental docs/thesis. NEF Survey is fully public.
    *   **Source Note:** See ELS (ResearchGate), DeWaters (ASEE PEER/ERIC), NEF Survey (NEF Website).
*   **Recommended Instrument 2:** **Attari et al. (2010) Appliance Energy Use Estimation Task**
    *   **Why:** Directly measures the specific energy misperceptions (range compression bias) central to your proposal (context for H1). Essential for establishing the baseline human judgment pattern you expect to see mirrored in LLM accuracy beliefs.
    *   **Availability:** The list of appliances and methodology is described in the PNAS paper and its **openly accessible Supporting Information (SI)**.
    *   **Source Note:** PNAS SI for Attari et al. (2010).

**3. AI Literacy**

*   **Recommended Instrument:** **MAILS - Short Version (10 or 18 items)**
    *   **Why:** Covers key competencies (Use, Understand, Detect, Ethics, Self-Efficacy, Self-Competency) efficiently. Relevant for H2c regarding calibrated assessments of LLMs. Balances breadth with brevity.
    *   **Availability:** **Fully Open Access**. Items listed in publications and on the Würzburg HCI lab website.
    *   **Source Note:** Koch et al. (2024) for 10-item; Carolus et al. (2023) materials for 18-item.
*   **Optional Addition:** **Custom Objective LLM Knowledge Items.** Add 3-5 simple True/False or Multiple Choice questions specifically about LLM limitations relevant to your study (e.g., "LLMs like ChatGPT sometimes provide confidently incorrect information (hallucinate). [T/F]", "LLMs can access real-time energy usage data from my smart meter without specific setup. [T/F]"). This directly probes understanding relevant to trusting LLM outputs for energy tasks.

**4. General Trust / Attitude Toward AI**

*   **Recommended Instrument:** **ATTARI-12 (Attitudes Towards Artificial Intelligence Scale)**
    *   **Why:** A balanced, validated 12-item scale covering cognitive, affective, and behavioral attitudes (positive/negative). Good fit for assessing general disposition towards AI (relevant for H4).
    *   **Availability:** **Fully Open Access**. Items published in the *Scientific Reports* paper (Stein et al., 2024).
    *   **Source Note:** Stein et al. (2024), Nature Scientific Reports.
*   **Alternative:** **ATAI (Sindermann et al.) + AIAS-4 (Grassini).** Combine these two short scales to capture both Fear/Distrust (ATAI) and Positive Acceptance/Benefit (AIAS-4). Both are short and publicly available.

**5. Task-Specific Trust & Beliefs about LLMs (for Energy Tasks)**

*   **Recommended Instrument 1:** **TILLMI (Trust-In-LLMs Index)**
    *   **Why:** Directly measures trust dimensions (Closeness, Reliance) specifically for LLMs. Crucial for capturing task-specific trust (H3, H4).
    *   **Availability:** **Fully Open Access**. Items available in the arXiv preprint appendix (Duro et al., 2025).
    *   **Source Note:** Duro et al. (2025), arXiv.
*   **Recommended Instrument 2:** **Custom LLM Accuracy Belief Items**
    *   **Why:** *This is a critical gap - no standard scale exists.* You need to measure participants' *beliefs about LLM accuracy* for the specific energy tasks.
    *   **Format:** Create Likert-scale items (e.g., 1=Very Inaccurate to 7=Very Accurate). Examples:
        *   "How accurate do you think an LLM like ChatGPT would be at estimating the annual energy consumption of a typical refrigerator?"
        *   "How accurate do you think an LLM like ChatGPT would be at creating a personalized energy-saving plan tailored to your specific household?"
        *   "How likely is an LLM like ChatGPT to provide incorrect or misleading information when asked about energy-saving strategies?" (Reverse coded)
    *   **Availability:** You will need to develop and pilot these items.

**6. LLM Use Intentions & Frequency (for Energy Tasks)**

*   **Recommended Instrument:** **Custom Behavioral Items**
    *   **Why:** *Another gap.* Standard TAM/UTAUT scales don't cover this specific context. You need custom items.
    *   **Format:** Use standard behavioral frequency and intention formats. Examples:
        *   **Frequency:** "In the past month, how often, if at all, have you used an LLM (like ChatGPT, Gemini, Copilot) to get information or advice about household energy use or savings?" (Scale: Never, Rarely, Sometimes, Often, Very Often).
        *   **Intention:** "How likely are you to use an LLM in the future to help you understand your home energy use?" (Scale: 1=Very Unlikely to 7=Very Likely).
        *   **Intention:** "How likely are you to use an LLM in the future to get recommendations for energy-saving actions?" (Scale: 1=Very Unlikely to 7=Very Likely).
    *   **Availability:** You will need to develop and pilot these items.

**Summary Table of Recommended Core Battery:**

| Construct Domain           | Recommended Instrument(s)                                     | Type                  | Approx. Items | Availability Notes                                   |
| :------------------------- | :------------------------------------------------------------ | :-------------------- | :------------ | :--------------------------------------------------- |
| Numeracy                   | Berlin Numeracy Test (BNT)                                    | Objective             | 4             | Items widely published                             |
| Energy Literacy            | ELS (Short) / ELQ subset / NEF Survey                         | Knowledge/Attitude/Beh| ~20-30        | ELS (check pub); ELQ (check supp); NEF (Open PDF)    |
| Energy Perception Bias     | Attari et al. Estimation Task                                 | Estimation Task       | ~5-10         | Items/Method in PNAS SI (Open)                       |
| AI Literacy (Competencies) | MAILS - Short Version                                         | Self-Report           | 10-18         | Fully Open (Website/Pubs)                            |
| AI Literacy (Objective)    | *Custom LLM Knowledge Items*                                  | Objective (T/F, MC)   | 3-5           | *Needs Development*                                  |
| General AI Attitude/Trust  | ATTARI-12                                                     | Self-Report           | 12            | Fully Open (Sci Reports Pub)                         |
| LLM-Specific Trust         | TILLMI                                                        | Self-Report           | 6             | Fully Open (arXiv Preprint)                          |
| LLM Accuracy Beliefs       | *Custom LLM Accuracy Belief Items (Energy Tasks)*             | Self-Report (Likert)  | ~3-5          | *Needs Development*                                  |
| LLM Use (Energy Tasks)     | *Custom Frequency & Intention Items*                          | Self-Report (Likert)  | ~3-5          | *Needs Development*                                  |

This battery provides a robust mix of validated scales and necessary custom items to directly address your research questions and hypotheses within a reasonable survey length. Remember to pilot your custom items for clarity and variance.


---------

# https://chatgpt.com/c/681454bc-8954-8006-8380-9ac992a44223

### Mapping study constructs to best-fit instruments

| Construct (role)                                   | Retain / Replace                                                                               | Best instrument (items ≈ time)                                                                         | Rationale & psychometrics                                                   |
| -------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------- |
| Objective numeracy (predictor)                     | **Keep**                                                                                       | **Berlin Numeracy Test** (4 ≈ 3 min)                                                                   | Short, adaptive, discriminates probability reasoning; α ≈ .80               |
| Multidimensional energy literacy (predictor)       | **Replace ELQ** (60 items) **with** **Energy Literacy Scale—short Rasch form** (28 ≈ 6 min)    | Retains cognitive-affective-behavioural coverage, ω ≈ .90, halves completion time                      |                                                                             |
| Appliance-energy knowledge / bias (anchor DV)      | **Keep**                                                                                       | **Attari kWh-estimation task** (15 open ≈ 4 min)                                                       | Gold-standard for range-compression bias; log-error scoring aligns with H1  |
| AI literacy (predictor)                            | **Keep** **MAILS-short** (18 ≈ 4 min)                                                          | Covers “Understand, Use, Detect, Ethics, Create, Self-regulate”; α ≈ .88; strict invariance            |                                                                             |
| General AI trust/distrust (mediator/moderator)     | **Keep** **TPA-Revised** (12 ≈ 2 min) **plus** **Semantic-Differential AI-Trust** (27 ≈ 3 min) | Separates cognitive ability vs. affective warmth and explicit distrust                                 |                                                                             |
| **LLM-specific trust** (task DV)                   | **Add** **TILLMI** (6 ≈ 1 min)                                                                 | Captures “closeness” & “reliance” unique to ChatGPT-type systems; CFI =.995                            |                                                                             |
| AI self-efficacy (covariate)                       | **Optional add** **AISES** (22 ≈ 3 min)                                                        | Self-efficacy amplifies adoption even when trust is low; α ≈ .94                                       |                                                                             |
| Perceived LLM accuracy & utility (task belief DVs) | **Custom 4 × appliance Likert items**                                                          | Directly elicits beliefs that map onto H1–H3; anchor to same appliances as Attari task                 |                                                                             |
| LLM use frequency & intention (behavioural DVs)    | **Add** 5-item **UTAUT-derived block**                                                         | Frequency (“never → daily”) & intention (“very unlikely → very likely”) provide behavioural criterion  |                                                                             |
| Over-/under-reliance mechanism check               | **Add** 6-trial **explanation-gating task**                                                    | Captures commission/omission errors in < 4 min; validated for calibrated-trust studies                 |                                                                             |
| Sensitivity to AI uncertainty                      | **Optional add** 4-item vignette set (Kim et al., 2024)                                        | Tests whether literacy moderates reactions to “I’m not sure…” hedges                                   |                                                                             |

---

### Sufficiency of your current battery

*Your existing line-up (Berlin + MAILS-short + ELQ + TPA-R + Semantic-Differential + Attari task) already covers numeracy, AI literacy, general trust, and bias anchoring, but leaves three construct gaps:*

1. **Task-specific trust in LLMs.** Generic trust scales miss relational and competence nuances people ascribe to ChatGPT; TILLMI fills that hole.
2. **Actual/ intended LLM use.** Without a behaviour block you cannot test the belief → use pathway (H3).
3. **Behavioural overreliance.** Self-report cannot reveal omission/commission errors; a brief interactive task is needed to test calibrated-trust theory.

Replacing the long ELQ with the short ELS frees ≈ 5 minutes, more than enough time to add TILLMI, use-frequency items, and the gating task while keeping total survey time under 20 minutes for online panels .

---

### Additional instruments worth considering

* **Objective AI-knowledge quiz (Tully 17-item)**—helps disentangle knowledge vs. confidence but lengthens survey .
* **Uncertainty-perception vignette set**—useful if you plan a follow-up manipulating LLM confidence expressions .
* **Need-for-Cognition (NCS-6)**—brief proxy for analytic thinking; predictive of AI reliance biases .

---

### Practical deployment tips

1. **Order tasks**: Attari estimation → explanation-gating → numeracy → literacies → trust blocks → use-frequency. This reduces priming and demand artefacts.
2. **Scoring**: z-standardise all predictor indices; log-transform Attari errors; compute hierarchical reliability (ω) for literacy and trust composites before SEM.
3. **Pilot**: Field a 30-participant soft-launch to confirm gating-task usability and variance in new LLM items.






----------



# https://chatgpt.com/c/68144b63-01c0-8006-8760-baa0c2825e34



## Matching Constructs to Candidate Instruments

### 1  Energy knowledge, misconceptions, and literacy

* **Objective misconceptions.** Attari et al.’s open-numeric *energy-estimation* items directly capture the systematic under- and over-estimation patterns the proposal is trying to relate to LLM advice (e.g., device-level kWh, household share splits) .
* **Broader energy literacy.** The *Energy Literacy Questionnaire* (ELQ: knowledge + affect + behaviour) from DeWaters & Powers (2011) offers a well-validated, multidimensional baseline; most items and scoring keys are already in your corpus .
  *Knowledge*: multiple-choice facts on units, conversions.
  *Affect*: personal importance, policy support.
  *Behaviour*: self-reported conservation actions.
* **Supplementary attitude nuance.** If you want richer motivational or policy levers, the Energy-Issue Attitude Questionnaire (EIAQ) adds goal-framing, technology-vs-nature solutions, and self-efficacy facets .

> **Recommendation.** Retain the Attari numeric tasks (for misperception magnitude) **and** the ELQ core (knowledge, affect, behaviour). Add just two or three EIAQ sub-scales if you need attitude granularity; otherwise the ELQ affect items already cover pro-conservation orientation.

### 2  Numeracy and probabilistic reasoning

* The full eight-item **Berlin Numeracy Test** (BNT) is short, has good calibration-sensitivity, and clean scoring; you already have the markdown version.
* The three intuitive-probability items embedded in the energy file (coin flips, lottery, sweepstakes)  are useful warm-ups but lack difficulty range.

> **Recommendation.** Use the BNT as the principal numeracy predictor and keep the simple three-item block only as an *anchor* for respondents who struggle with BNT’s wordier items.

### 3  AI/LLM literacy

* **Perceived competence/self-efficacy.** The MAILS 27-item self-appraisal scale (0–10 sliders) covers operational, conceptual, ethical, and creative facets .
* **Objective knowledge.** Weber et al.’s 16-item multiple-choice *objective AI literacy* test differentiates superficial familiarity from correct knowledge .
* **Task-specific literacy (LLM focus).** Ng/Pinski four-factor set (self-efficacy, cognitive learning, tech knowledge, processing-steps) explicitly references ChatGPT-style systems .

> **Recommendation.** Combine: MAILS (subjective beliefs) **plus** Weber MCQ (objective) for convergent/discriminant checks. Append the six-item Ng self-efficacy subscale to probe *prompt-generation* confidence, which Weber omits. Total burden ≈ 45 items, still manageable.

### 4  Trust, distrust, and calibration

| Trust facet                                         | Best-fit instrument(s)                                                                                                                   | Rationale                                                                                               | Use notes                                                        |
| --------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| **General dispositional trust in automation**       | Jian et al.’s TPA-7 semantic items                                                                                                       | Short, validated across domains                                                                         | Administer once, pre-scenario                                    |
| **Domain-general AI trust (cognitive + affective)** | Shang & Hsieh 27-pair semantic differential scale                                                                                        | Separates rational reliability from warmth/ethics—vital for “hallucination vs benevolence” distinctions | Treat as higher-order latent factors                             |
| **LLM-specific relational trust**                   | TILLMI final six-item form                                                                                                               | Calibrates *closeness* and *reliance* on ChatGPT-like agents                                            | Embed after participants read your “LLM energy-advisor” vignette |
| **Trust calibration & perceived accuracy**          | Machine-Heuristics “knowledgeable / accurate / unbiased” triads  + single confidence-in-answer item (“I believe my answer was correct”)  | Lets you compute subjective accuracy minus actual Attari-task accuracy                                  | Present immediately after each numeric estimate                  |

*Optional expansion.* If you wish to model over-reliance *trait*, include the eight-item **Complacency-Potential Rating Scale** (in the Adams file) .

### 5  LLM mental-model checks & fact-checking behaviour

* The five-item *fact-checking frequency* battery from Rheu & Cho  aligns with your mediation hypothesis (“does higher AI literacy increase verification?”).
* Add one or two forced-choice *mechanistic* questions (“What does attention do?”) from the Mechanistic Comprehension Check block  to ensure minimal model understanding before trust items.

---

## Sufficiency Assessment

*Energy constructs* are fully covered (Attari + ELQ).
*Numeracy* is covered once BNT is inserted.
*AI literacy* is covered, but adding the *objective* Weber scale is necessary for knowledge/performance dissociation.
*Trust* coverage is partial: existing materials include TPA and Jian scales, but **lack an LLM-specific trust instrument**—TILLMI fills that gap.
*Calibration* is not yet operationalised; pairing perceived-accuracy items with each Attari estimate yields the needed delta scores.

> **Gap summary:** Add (i) Weber objective AI-literacy MCQ, (ii) TILLMI, (iii) Machine-Heuristics + confidence-rating for calibration, (iv) BNT, and (v) optional Complacency-Potential if over-reliance is a preregistered moderator. Everything else is already in your compiled survey pool.

---

## Concise Survey Map

| Construct                        | Recommended scale(s)                        |   # Items | Comment                    |
| -------------------------------- | ------------------------------------------- | --------: | -------------------------- |
| Energy misperceptions            | Attari numeric estimation tasks             | 18 (est.) | Direct accuracy scoring    |
| Energy literacy (knowledge)      | ELQ cognitive subscale                      |     30–38 | MCQ; reuse scoring key     |
| Energy affect & behaviour        | ELQ affect (17) + behaviour (10)            |        27 | Attitude + self-report     |
| Numeracy                         | Berlin Numeracy Test                        |         8 | Calibrated difficulty      |
| AI literacy – subjective         | MAILS 27                                    |        27 | 0–10 sliders               |
| AI literacy – objective          | Weber 16 MCQ                                |        16 | Add for knowledge accuracy |
| Prompt-self-efficacy             | Ng 6                                        |         6 | LLM-specific confidence    |
| Dispositional trust (automation) | TPA-7                                       |         7 | Baseline propensity        |
| Domain AI trust (cog/aff)        | Shang & Hsieh 27                            |        27 | Semantic differential      |
| LLM-specific trust               | TILLMI 6                                    |         6 | Reliance & closeness       |
| Trust calibration                | Machine-Heuristics 12 + per-item confidence |    12 + n | Compute bias/error         |
| Fact-checking habit              | Rheu & Cho 5                                |         5 | Behavioural check          |
| Over-reliance trait (optional)   | Complacency-Potential 8                     |         8 | Predict unsafe delegation  |

Total mandatory burden ≈ 160 items (\~20 min on Qualtrics). Cutting Shang & Hsieh to its 18 cognitive pairs if time becomes tight still preserves two-route modelling.

---

### Final considerations

1. **Instrument interactions.** Run a short pilot to verify that Attari numeric tasks do not prime lower trust by revealing one’s ignorance before trust items; randomize block order if necessary.
2. **Measurement invariance.** If you retain both subjective and objective AI-literacy measures, test whether higher objective scores *actually* predict stricter fact-checking—a key falsifiable implication.
3. **Latent modelling.** With ELQ (three factors) and Shang & Hsieh (two factors) you can specify a second-order SEM in which trust and literacy jointly predict (a) perceived LLM accuracy and (b) reliance willingness, mediating usage intentions.

-----


# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1

The core of the proposed study rests on addressing existing cognitive biases in energy perception and the potential influence of LLMs on these biases. Research indicates that individuals commonly underestimate energy consumption for high-impact activities and overestimate savings from low-impact behaviors, a phenomenon attributed partly to the use of simplifying heuristics and limited numerical understanding. This aligns with findings that perceptions of energy use often exhibit a "compressive bias" and a relatively flat relationship with actual energy consumption. Expert decision-making, in contrast, relies on more accurate, principle-based heuristics, and interventions designed to provide better heuristics or anchor points have demonstrated the capacity to improve lay estimates. The proposed study aims to examine how LLMs, as potential providers of information or heuristics, interact with these pre-existing cognitive structures and biases.

To assess the constructs outlined in the proposal, several instruments described in the sources are relevant:

1.  **Energy Misperceptions and Knowledge:** The measurement approaches employed by Attari et al. (2010) and Marghetis et al. (2019) are highly pertinent. The estimation tasks, requiring participants to quantify energy use relative to a reference point (e.g., a 100-W incandescent bulb), and ranking tasks, directly assess the nature and extent of individuals' energy perception biases. The open-ended question regarding the most effective conservation strategy provides insight into reliance on potentially inaccurate "cultural heuristics" versus expert-recommended efficiency measures. The behavioral choice task from Marghetis et al. (2019) is valuable for examining whether perceptions translate into appropriate behavioral judgments regarding energy-saving actions. Furthermore, general energy knowledge can be assessed using instruments like the multiple-choice questions adapted from DeWaters and Powers (2011) as used by Canfield et al. (2017). Andolfi et al. (2024) also describe a newly developed 13-question multiple-choice energy literacy test, which could serve this purpose, although further validation is suggested.

2.  **Numeracy:** Given the relationship between numeracy and more accurate energy perceptions, including a measure of quantitative literacy is appropriate. The sources reference standard numeracy questions included in surveys by Attari et al. (2010) and Marghetis et al. (2019), which are suitable for this purpose.

3.  **Environmental Attitudes and Values:** Pro-environmental attitudes and concerns for the environment are individual differences associated with energy conservation perceptions and behaviors. The NEP scale, or biospheric values subscale (e.g., from the Environmental Portrait Value Questionnaire as used by Andolfi et al. 2024), are appropriate measures for these constructs. Questions on climate change beliefs and concern, such as those in the He et al. (2024) or Marghetis et al. (2019) surveys, also capture relevant attitudinal dimensions.

4.  **AI Literacy:** Rheu and Cho (2025) investigate AI literacy (self-perceived and objective) in relation to LLM use and fact-checking behavior. Their study is directly relevant to the proposed research framework linking AI literacy to interactions with LLMs. However, the specific survey items used by Rheu and Cho (2025) to measure AI literacy were not accessible in the provided materials. The discussion on AI literacy measurement highlights a distinction between self-report and objective knowledge tests, suggesting that a comprehensive assessment may require both. Existing AI attitude scales like the ATAI scale by Sindermann et al. (2021) measure general feelings towards AI but may not adequately capture understanding of LLM capabilities, limitations, and the potential for factual inaccuracies ("hallucinations") relevant to energy management tasks.

5.  **Trust in AI/LLMs:** The proposal emphasizes human-AI trust calibration. Kohn et al. (2021) and Scharowski et al. (2025) review methods for measuring trust in automation and AI, noting the frequent use of single items or custom scales, which may lack rigorous validation. They suggest using validated scales or extracting items from them while ensuring psychometric quality. While the Jian et al. (2000) Trust between People and Automation scale is mentioned as commonly adapted, its psychometric properties in the AI context require thorough investigation. Kim et al. (2024) directly examined how LLM uncertainty expression impacts user trust and reliance, indicating the relevance of perceived credibility and confidence in the system. Rheu and Cho (2025) also link perceived credibility to reliance (fact-checking). For the proposed study, measures of trust should be specific to the LLM's performance and advice within the energy management domain, assessing perceived accuracy, reliability, and confidence in its suggestions.

6.  **Reliance and Behavioral Intention:** The proposal posits that perceived accuracy and trust will predict users' willingness to rely on LLMs. Reliance can be operationalized as self-reported intention or measured through behavioral tasks where users choose whether or not to act on the LLM's output. Examples of self-report intention scales in the energy context include the intention to provide flexibility measured by Andolfi et al. (2024) or the intention to lower electricity usage used by Canfield et al. (2017). Rheu and Cho (2025) linked perceived credibility to fact-checking behavior, suggesting behavioral measures of validating LLM output are also relevant.

**Sufficiency Assessment and Additional Survey Needs:**

Based on the review, the provided sources offer a solid foundation for measuring energy misperceptions, general energy knowledge, numeracy, and relevant individual attitudes/values. Instruments from Attari et al. (2010), Marghetis et al. (2019), DeWaters and Powers (2011/2013), and Canfield et al. (2017) are directly applicable for assessing the energy literacy and perception components. Numeracy items are also available. Environmental attitudes can be measured using established scales like the NEP.

However, the sources are less comprehensive regarding measures for AI literacy specifically tailored to understanding LLM capabilities and limitations in factual domains, and measures of trust explicitly calibrated for LLMs used for energy management tasks. While Rheu and Cho (2025) investigate relevant links, their specific instruments are not detailed. Discussions on AI literacy measurement note the need for rigorous, objective assessments beyond self-report or general attitudes. Similarly, trust measures discussed are general to automation or AI, and their validity for assessing trust in LLMs for specific factual/advisory tasks like energy management needs empirical support.

Therefore, supplementing the instruments from the provided sources would be beneficial, particularly in the following areas:

1.  **Specific AI Literacy for LLMs:** Measures are needed to assess users' understanding of LLMs' nature (e.g., statistical models, not knowledge bases), their strengths (e.g., language generation), weaknesses (e.g., potential for factual errors/hallucinations), and appropriate use cases, especially in domains requiring factual accuracy like energy information. Developing a set of multiple-choice or scenario-based questions assessing objective understanding of these points would be valuable. This could build upon frameworks of AI literacy (e.g., Ng et al. as referenced in) but be operationalized as a knowledge test rather than solely self-assessment.

2.  **Trust in LLMs for Energy Tasks:** A dedicated scale should be developed or adapted to measure participants' trust in the LLM *specifically* for providing accurate energy consumption estimates, effective conservation advice, and personalized plans. This could involve presenting scenarios where the LLM provides information and asking participants to rate their confidence in its accuracy, their willingness to rely on its advice, and their overall trust in the tool for this domain. Items could be adapted from validated trust in automation scales but rephrased to pertain to an LLM providing energy information. Care must be taken to ensure the psychometric quality of any newly developed or adapted items.

3.  **Operationalizing Reliance:** While self-reported intention is useful, incorporating a behavioral task where participants have the option to use or verify information provided by the LLM for an energy-related decision (similar to the fact-checking behavior in Rheu & Cho 2025 or behavioral choice in Marghetis et al. 2019) would provide a more direct measure of reliance calibration.

In conclusion, the existing sources offer strong tools for measuring energy perception biases, energy knowledge, and individual difference variables like numeracy and environmental attitudes. These should form the core of the survey. However, measures specifically addressing AI literacy relevant to LLMs' factual capabilities and trust in LLMs within the energy domain would need to be developed or sourced from instruments not detailed in the provided excerpts, ensuring psychometric rigor in their construction and validation. Integrating these components will provide a more comprehensive assessment aligned with the proposed study's grounding in cognitive theory and human-AI interaction.


-------


Drawing on principles from cognitive psychology and the study of individual differences in knowledge representation, I will evaluate the suitability of the provided survey instruments for your study proposal, which investigates how laypeople perceive the accuracy and utility of Large Language Models (LLMs) for household energy management tasks, particularly in light of known human cognitive biases in this domain. The proposal posits specific hypotheses regarding the influence of numeracy, energy literacy, and AI literacy on these perceptions.

The study proposal aims to measure several key constructs: 1) lay perceptions of LLM accuracy/utility for energy tasks, 2) the presence of human energy perception biases, 3) objective numeracy, 4) objective cognitive energy literacy, and 5) specific facets of AI literacy related to critical evaluation and understanding limitations.

**Evaluation of Instruments for Study Constructs:**

1.  **Lay Perceptions of LLM Accuracy/Utility for Energy Tasks:** The core of your investigation requires measuring user *perceptions* of the performance of LLMs on energy-related tasks (e.g., estimating appliance energy use, suggesting conservation strategies). Review of the provided sources indicates that while instruments exist to measure general attitudes toward AI (e.g., Sindermann et al., 2021; Laupichler et al., 2023; Ng et al., 2023) or trust in automation/LLMs (e.g., Kim et al., 2024; Steyvers et al., 2025; Marmolejo-Ramos et al.), none specifically address perceived accuracy or utility *of LLM outputs for household energy management tasks*. Therefore, a dedicated instrument would need to be developed to capture this construct. This instrument should present participants with hypothetical or actual LLM outputs responding to energy-related queries (e.g., estimates of appliance energy use, suggestions for energy savings) and ask participants to evaluate their perceived accuracy, usefulness, or trustworthiness, potentially using Likert-type scales similar to those used for measuring behavioral intentions or attitudes in other energy surveys (e.g., Canfield et al., 2017; He et al., 2024; Andolfi et al., 2024).

2.  **Presence of Human Energy Perception Biases:** Hypothesis H1 proposes that lay perceptions of LLM accuracy will reflect known human biases, such as overestimating low-impact curtailment actions and underestimating high-impact efficiency improvements or appliance use. The work by Attari et al. (2010) and Marghetis et al. (2019) provides established methods for assessing these biases in a sample. Attari et al. (2010) used estimation tasks where participants estimated energy use and savings relative to a 100W bulb, and also asked open-ended questions about the most effective conservation strategies. Marghetis et al. (2019) used similar estimation tasks and behavioral choice tasks where participants selected the more energy-efficient option from a pair. Including a selection of these tasks (e.g., appliance energy estimation, behavioral choice items) in your survey instrument would allow you to measure the degree to which these biases are present in your sample. While not strictly necessary to measure the *perception* of LLM outputs (the core of H1), including these tasks provides valuable data points for comparison, allowing you to examine the relationship between a participant's own energy perception biases and their evaluation of LLM-generated information.

3.  **Objective Numeracy:** Hypothesis H2a posits that numeracy is related to calibrated perceptions of LLM quantitative capabilities. Objective numeracy is a well-established individual difference variable relevant to understanding quantitative information and making judgments under uncertainty. The sources mention and include items from numeracy scales used in energy perception studies by Attari et al. (2010) and Marghetis et al. (2019). These scales typically include questions involving probability, percentages, and quantitative reasoning. Using a selection of validated items from one of these numeracy scales (e.g., the items listed in survey\_all.md) would be appropriate for assessing this construct in your study.

4.  **Energy Literacy (Cognitive Knowledge Component):** Hypothesis H2b examines the role of energy literacy, specifically the cognitive component (knowledge), in critically evaluating LLM outputs. Energy literacy is a multidimensional construct, but objective knowledge of energy concepts, systems, and consumption patterns is a core aspect. Several instruments measure this. The Energy Literacy Questionnaire (ELQ) by DeWaters and Powers (2011, 2013) is a foundational instrument with a cognitive subscale using multiple-choice questions. Canfield et al. (2017) adapted 8 multiple-choice questions from DeWaters and Powers to measure cognitive energy literacy. These questions cover fundamental concepts such as units of energy measurement, factors affecting appliance energy use, energy conversion, and major sources and uses of energy in homes. Andolfi et al. (2024) developed a newer, shorter 13-item multiple-choice test specific to energy flexibility topics. For a study focusing on general household energy management, the adapted DeWaters and Powers questions used by Canfield et al. appear suitable for assessing foundational cognitive energy literacy, aligning with established dimensions of the construct. The 13-item test by Andolfi et al. might be more appropriate if the LLM tasks presented focus specifically on energy flexibility scenarios (e.g., EV charging, heat pump scheduling). Both provide objective measures of knowledge, which is key for H2b's focus on critical evaluation informed by domain understanding.

5.  **AI Literacy (Critical Evaluation Facet):** Hypothesis H2c investigates how AI literacy, particularly aspects related to understanding limitations and critical evaluation, influences beliefs about LLM capabilities for energy tasks. AI literacy measurement is an evolving field with diverse instruments. Many scales are self-report measures of perceived knowledge or attitudes (e.g., MAILS, SNAIL, AILS). However, H2c specifically mentions understanding limitations and critical evaluation, which aligns more closely with concepts like 'calibrated trust' based on understanding how AI works and its potential for error. Marmolejo-Ramos et al. (2025) examined the role of statistical literacy (using the BLIS scale) and general propensity to trust automation (using Merritt et al.'s scale) as components related to AI literacy, finding that higher statistical literacy was associated with more discerning, or 'calibrated,' trust in AI depending on the scenario stakes. While the MAILS scale (Carolus et al., 2023) is described as having 'Evaluate' and 'Reflect' dimensions that are highly relevant to critical evaluation, the specific items are not provided in the sources. Given the available sources, measuring general trust propensity (e.g., using the scale from Merritt et al. as adapted by Marmolejo-Ramos et al.) alongside a measure of understanding AI limitations or capabilities could serve as proxies for the critical evaluation facet of AI literacy. Alternatively, adapting the approach of Marmolejo-Ramos et al. by including items assessing statistical or algorithmic reasoning relevant to understanding AI outputs (even if not the full BLIS scale) could be considered. The specific choice depends on how 'critical evaluation' is operationalized, but it should ideally go beyond mere self-assessment of confidence.

**Recommendations for Survey Instrumentation:**

Based on the analysis of available instruments in the provided sources and their relevance to your hypotheses, I recommend the following:

1.  **Develop a new instrument section** to specifically measure lay perceptions of LLM accuracy and utility for household energy tasks. This section should include questions prompting participants to evaluate hypothetical or actual LLM outputs for tasks relevant to your study's scope (e.g., estimating energy use of specific appliances, evaluating suggested conservation actions). The design of these evaluation items should be informed by the known human biases documented by Attari et al. (2010) and Marghetis et al. (2019).
2.  **Include a selection of tasks measuring human energy perception biases**, such as appliance energy estimation relative to a baseline or behavioral choice tasks, drawing upon the methods of Attari et al. (2010) and Marghetis et al. (2019). This will provide a baseline measure of cognitive biases in your sample, useful for contextualizing perceptions of LLM outputs (H1).
3.  **Incorporate a validated numeracy scale.** The items provided in survey\_all.md under "Numeracy", consistent with those used by Attari and Marghetis, are appropriate for assessing objective numeracy (H2a).
4.  **Select an objective measure of cognitive energy literacy.** The 8 multiple-choice questions adapted from DeWaters and Powers (2011, 2013) by Canfield et al. (2017) offer a concise assessment of fundamental energy knowledge relevant to household contexts, supporting H2b.
5.  **For AI literacy focusing on critical evaluation (H2c),** consider measuring general propensity to trust automation using Merritt et al.'s scale (as used by Marmolejo-Ramos et al.) and potentially including items designed to probe understanding of AI limitations or the nature of its knowledge. If accessible, validated items from the "Evaluate" or "Reflect" subscales of a comprehensive AI literacy instrument like MAILS would be highly relevant. Given the fragmented state of AI literacy measurement, carefully selecting items that align with the theoretical construct of critical evaluation of AI is paramount.

In summary, while existing validated scales for numeracy and cognitive energy literacy are available in the sources, instruments to directly measure perceptions of LLM accuracy in the energy domain must be newly developed for this study. Measurement of AI literacy aspects relevant to critical evaluation may require careful selection or adaptation of items from existing conceptualizations and scales, such as those related to calibrated trust or specific AI evaluation competencies. Any newly developed or substantially adapted survey components should undergo psychometric validation to ensure reliability and construct validity, adhering to rigorous methodological standards.


-----



**Construct 1: AI Literacy**

The study proposes examining the relationship between AI literacy (specifically facets related to understanding limitations and critical evaluation from MAILS) and beliefs about LLM capabilities, as well as the potential interaction with AI usage/application facets (H2c). AI literacy is broadly defined as an individual's understanding of AI systems and the ability to appropriately use and evaluate AI. Sources discuss various approaches to measuring AI literacy, ranging from self-report scales to objective knowledge tests.

The Meta AI Literacy Scale (MAILS) is mentioned explicitly in H2c and described as a comprehensive instrument measuring broad AI literacy competencies, including practical skills in using AI, conceptual knowledge, ethical understanding, and self-efficacy. Its subscales cover facets such as "Use & Apply AI" and "Know & Understand AI," as well as metacognitive aspects like "Persuasion Literacy" (awareness of AI influence) and "Emotion Regulation" when using AI. The hypothesis specifically references "understanding limitations and critical evaluation" facets from MAILS. While the MAILS description in the sources does not explicitly list "understanding limitations" or "critical evaluation" as direct subscales, the broader themes of "Know & Understand AI," "Evaluate AI," "Persuasion Literacy," and incorporating ethical considerations align conceptually with the ability to critically appraise AI capabilities and limitations. The MAILS framework notably integrates cognitive, technical, and socio-emotional aspects, going beyond factual knowledge to include attitudes and confidence in using AI. Given its breadth and inclusion of aspects related to critical engagement and self-regulation, MAILS appears conceptually aligned with the need to measure nuanced aspects of AI literacy relevant to evaluating LLM outputs.

However, the sources also discuss the importance of distinguishing between self-perceived AI literacy (measured by scales like PAILQ-6 or MAILS subscales like self-efficacy) and objective knowledge (measured by tests like BLIS or AI-CI). Tully et al.'s research, for instance, found an inverse relationship between *objective* AI literacy and receptivity, suggesting that lower objective knowledge might paradoxically increase initial adoption driven by perceived "magic". Conversely, MAILS validation showed positive correlations between *self-reported* literacy/competence and positive attitudes/openness. This highlights a potential disconnect between feeling literate and being objectively literate, and their potentially different effects on attitudes and behavior.

For H2c, which links "higher AI literacy (especially facets related to understanding limitations and critical evaluation from MAILS)" to "more cautious or nuanced beliefs about LLM capabilities," using the relevant MAILS subscales would directly address the hypothesis as stated. However, given the potential for subjective vs. objective literacy differences, supplementing the MAILS self-report with an objective measure of AI knowledge (e.g., selected items from BLIS or an AI knowledge test like the one by Hornberger et al.) could provide a more complete picture of how actual understanding vs. perceived competence relates to beliefs about LLMs. BLIS, for example, assesses statistical literacy which is relevant to understanding how algorithmic models function and their potential for error or uncertainty. This aligns with understanding AI limitations.

The hypothesis also mentions "AI usage/application facets" potentially correlating with more positive beliefs. MAILS includes "Use & Apply AI", making it suitable for this part of H2c. Measuring self-reported frequency of LLM use for *general* tasks could also serve as a proxy for AI application orientation, although a more precise measure would focus on reported *application comfort or capability* rather than just frequency.

**Construct 2: Energy Literacy (Cognitive Knowledge)**

H2b posits that higher energy literacy (specifically the cognitive knowledge component) will be associated with more critical evaluation of LLM outputs regarding energy tasks. Energy literacy involves understanding energy concepts, consumption patterns, and conservation strategies. The cognitive component typically assesses factual knowledge.

Relevant energy literacy instruments described in the sources include the DeWaters Energy Literacy Questionnaire (ELQ), the Energy Literacy Inventory – Middle School (ELI-M), Attari et al.'s surveys measuring knowledge via estimation and behavioral choice tasks, and other tailored surveys. The ELQ includes a multiple-choice cognitive scale. Attari's approach focuses on estimating appliance energy use and choosing less energy-intensive options, directly assessing understanding of relative energy consumption, which is a crucial part of cognitive energy literacy relevant to energy management tasks. Kantenbacher & Attari (2021) specifically documented expert heuristics for energy judgments and compared expert vs. novice estimates, providing insight into the *mechanisms* of knowledge and judgment in this domain.

For H2b, which links cognitive energy literacy to critical evaluation of LLM outputs *on energy tasks*, measures that specifically assess knowledge about household energy use are most appropriate. The estimation tasks (e.g., estimating appliance energy use, comparing energy use of different actions) from Attari's work would be highly relevant. These tasks directly probe the understanding of energy consumption patterns that LLMs might provide information on. A subset of multiple-choice items from the ELQ cognitive scale focusing on household energy concepts could also be suitable. Combining different formats (estimation, multiple-choice knowledge questions) might offer a more robust measure of the cognitive dimension of energy literacy relevant to the study's context. The study could adapt items from instruments listed in source (e.g., Estimation Task items, Behavioral Choice Task items, conceptual questions like "Difference between energy/electricity" or "Appliances not using electricity").

It is important to note that energy literacy instruments often include affective (attitudes, values) and behavioral components, but H2b specifically targets the cognitive dimension. Focusing on the knowledge and estimation tasks would be most direct for testing this hypothesis.

**Construct 3: Beliefs about LLM Accuracy and Trustworthiness for Energy Tasks**

H3 posits that more favorable beliefs regarding LLM accuracy and trustworthiness *for energy tasks* will be positively associated with greater self-reported willingness to use LLMs for energy decisions. This construct requires measuring user perceptions of LLMs' capabilities and reliability *specifically* in the domain of household energy management.

Sources discuss perceived credibility of LLMs, operationalized via dimensions like perceived validity, reliability, usefulness, and personalization, and concepts like "machine heuristics" which involve perceiving AI as expert, objective, and accurate. A Semantic Differential scale described in source measures perceived credibility with items like "Credible/Not Credible," "Reliable/Unreliable," "Expert/Not expert," and "Trustworthy/Not trustworthy." This scale is designed to assess general perceived credibility of LLMs.

For H3, this general scale is a starting point, but it needs adaptation or supplementation to capture beliefs *specific* to energy tasks. For example, items could be phrased as: "How credible do you perceive LLMs to be for providing information on household energy use?", "How reliable do you think LLMs are for estimating appliance energy consumption?", or "How trustworthy do you find LLMs for creating personalized energy conservation plans?". This task-specific focus is crucial because perceived credibility and trust can vary significantly depending on the domain. General trust in AI might not predict trust in AI for a specific, potentially complex or sensitive domain like managing household bills or comfort.

The concept of "machine heuristics" (perceiving AI as expert, objective, accurate) from Rheu & Cho (2025) is also highly relevant to this construct. H2c even suggests that AI literacy might mitigate reliance on these heuristics. Measuring the extent to which users perceive LLMs as "expert" or "accurate" specifically for energy information would directly address the perception aspect of H3. Rheu & Cho's study found self-efficacy and cognitive learning aspects of AI literacy were positively associated with these heuristics, suggesting that even feeling capable with AI might lead to positive biases about its accuracy.

Therefore, a suitable measurement approach for this construct would be an adaptation of the Semantic Differential scale or items based on the machine heuristics concept, specifically framed for the context of household energy management tasks (e.g., estimating usage, generating conservation plans).

**Construct 4: General Trust in AI**

H4 proposes that general trust in AI mediates the relationship between task-specific beliefs (Construct 3) and willingness/frequency of use (Construct 5). General trust in AI refers to an individual's overall propensity or attitude towards trusting AI systems across different contexts.

Sources describe several instruments for measuring general trust and attitudes toward AI. These include the Propensity to Trust Automation Scale, AI Attitude Scale (AIAS-4), Attitude Toward AI Scale (ATAI), and GAISS. The AIAS-4 is a concise 4-item scale capturing perceived usefulness, behavioral intention, and risk perception ("threat to humans") as an overall trust/attitude index. The ATAI includes subscales for Acceptance vs. Fear of AI, some items being quite stark. The Propensity to Trust Automation Scale measures a general tendency to trust machines.

For H4, which requires a measure of *general* trust, any of these scales could be appropriate. The AIAS-4 or a general Propensity to Trust scale would capture an overarching sentiment or predisposition. Shang et al.'s (2025) work highlights that trust is multifaceted, including cognitive (reliability) and affective (empathy) components. Measuring both aspects of general trust (e.g., using a scale that differentiates cognitive trust in AI capability from affective trust or comfort with AI) could provide a more nuanced understanding of the mediation proposed in H4, aligning with calls for comprehensive trust evaluation. Scales like the Semantic Differential (if used generally, not specific to energy) or adaptations of TPA could capture these facets. Scharowski et al. (2025) suggest a two-factor model differentiating trust and distrust might be more informative than a single continuum.

The choice of scale depends on whether the study needs a quick index (AIAS-4), a measure of general predisposition (Propensity to Trust), or a more detailed look at cognitive vs. affective trust components. Given the mediation hypothesis, a measure that captures trust *in the AI system itself* rather than just general attitudes towards AI might be more theoretically relevant. A scale adapted from instruments like the Human-Computer Trust Scale, framed for AI systems generally, could serve this purpose, measuring perceived reliability, faith, or dependability.

**Construct 5: Willingness/Frequency of LLM Use for Energy Tasks**

H3 and H4 involve willingness/frequency of LLM use for energy tasks. This construct measures the behavioral intention or self-reported frequency of using LLMs for activities like estimating appliance energy use or creating conservation plans.

AI literacy surveys sometimes include items on behavioral intention to use AI or self-reported frequency of use. For example, AIAS-4 includes the item "I think I will use AI technology in the future". Rheu & Cho (2025) measured frequency of LLM use for schoolwork.

For this study, the key is to measure intention or frequency specifically for *energy management tasks*. This would require adding specific survey items. Examples could include: "How likely are you to use an LLM to estimate the energy use of an appliance in your home?", "How likely are you to use an LLM to get advice on saving energy?", or "In the past month, how often have you used an LLM to help with energy-related tasks in your home (e.g., understanding your bill, finding efficiency tips)?". These items would directly measure the outcome variable for H3 and H4.

Sources note the challenge of measuring actual behavior via self-report due to social desirability bias or inaccurate recall. While experimental tasks measuring behavior (like following or overriding AI advice in a simulated scenario) offer greater validity, the survey format limits this. Therefore, relying on self-report measures of intention and frequency, tailored to the specific energy tasks, is the most feasible approach within a survey design, albeit with the inherent limitations of self-report.

**Sufficiency of Currently Collecting Surveys**

Based on the analysis above, the proposed study's hypotheses require measurement instruments for:
1.  AI Literacy (general, and specific facets like critical evaluation, usage/application)
2.  Energy Literacy (cognitive knowledge, especially related to household use)
3.  Beliefs about LLM accuracy/trustworthiness for energy tasks
4.  General Trust in AI
5.  Willingness/Frequency of LLM use for energy tasks

The sources describe various relevant instruments for each of these constructs, but a comprehensive survey battery tailored to this specific study context would likely need to *combine* or *adapt* elements from multiple sources.

If the "currently collecting surveys" refer to general AI literacy or energy literacy instruments (like a standard MAILS or ELQ), they may not be fully sufficient as is.
*   A standard MAILS would cover AI literacy facets.
*   A standard ELQ or items from Attari's surveys would cover energy literacy knowledge.
*   However, measures specifically capturing *beliefs about LLM accuracy/trustworthiness for energy tasks* (Construct 3) and *willingness/frequency of LLM use for energy tasks* (Construct 5) would almost certainly need to be added or specifically adapted from existing trust/behavioral intention scales by framing them around energy management. General AI trust scales (Construct 4) are available, but the specific choice should align with the nuance required for the mediation hypothesis.

Therefore, it is likely that the currently collecting surveys, if they are standard, off-the-shelf instruments for general AI or energy literacy/trust, are not fully sufficient. New or adapted items would be necessary to precisely measure task-specific beliefs and usage intentions.

**Summary of Recommendations for Survey Instruments:**

1.  **AI Literacy:** Use relevant subscales from MAILS (e.g., those related to knowing/understanding, evaluating, and using/applying AI). Consider including a brief objective measure of AI knowledge (e.g., selected BLIS items) to capture objective literacy alongside self-report.
2.  **Energy Literacy (Cognitive Knowledge):** Adapt key components from Attari et al.'s work (e.g., estimation tasks for appliance energy use, behavioral choice tasks on relative energy use) or select relevant knowledge items from validated energy literacy questionnaires like the ELQ cognitive scale, focusing on household energy consumption.
3.  **Beliefs about LLM Accuracy/Trustworthiness for Energy Tasks:** Adapt items from a general perceived credibility or trust scale (e.g., the Semantic Differential scale items on credibility, reliability, expertise, trustworthiness or machine heuristics items), explicitly framing them in the context of using LLMs for household energy management tasks.
4.  **General Trust in AI:** Include a validated scale for general trust in AI or automation, such as the AIAS-4, a Propensity to Trust Automation scale, or a suitable scale capturing cognitive and affective trust facets. The choice should align with the mediation model's theoretical basis.
5.  **Willingness/Frequency of LLM Use for Energy Tasks:** Develop specific self-report items measuring the likelihood or frequency of using LLMs for defined household energy management tasks (e.g., estimating use, generating conservation plans).
