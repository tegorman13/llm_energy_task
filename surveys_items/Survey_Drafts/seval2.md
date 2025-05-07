


# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1

### Analysis of the Problem: Nature, Scope, and Requirements

The research problem, as outlined in the proposal, centers on the increasingly prevalent phenomenon of individuals leveraging LLMs for practical advice, specifically within the domain of household energy management. This domain is characterized by several cognitively challenging features: it involves complex, often counterintuitive physical processes; consumption and savings are typically invisible or difficult to track; and decisions are frequently influenced by cognitive biases and bounded rationality, leading to suboptimal choices. Prior research has well-documented systematic errors in human judgments about energy use and savings, such as the tendency to overestimate the impact of low-energy activities (e.g., turning off lights) and underestimate the impact of high-energy activities (e.g., heating/cooling), a phenomenon termed "range compression".

The proliferation of LLMs introduces a new dynamic. While these AI systems offer potential as decision aids by providing accessible information or personalized guidance, their outputs are not infallible; they can be inaccurate, biased, or prone to "hallucinations". A core requirement for effective and safe human-AI collaboration is achieving *calibrated trust*, where a user's reliance on the AI aligns with its actual reliability. Miscalibration poses significant risks: *over-reliance* can lead users to accept flawed energy advice uncritically, resulting in wasted resources, financial loss, and potentially undermining conservation efforts; *under-reliance*, conversely, means users fail to benefit from genuinely helpful AI capabilities.

The problem's scope is broad, encompassing not just the accuracy of LLMs but also users' perceptions of that accuracy, their underlying mental models of how LLMs function, individual differences in relevant literacies (numeracy, energy literacy, AI literacy), dispositional trust in AI, and ultimately, behavioral intentions or actual reliance. Real-world constraints, such as the variability in LLM performance across tasks and models, the complexity of household energy systems, and diverse user backgrounds, underscore the need for a nuanced investigation. The research thus requires a multi-faceted approach to measurement, capturing subjective beliefs, individual capacities, and behavioral indicators of reliance.

### Conceptual Framework

The conceptual framework integrating key principles is appropriately drawn from several intersecting fields:

1.  **Cognitive Psychology and Decision Making:** This domain informs the understanding of human limitations and biases in energy perception and judgment. Concepts like bounded rationality and cognitive heuristics explain why individuals struggle with energy decisions. The study investigates whether these pre-existing human biases influence perceptions of AI performance or are projected onto LLM evaluations (H1b).
2.  **Human-AI Interaction (HAI) and Trust Calibration:** This field provides the theoretical backbone for understanding how users interact with AI systems. Key concepts include trust in automation, the distinction between trust and distrust, and the critical goal of *calibrated trust* (appropriate reliance). Research on automation bias highlights the tendency for users to over-rely on automated systems, especially when their own knowledge is limited or cognitive load is high. The framework recognizes that trust is not monolithic but can be task-specific and influenced by dispositional tendencies.
3.  **Literacy and Individual Differences:** Differences in relevant knowledge and skills are hypothesized to influence individuals' ability to understand energy information, evaluate AI outputs, and form appropriate trust judgments. Numeracy is crucial for understanding quantitative energy data. Energy literacy, spanning cognitive knowledge, affective attitudes, and behavioral components, affects domain understanding and engagement. AI literacy, encompassing knowledge of AI capabilities and limitations, is expected to be critical for evaluating LLM reliability. The framework posits that these literacies predict both subjective beliefs and objective calibration (H2a, H2b, H2c).
4.  **Mental Models of LLMs:** A user's internal model of how an AI system works fundamentally shapes their expectations, trust, and interaction strategies. Understanding lay mental models, including attributional beliefs about the AI's capabilities and failure modes, is essential for predicting reliance behavior and designing effective interfaces. The framework suggests that more accurate or sophisticated mental models should lead to better-calibrated trust (H2c).

This integrated framework provides a robust foundation for investigating the complex interplay between human cognitive characteristics, domain-specific challenges, AI properties, and behavioral outcomes related to energy management advice from LLMs.

### Evaluation of the Current Survey Draft

Based on the provided materials, specifically the Justification Report and the Critical Appraisal, the current survey draft demonstrates a commendable effort to capture key constructs but exhibits several notable deficiencies in its construction for adequately answering all research questions.

*   **RQ1 (Lay Beliefs & Differentiated Trust):** The survey includes custom items for perceived accuracy, utility, and task-specific trust for both energy estimation and planning tasks. This addresses the distinction requested in RQ1. However, a significant weakness is that all measures of perceived accuracy and trust are subjective self-reports. While necessary, they do not provide a basis for objective calibration checks *within the survey* to assess how well these beliefs align with actual LLM accuracy or expert benchmarks. The wording of some items potentially conflates perceived accuracy and trust, which could inflate shared-method variance. The justification for custom items points to the absence of pre-established scales for perceived LLM capability in energy, necessitating rigorous pilot testing for psychometric validation.
*   **RQ2 (Predictive Role of Literacies):** The inclusion of sections measuring objective numeracy (Berlin Numeracy Test/CRT items), multidimensional energy literacy (ELQ adaptation), and AI literacy (MAILS-Short) is well-aligned with RQ2. Using validated or adapted validated instruments is a strength. However, the critical appraisal notes that the energy literacy section omits "action/financial" sub-facets that predict misperception asymmetries, potentially limiting the ability to fully test hypotheses related to domain knowledge and bias identification. The AI literacy scale is self-report only, risking potential Dunning-Kruger effects where individuals overestimate their understanding. Supplementing with objective AI knowledge questions is suggested.
*   **RQ3 (Influence on Willingness/Frequency):** The survey includes custom items for self-reported willingness to use LLMs for energy tasks and past frequency of use. These are appropriately linked to perceived accuracy, utility, and trust measures. A deficiency is that intention measures are single-item, which is suboptimal for reliability; best practice suggests multiple items or behavioral choice tasks. The reliance is measured as stated intention or past behavior, not observed behavior within the study. While scenario-based intentions provide a behavioral link, actual interaction would offer more direct measures.
*   **RQ4 (Mediation/Moderation by General Trust/Distrust):** The inclusion of a general Trust in AI scale (TPA adaptation) is appropriate for assessing dispositional trust and distrust. Measuring both trust and distrust separately is crucial. However, the critical appraisal notes the use of a 6-item short form of the TPA whose psychometric validation is questioned, potentially missing important facets like cognitive vs. affective trust. The semantic differential items are noted as potentially redundant with TPA cognitive items.

In summary, while the survey draft covers the essential constructs and attempts to link them to the research questions, it suffers from limitations related to the subjective nature of key measures (lack of objective calibration), potential omissions or reliance on unvalidated subsets within literacy and trust scales, and the sole reliance on self-report for behavioral intentions rather than observed actions.

### Evaluation of the Current Study Proposal

The study proposal presents a novel and logically structured investigation into a timely and relevant area: the intersection of LLMs, human cognition in a complex domain (energy), and the critical dynamics of human-AI trust and reliance.

**Novelty:** The application of well-established cognitive psychology findings (human energy biases) to predict perceptions of and reliance on LLMs is a key novel contribution. While research exists on human-AI interaction and LLMs, few studies specifically probe these dynamics within the context of household energy management, an area with significant societal implications for sustainability. Examining how individual differences in numeracy, energy literacy, and AI literacy interact with beliefs and calibration in this specific, quantitatively complex domain is also novel.

**Logical Structure:** The proposal follows a standard research structure, outlining the problem, reviewing relevant literature (implied through citations), posing research questions and hypotheses, and detailing proposed methods. The hypotheses logically build upon the theoretical framework, positing relationships between individual differences, mental models, perceptions, general trust, and reliance outcomes.

**Justification of Research Questions and Hypotheses:** The RQs and Hs are well-justified against the relevant literatures.

*   The focus on lay perceptions and differentiation across tasks (RQ1) is justified by the varying nature of LLM capabilities (fact retrieval vs. estimation vs. planning) and the need to understand task-specific trust.
*   RQ2's investigation of individual differences is strongly rooted in cognitive psychology and judgment and decision-making literature, which highlights the role of numeracy in evaluating quantitative information, domain-specific knowledge (energy literacy) in spotting errors, and AI literacy in understanding system limitations. These literacies are appropriately hypothesized to influence beliefs, mental models, and calibration (H2a, H2b, H2c).
*   RQ3 links perceptions and calibration to behavioral intentions/past use, consistent with models of technology acceptance and human-automation reliance literature. Higher perceived accuracy and trust are logically hypothesized to predict greater reliance (H3a).
*   RQ4, exploring the role of general trust/distrust, aligns with HAI literature that examines dispositional factors influencing interaction with automated systems (H4b). The hypothesis regarding expected miscalibration (H4a) is directly supported by recent empirical findings on LLM user calibration gaps.

**Issues in Justification and Structure:** While the overall justification is strong, some issues persist in the direct alignment of hypotheses with proposed measures, particularly regarding calibration. As noted in the evaluation of the survey draft and explicitly within the proposal's internal critiques, several hypotheses (H1b, H2a, H2b, H2c, H4a, H4c) involve "calibration" or the evaluation of "objective" aspects, yet the initial survey measures primarily relied on subjective self-reports. The revised proposal attempts to address this by including behavioral tasks and outlining how *perceptual calibration* will be assessed by comparing perceived accuracy patterns to known human biases and objective knowledge. However, the connection between the proposed measures and the *objective* calibration component mentioned in some hypotheses needs to be explicitly defined in the rewritten methods/analysis plan, acknowledging the limitations of a cross-sectional survey without live interaction for measuring true behavioral calibration (commission/omission errors against ground truth). The links between different facets of literacy and specific calibration outcomes (e.g., does numeracy specifically predict calibration on *numerical* energy estimates from LLMs?) could also be sharpened. The exploratory interaction hypothesis (H2d) and mediation exploration (H4c) are mentioned but could be more fully integrated into the theoretical narrative if they are central to the study's aims.

### Issues Related to Measuring Mental Models of LLMs

Measuring users' mental models of AI systems is crucial but inherently challenging. A mental model is a user's internal representation of how a system works, its capabilities, and its limitations, which guides their interaction and shapes trust. For LLMs, this includes understanding their probabilistic nature, training data limitations, potential for hallucination, sensitivity to prompt wording, and lack of genuine understanding or reasoning.

**Issues in the Initial Approach:** The initial proposal noted "lay beliefs" but relied on simple self-report items, which were deemed "weak" and insufficient for capturing the richness and complexity of users' mental models. Simple questions like "How much do you understand how ChatGPT works?" provide only a superficial self-assessment and are susceptible to biases like the Dunning-Kruger effect. They do not reveal *what* the user thinks about the AI's internal workings, its data sources, its reasoning processes (or lack thereof), or its specific failure modes.

**Improvements in the Revised Approach:** The revised proposal significantly improves the measurement of mental models by incorporating a multi-faceted approach. This includes:
1.  **Open-ended questions:** Asking participants to describe how they think the AI works allows for qualitative analysis of their conceptual models, identifying key beliefs, analogies (e.g., is it perceived as a search engine, a person, a calculator?), and perceived mechanisms. This provides rich, unconstrained data on their internal representations.
2.  **Specific Belief Statements (Likert items):** Including Likert-scale items probing specific beliefs about the AI's properties (e.g., accuracy, human-likeness, reliability, potential for error) complements the open-ended responses. Items specifically targeting awareness of LLM limitations (e.g., hallucination risk, data cutoffs) are crucial for understanding critical AI literacy aspects that inform mental models. Items probing *why* participants hold certain beliefs (e.g., attributing accuracy to vast data access) get closer to the underlying attributional beliefs that form part of the mental model.
3.  **Objective Knowledge Items:** While not explicitly listed under "Mental Models" measurement in all sources, objective questions about LLM fallibility (e.g., risks of hallucination) mentioned under AI literacy improvements also contribute to assessing the accuracy of the mental model regarding limitations.

This multi-method approach is crucial because mental models are complex and cannot be fully captured by a single item or method. Combining qualitative insights from open-ended questions with quantitative data from specific belief items provides a more robust assessment of lay understanding, allowing researchers to correlate the sophistication and accuracy of these models with trust behaviors and calibration outcomes.

### Suggestions for Improving Beliefs about LLM Accuracy Questions and Measuring Trust Miscalibration

Drawing on the critical appraisal and suggested refinements, here are specific suggestions:

**Improving "Beliefs about LLM Accuracy for Energy Tasks" Questions:**

To better align with the hypothesis (H1b) that perceptions of LLM accuracy might mirror human biases and capture the nuances of energy tasks, the current general items should be made more specific.

1.  **Specificity to Biased Tasks:** Instead of a single item about appliance use or savings, create a list of items that mirror the structure of the Attari et al. (2010) or Marghetis et al. (2019) tasks. For each, ask about perceived LLM accuracy:
    *   *Perceived accuracy for estimating the energy use of specific appliances:* Include both high-consumption items (e.g., refrigerator, HVAC) and low-consumption items (e.g., LED light bulb, phone charger).
    *   *Perceived accuracy for estimating savings from specific actions:* Include high-impact actions (e.g., adding insulation, sealing air leaks) and low-impact actions (e.g., turning off lights, unplugging electronics).
    *   Use consistent Likert scales (e.g., 7-point) ranging from "Very Inaccurate" to "Very Accurate" for all items.
2.  **Include Bias-Reflection Items:** Add items that directly probe whether users believe LLMs share common human biases in energy judgment:
    *   "How likely do you think a current LLM is to underestimate the amount of energy used by heating/cooling systems compared to lighting?" (Reflects range compression)
    *   "How likely do you think a current LLM is to overestimate the energy savings from turning off a single light bulb?" (Reflects overestimation of low impact)
3.  **Differentiate LLM Functions:** Ensure items clearly distinguish between perceived accuracy for factual recall (e.g., "LLMs are accurate at stating basic energy facts"), quantitative estimation ("LLMs are accurate at estimating numerical values like kWh use"), and complex output generation ("LLMs are accurate at generating effective, personalized energy-saving plans").
4.  **Probe Understanding of Limitations:** Include reverse-coded items assessing awareness of LLM fallibility in this domain, such as "LLMs might sometimes generate energy facts or numbers that sound correct but are completely made up (hallucinations)".

**Measuring Trust Miscalibration:**

Directly measuring *behavioral* miscalibration (over/under-reliance relative to ground truth) in a cross-sectional survey without actual interaction is challenging. However, the proposal can assess *perceptual* calibration and related constructs.

1.  **Perceptual Calibration vs. Human Bias:** This is the primary method proposed for H1. Calculate a "perceptual bias pattern" for perceived LLM accuracy across the list of appliances/actions. Compare this pattern to the "human bias pattern" observed in the participants' own estimates on the Attari task (if included) or documented in prior literature. A strong positive correlation between the patterns would indicate that users perceive LLM accuracy in a way that mirrors human biases, suggesting their perceptions are calibrated more to human judgment errors than objective reality.
2.  **Perceived Accuracy vs. Objective Knowledge/Benchmarks:** Compare perceived accuracy ratings for specific tasks (e.g., estimating refrigerator use) against objective benchmarks (e.g., typical energy use figures) or expert ratings of LLM performance on those queries (if available externally). Large discrepancies indicate collective miscalibration. Examine whether individuals with higher objective energy literacy or AI literacy have perceived accuracy ratings that are closer to these benchmarks or show less mirroring of human biases (testing H2b, H2c aspects).
3.  **Perceived Accuracy vs. Self-Assessed Confidence:** If a behavioral task is included where users evaluate LLM outputs and provide confidence ratings, calibration can be measured as the alignment between confidence and accuracy. For a survey-only design, this could be adapted by presenting hypothetical LLM outputs and asking users to rate their confidence in the output's correctness, then comparing this confidence to the known correctness of the hypothetical output or their own objective knowledge.
4.  **General vs. Task-Specific Trust:** Compare scores on general AI trust scales (TPA) to task-specific trust ratings for energy tasks. While not a direct calibration measure against accuracy, large discrepancies could indicate miscalibration in the sense that general disposition is overriding task-specific evaluation.

For the current survey design, leveraging the relationship between the pattern of human energy biases and the pattern of perceived LLM accuracy is the most feasible and theoretically grounded approach to assessing perceived calibration (H1b) and its links to literacies (H2).

### Rewritten Sections

Based on the critical evaluation and proposed refinements, here are the rewritten sections as requested.

**1) Proposal Theoretical Framework (Rewritten)**

*(Based on Source and incorporating elements from other sources)*

This research investigates lay perceptions of Large Language Models (LLMs) as potential external cognitive aids for household energy management, integrating insights from four core theoretical domains: the cognitive science of energy decision-making, human-AI interaction (HAI) focusing on trust and calibration, the role of individual literacies, and the conceptualization of LLM mental models.

The domain of household energy management is characterized by significant cognitive challenges. Decisions regarding energy consumption and conservation are influenced by inherent task complexity, invisible energy flows, and pervasive cognitive biases, including systematic misestimations of energy use and savings (e.g., range compression) (Attari et al., 2010; Marghetis et al., 2019). These flawed mental models of energy systems contribute to suboptimal decision-making (Attari et al., 2010). LLMs are increasingly accessible tools capable of providing information and generating personalized advice, potentially mitigating some of these human limitations.

However, the deployment of LLMs introduces critical considerations from human-AI interaction theory. A central concern is achieving *calibrated trust*, defined as the alignment between a user's trust in an automated system and its actual reliability (Lee & See, 2004). Miscalibration can manifest as over-reliance (trusting an inaccurate system) or under-reliance (distrusting a reliable system), both detrimental outcomes, particularly in contexts like energy management where errors can have tangible consequences (Buçinca et al., 2021). Recent research highlights a pervasive "calibration gap" with LLMs, where users tend to overestimate AI accuracy (Steyvers et al., 2025). Understanding the factors that contribute to appropriate reliance is therefore paramount.

Individual differences play a significant role in shaping interactions with novel technologies and complex information. Objective numeracy influences the ability to process and evaluate quantitative data, crucial for assessing energy estimates (Peters et al., 2022; Cokely et al., 2012). Energy literacy, encompassing cognitive knowledge, affective attitudes, and behavioral components, provides the domain-specific understanding necessary to critically evaluate energy advice (DeWaters & Powers, 2011; van den Broek et al., 2019). AI literacy, particularly awareness of AI capabilities, limitations, and critical evaluation skills, is hypothesized to enable users to form more nuanced beliefs about LLMs and avoid uncritical acceptance (Long & Magerko, 2020; Koch et al., 2024). These literacies are expected to predict both subjective beliefs about LLMs and objective trust calibration.

Furthermore, users' internal *mental models* of LLMs—their beliefs about how these systems work, their underlying mechanisms, data sources, and potential failure modes (e.g., hallucination)—profoundly influence their expectations and trust behaviors (Liao & Sundar, 2022). Lay mental models of AI are often incomplete or inaccurate, potentially leading to inappropriate trust or distrust. Understanding these mental models, alongside individual differences and task characteristics, is essential for a comprehensive account of user perceptions, calibration, and reliance intentions regarding LLMs for energy tasks. This study integrates these theoretical perspectives to investigate how human cognitive characteristics, pre-existing biases, individual literacies, and mental models interact to shape subjective perceptions, objective reliance calibration, and behavioral intentions concerning LLM-generated energy advice..

**2) Proposal Research Questions and Hypotheses (Rewritten)**

*(Based on Source and incorporating elements from other sources)*

Building on the integrated theoretical framework, this study addresses four primary research questions (RQs) and associated directional hypotheses (Hs), focusing on lay perceptions, calibration, and reliance on LLMs for household energy management tasks.

*   **RQ1: What are lay individuals' baseline perceptions of current LLMs' accuracy and utility for specific household energy tasks (e.g., estimating appliance consumption, designing conservation plans), and how do these perceptions reflect known human cognitive biases in energy judgments?**
    *   **H1a (Human Bias Replication):** Consistent with prior research, participants' own estimates of appliance energy use and savings effectiveness will exhibit systematic cognitive biases, particularly range compression (underestimating high consumption/savings, overestimating low consumption/savings) (Attari et al., 2010).
    *   **H1b (Bias Projection):** Lay individuals' *pattern* of perceived LLM accuracy across energy estimation tasks (appliances, actions) will be positively correlated with the *pattern* of their *own* energy estimation biases or the documented pattern of human biases (Attari et al., 2010). This indicates users may project existing cognitive biases onto their evaluation of AI capabilities, influencing their perceptual calibration.
    *   **H1c (Baseline Perceptions):** On average, lay participants will perceive current LLMs as moderately to highly accurate and useful for household energy management tasks. Perceived accuracy, utility, and trust will differ depending on the task type (factual recall vs. quantitative estimation vs. complex planning), reflecting nuanced beliefs about LLM capabilities for different functions.
*   **RQ2: To what extent do individual differences in objective numeracy, multidimensional energy literacy (cognitive, affective, behavioral, action, financial), and AI literacy (objective knowledge, self-reported facets) predict: (a) lay beliefs about LLM accuracy and utility for energy tasks, (b) the accuracy and sophistication of users' mental models of LLMs, and (c) objective trust calibration scores when evaluating LLM outputs in the energy domain?**
    *   **H2a (Numeracy):** Higher objective numeracy will be associated with (a) more nuanced subjective beliefs about LLM quantitative accuracy and (c) better objective calibration scores when evaluating numerical LLM outputs (e.g., scenario-based judgments), reflecting an enhanced ability for quantitative plausibility checks (Peters et al., 2022).
    *   **H2b (Energy Literacy):** Higher cognitive and action energy literacy will be associated with (a) more critical or skeptical beliefs about LLM accuracy, particularly for tasks susceptible to human bias or involving complex planning, as domain knowledge facilitates error spotting (DeWaters & Powers, 2011). Higher financial energy literacy will specifically predict better evaluation of LLM outputs related to costs and savings (van den Broek et al., 2019). These effects are expected to contribute to (c) better objective trust calibration for energy-related outputs (H4c).
    *   **H2c (AI Literacy):** Higher objective AI literacy (knowledge of LLM limitations, e.g., hallucination risk) and higher self-reported AI literacy facets related to critical evaluation (e.g., MAILS Detect AI) will be associated with (a) more cautious or nuanced beliefs about LLM capabilities, (b) more accurate or mechanistic mental models of LLM functioning, and (c) better objective trust calibration scores. Conversely, higher self-reported AI literacy facets related to Use & Apply AI might correlate positively with perceived utility and frequency of use, potentially independent of calibration (Tully et al., 2023).
    *   **H2d (Literacy Interactions - Exploratory):** We will explore potential interactions between energy literacy and AI literacy in predicting beliefs, mental models, and calibration, hypothesizing that lacking both types of literacy may represent a significant risk factor for miscalibrated trust and susceptibility to erroneous AI outputs.
*   **RQ3: How do task-specific perceptions of LLM accuracy and trust, alongside objective trust calibration, jointly influence lay individuals' stated behavioral intentions to rely on (accept, verify, reject) LLM advice in concrete energy-related decision scenarios, and their self-reported frequency of using LLMs for such tasks?**
    *   **H3a:** Higher task-specific perceived LLM accuracy, higher task-specific trust, and better objective trust calibration (lower miscalibration) will independently predict a greater stated willingness to rely on (i.e., accept without verification) LLM advice in energy-related decision scenarios (Buçinca et al., 2021).
    *   **H3b:** Higher self-reported frequency of past LLM use for energy tasks will be positively associated with higher task-specific perceived accuracy, utility, and trust, reflecting a potential influence of experience on perceptions and reliance.
*   **RQ4: How does dispositional trust and distrust in AI mediate or moderate the relationships between task-specific perceptions/objective calibration and scenario-based reliance intentions/past usage frequency?**
    *   **H4a (Miscalibration Evidence):** We expect to find empirical evidence of significant trust miscalibration (Steyvers et al., 2025). Specifically, over-trust (placing more confidence/reliance in LLM outputs than warranted by their actual accuracy) is hypothesized to be more prevalent than under-trust among the general population in the energy domain.
    *   **H4b (Dispositional Moderation):** Dispositional Trust in AI (measured by validated scales like TPA Trust or Semantic Differential cognitive trust) is hypothesized to positively moderate the relationship between favorable task-specific perceptions/calibration and reliance intention/frequency. Dispositional Distrust in AI (measured by validated scales like TPA Distrust or Semantic Differential distrust) is hypothesized to negatively moderate this relationship.
    *   **H4c (Mediation Exploration):** We will explore potential mediation effects, such as whether specific favorable perceptions of LLM capabilities for energy tasks lead to increased general dispositional trust in AI, which in turn predicts greater willingness or frequency of use. We will also investigate if trust calibration mediates the relationship between individual differences (numeracy, literacies) and reliance outcomes.

**3) Measuring User Mental Models of LLMs (Rewritten)**

*(Synthesizing recommendations from Sources based on identified issues)*

Accurately assessing users' mental models of LLMs is paramount for understanding the cognitive underpinnings of their trust and reliance behaviors. A mental model represents a user's internal conceptualization of a system's structure, function, and underlying mechanisms (Liao & Sundar, 2022). For LLMs, this includes beliefs about how they generate text (e.g., statistical patterns vs. true understanding), their data sources (e.g., limited training data vs. real-time internet access), their specific capabilities (e.g., factual recall, reasoning, estimation), and their failure modes (e.g., hallucination, bias, data cutoffs, sensitivity to phrasing). Simply asking users how much they understand or trust the system is insufficient, as it provides only a superficial self-assessment that may not reflect their actual conceptualization or potential misunderstandings (Liao & Sundar, 2022).

To address the limitations of previous approaches and capture a richer understanding of lay mental models, this study employs a multi-method measurement strategy:

1.  **Qualitative Elicitation (Open-Ended):** Participants will be asked to describe, in their own words, how they think current LLMs (specifically mentioning models like ChatGPT, Gemini, etc.) work. This open-ended format allows for the elicitation of spontaneous beliefs, analogies, and perceived mechanisms, providing insights into the user's underlying conceptual model without imposing predefined categories. Qualitative coding of these responses will identify common themes, levels of sophistication, and potential inaccuracies in lay understanding. This approach is justified as cognitive science research demonstrates that eliciting explanations reveals deeper cognitive structures than simple ratings (Liao & Sundar, 2022).
2.  **Specific Belief Statements (Quantitative Scales):** A series of Likert-scale items will probe specific dimensions of users' beliefs about LLMs relevant to their function and potential limitations, particularly in the energy domain. These items move beyond general trust to assess granular beliefs that constitute the mental model:
    *   **Perceived Capabilities:** Items assessing beliefs about LLMs' abilities for factual accuracy, quantitative estimation, complex problem-solving, and personalized advice generation (e.g., "LLMs can accurately estimate appliance energy use," "LLMs are good at creating personalized energy plans").
    *   **Attributional Beliefs:** Items probing beliefs about *why* LLMs are perceived to perform as they do (e.g., "LLM energy estimates are accurate because they access vast real-time data," "LLMs can understand my specific home situation"). These items tap into users' understanding of the AI's underlying operational model.
    *   **Beliefs about Limitations/Failure Modes:** Items assessing awareness of common LLM failure modes (e.g., "LLMs might sometimes make up information about energy that is incorrect," "LLMs may not understand the latest energy efficiency standards"). This is particularly relevant to AI literacy's critical evaluation facet (Koch et al., 2024).
    *   **Human-likeness/Reasoning:** Items assessing beliefs about the AI's perceived sentience, reasoning ability, or capacity for empathy (e.g., "LLMs can genuinely understand my energy concerns," "LLMs think and reason like a person"). These beliefs can influence affective trust and reliance.
3.  **Objective Knowledge Assessment:** While primarily part of AI literacy, objective questions assessing knowledge about fundamental LLM properties and limitations (e.g., "True/False: Current LLMs have access to the internet in real-time unless specifically enabled," "Which is a common issue with LLMs? a) Halitosis, b) Hallucination, c) Hibernation") contribute to measuring the accuracy of the mental model regarding technical constraints.

This combination of qualitative and quantitative data allows for triangulation, providing a more comprehensive and valid measure of users' mental models of LLMs. By correlating features of these mental models (e.g., level of sophistication, accuracy regarding limitations, specific attributional beliefs) with trust behaviors and calibration scores, the study can investigate how users' understanding (or misunderstanding) of the AI influences their interaction outcomes (H2b, H2c).

**4) Background and Rationale / Rationale and Implications**

The provided source material does not contain distinct sections explicitly titled "Background and Rationale" or "Rationale and Implications" that are marked for rewriting in their entirety. However, the "Introduction" and "Proposal Theoretical Framework (Rewritten)", combined with the discussion of limitations and future work, cover the essential elements typically found in such sections.

The **Background and Rationale** is primarily established by highlighting the growing use of LLMs, the importance and difficulty of household energy management, the documented human cognitive biases in this domain, and the resulting potential for both benefit (LLMs as aids) and risk (miscalibrated trust, over-reliance on flawed outputs). This juxtaposition of LLM capabilities with known human limitations and the critical need for appropriate reliance in a high-stakes (for sustainability and personal finance) domain forms the core justification for the research.

The **Rationale and Implications** are implicitly addressed through the discussion of the study's aims (addressing gaps in HAI and energy domain understanding) and future research directions (behavioral experiments, qualitative methods, interventions). The implications stem from the potential findings regarding predictors of miscalibration and inappropriate reliance. Understanding these factors can inform the design of LLMs and interfaces to promote better user calibration, such as explicitly communicating uncertainty or providing explanations that align with a better mental model (Kim et al., 2024; Steyvers et al., 2025). The research aims to provide empirically-grounded insights for developing trusted and effective AI tools for energy decision support, ultimately contributing to better energy management and sustainability efforts.

### Scenario-Based LLM Beliefs Questions

Scenario-based questions can provide a more concrete context for users to evaluate their beliefs about LLMs compared to abstract questions. They can also serve as proxy behavioral tasks for assessing reliance intentions. These questions can present hypothetical energy scenarios and ask participants to evaluate an LLM's response or decide how they would use it.

Here are some examples, designed to probe beliefs related to accuracy, utility, and potential biases, framed within energy tasks:

**Scenario 1 (Appliance Estimation):**
"Imagine you want to find out how much electricity your old refrigerator uses. You ask an LLM, and it gives you a specific number, say 'Your refrigerator likely uses about 1200 kWh per year.' Given what you know about LLMs, how likely do you think that specific number is to be highly accurate for your actual refrigerator?"
*(Scale: Very Unlikely to be Accurate - Very Likely to be Accurate)*
*Follow-up Belief Question:* "When an LLM provides a specific number like this for energy use, how confident are you that it has factored in details like the appliance's age, size, or efficiency rating?"
*(Scale: Not at all Confident - Very Confident)*
*Follow-up Reliance Question:* "Based on this LLM response, would you: (a) accept this number and use it in a budget, (b) try to verify the number using another source (e.g., energy sticker, online calculator), or (c) ignore the number as unreliable?"

**Scenario 2 (Savings Estimation - Low Impact):**
"You're concerned about phantom load (energy used by electronics when off) and ask an LLM 'How much money will I save per year if I unplug all my electronics when not in use?' The LLM replies, 'You could save around $100 per year by doing this.' Given this response, how accurate do you think this estimated annual saving is likely to be for a typical household?"
*(Scale: Very Inaccurate - Very Accurate)*
*Probe for Bias Awareness:* "Do you think LLMs tend to overestimate or underestimate the savings from small actions like unplugging electronics?"
*(Scale: Greatly Underestimate - Greatly Overestimate)*

**Scenario 3 (Savings Estimation - High Impact):**
"You are considering adding insulation to your attic and ask an LLM 'How much energy will I save if I add R-30 insulation to my attic?' The LLM replies with an estimate, say 'Adding R-30 insulation could reduce your heating and cooling energy use by 20-30%.' Given this response, how accurate do you think this estimated percentage saving is likely to be?"
*(Scale: Very Inaccurate - Very Accurate)*
*Probe for Bias Awareness:* "Do you think LLMs tend to overestimate or underestimate the savings from large home upgrades like adding insulation?"
*(Scale: Greatly Underestimate - Greatly Overestimate)*

**Scenario 4 (Personalized Plan Generation):**
"You tell an LLM about your home (size, location, main heating source) and ask for a personalized plan to reduce your energy bill. The LLM generates a detailed list of recommended actions tailored to your home. How useful do you think this personalized plan is likely to be for actually reducing your energy consumption?"
*(Scale: Not at all Useful - Extremely Useful)*
*Probe for Trust/Reliability:* "How much would you trust that the *specific recommendations* in this personalized plan are the most effective actions for *your* home?"
*(Scale: Not at all - Very Much)*

These scenarios allow for probing perceived accuracy and utility within specific, relatable contexts, including those known to elicit human cognitive biases in energy judgment. By presenting items covering both high and low impact/consumption scenarios, one can assess whether the pattern of perceived LLM accuracy mirrors human estimation biases (H1b). Including reliance decision points (e.g., accept vs. verify) provides a behavioral indicator of trust and calibration (H3a).





-----------

# https://aistudio.google.com/prompts/1SB3RyCohLquvwUEcYzkjwzfVgyYIIUXG

Okay, let's evaluate the current survey draft (`gemDR_Proposal and Survey Refinement.md`) and proposal based on the criteria outlined in `draft10_prpsl.md` and best practices from the provided literature.

## 1. Evaluation of the Current Survey Draft (`gemDR` version)

The survey instrument outlined in `gemDR_Proposal and Survey Refinement.md` represents a significant improvement and directly addresses many weaknesses identified in the initial evaluation (`draft10_prpsl.md`).

**Alignment with Research Questions (RQs):**

*   **RQ1 (Lay Beliefs & Calibration vs. Human Bias):**
    *   **Strengths:** Includes custom items for perceived accuracy/utility across different energy tasks (estimation, planning) (Sec 3.1). Crucially, it *reintroduces* the Attari Appliance Estimation Task (Sec 1.2.2), allowing direct measurement of participants' own biases (H1a). It adds an Objective Calibration Task (Part 2) using pre-generated LLM answers, enabling assessment of confidence-accuracy alignment regarding LLM outputs (H1 implied calibration aspect).
    *   **Weaknesses:** The perceived LLM accuracy items (Sec 3.1) are still general Likert ratings. While scenario-based questions are suggested later in the prompt, the core survey draft relies on these general perceptions. Comparing these general perceptions to *individual* Attari bias (H1b) is possible but indirect. The Objective Calibration Task provides a better measure for calibration but is limited to 3 items.
*   **RQ2 (Predictors: Literacies & Mental Models):**
    *   **Strengths:** Measures objective numeracy (BNT, Sec 1.1). Expands Energy Literacy (Sec 1.2) to include cognitive knowledge, action effectiveness (implicit in 1.2.1.7), financial literacy (lifetime cost in 1.2.1.8), and the Attari task itself relates to cognitive perception. Expands AI Literacy (Sec 1.3) to include *objective* LLM knowledge items (1.3.2) alongside the subjective MAILS-Short (1.3.1). Expands Mental Model measurement (Sec 3.3) with Attributional Belief items probing mechanisms (data access, hallucination, personalization, reasoning).
    *   **Weaknesses:** The open-ended mental model prompt mentioned in the proposal text wasn't explicitly included in the survey items section of `gemDR`, though it's discussed in the analysis plan. Affective/Behavioral EL dimensions from the proposal text are less represented in the final `gemDR` survey items compared to cognitive/action/financial.
*   **RQ3 (Beliefs/Calibration → Reliance):**
    *   **Strengths:** Measures task-specific trust (Sec 3.2). Includes willingness/intention items (Sec 5.2). Adds a Scenario-Based Reliance Choice task (Sec 5.1), providing a more concrete behavioral intention measure than Likert scales alone. Connects reliance to calibration via RQ wording.
    *   **Weaknesses:** Scenario choice is still hypothetical, though an improvement.
*   **RQ4 (Role of General Trust/Distrust):**
    *   **Strengths:** Measures dispositional Trust and Distrust using TPA-Revised factors (Sec 4.1), aligning with recent psychometric recommendations (Scharowski et al., 2025). Drops the potentially redundant Semantic Differential scale for streamlining.
    *   **Weaknesses:** None apparent regarding RQ alignment.

**Overall Construction:**

*   **Strengths:** Incorporates objective/behavioral tasks (Attari, Calibration, Scenario Choice). Uses validated scales where appropriate (BNT, MAILS-Short, TPA-Revised). Expands key constructs (EL, AIL, Mental Models). Includes attention check (Sec 4.1.12) and considers counterbalancing. Logical flow seems reasonable.
*   **Weaknesses:** Survey length is now substantial; participant fatigue is a risk. Custom items (Perceived Accuracy/Utility, Task-Specific Trust, Attributional Beliefs, Objective LLM Knowledge, Calibration Task stimuli) require pilot testing for clarity, reliability, and validity. The realism of the Objective Calibration Task stimuli needs careful crafting.

## 2. Evaluation of the Study Proposal (`gemDR` version)

**Novelty:**

*   The novelty remains strong: investigating the interplay of domain-specific energy biases with perceptions/calibration of general-purpose LLMs.
*   The refined proposal now more sharply articulates the contribution regarding the *transfer or interaction* of energy biases with LLM evaluation and the mediating role of *multiple literacies* and *mental models* in shaping *trust calibration*.

**Logical Structure & Justification:**

*   **Strengths:** The structure (Intro -> Theory -> RQs/Hs -> Methods -> ...) is clear and logical. The theoretical framework is significantly deepened, explicitly linking literacies to evaluation mechanisms (error spotting, plausibility checks, limitation awareness) and integrating concepts like the calibration gap, mental models, and recent trust literature (Scharowski et al., 2025; Steyvers et al., 2025). RQs and Hypotheses are more specific and directly tied to the enhanced measurement plan (e.g., H1b links Attari bias to perceived LLM accuracy; H2a/H3/H4 explicitly mention calibration).
*   **Weaknesses:** The theoretical framework is dense and could benefit from clearer synthesis in places, perhaps using a visual model. While mechanisms are mentioned, the *precise* pathway (e.g., how exactly does cognitive EL lead to lower perceived accuracy vs. better calibration?) could be further elaborated in the hypothesis justifications if space allowed.

**Literature Grounding:**

*   **Strengths:** Draws effectively on foundational energy perception literature (Attari, Kantenbacher, Marghetis), numeracy (Cokely), energy literacy (DeWaters, Van Den Broek), AI literacy (Carolus, Long/Magerko), trust/calibration (Lee & See, Buçinca, Scharowski, Steyvers), and mental models (Chen). The reference list is extensive and relevant. It incorporates recent findings (post-2023) effectively.
*   **Weaknesses:** Explicit discussion of *uncertainty communication* effects (Kim et al., 2024) seems less prominent in the final theoretical framing compared to the calibration gap, though related.

**Measurement of Mental Models:**

*   **Strengths:** The proposal now advocates and includes a multi-method approach: Attributional Belief scale items (probing assumptions about data access, error, personalization, reasoning) and Objective LLM Knowledge items (checking factual understanding of limitations). The *Rationale* section justifies this approach by emphasizing the need to understand underlying beliefs beyond simple outcome ratings. This directly addresses the earlier weakness.
*   **Weaknesses:** The open-ended prompt discussed in the analysis plan wasn't included in the survey items list itself – this qualitative element would be valuable for richer insights and should ideally be included. The link between the measured attributional beliefs and specific trust/reliance *behaviors* (H3) could be hypothesized more explicitly (e.g., "Belief in real-time data access will predict higher reliance").

## 3. Suggested Scale Adjustments/Removals/Alternatives

Based on the evaluation, the `gemDR` draft already incorporates many necessary changes. Key points:

*   **Keep:** BNT (Numeracy), ELQ Cognitive + Action/Financial items (Energy Literacy), Attari Task, MAILS-Short + Objective LLM Knowledge (AI Literacy), TPA-Revised (General Trust/Distrust), Custom Task-Specific Trust/Belief items (pending piloting), Scenario-Choice Task, Objective Calibration Task.
*   **Remove/Alternative:** The Semantic Differential scale was appropriately dropped for brevity. Consider adding the *open-ended mental model prompt* back into the survey flow.
*   **Adjust:**
    *   **Pilot Custom Items:** *Crucially*, pilot test all custom scales (Perceived Accuracy/Utility, Task-Specific Trust, Attributional Beliefs, Objective LLM Knowledge items, Calibration Task stimuli). Refine wording based on pilot feedback.
    *   **Objective Calibration Task:** Ensure the 3 stimuli cover a range of energy topics (e.g., quantitative estimate, conceptual fact, planning advice) and that the "correctness" is unambiguous. Consider adding 1-2 more items if length permits to improve reliability of calibration score.
    *   **Energy Literacy:** Double-check that the selected cognitive/action/financial items comprehensively cover the aspects needed for evaluating LLM outputs in this domain.
    *   **Attention Check:** Ensure the attention check is robust and appropriately placed.

## 4. Improving Beliefs about LLM Accuracy Questions & Measuring Trust Miscalibration

**Improving Beliefs Questions (Section 3.1 in `gemDR`):**

*   **Add Specificity/Scenarios:** While the current items differentiate task *types* (factual, estimation low/high impact, planning), they are still general ratings. To make them more grounded:
    *   **Link to Attari Items:** Ask about perceived LLM accuracy for *the specific appliances* used in the Attari task (Sec 1.2.2). E.g., "How accurate do you believe an LLM would be at estimating the hourly energy use of a **refrigerator** (averaged)?". This allows direct comparison for H1b.
    *   **Short Vignettes:** Introduce mini-scenarios before some ratings. E.g., "Imagine an LLM estimated that switching 5 incandescent bulbs to LEDs saves 80% energy. How accurate do you perceive this LLM estimate to be?" (Scale).
*   **Probe Reasoning/Attributions:** Add 1-2 items probing *why* they rate accuracy as they do, linking to mental models. E.g., "I believe LLMs are accurate at energy estimation because they can access vast amounts of real-world data." (Agree/Disagree).
*   **Distinguish Accuracy Dimensions:** Separate *factual correctness* (e.g., definitions, standards) from *quantitative precision* (e.g., kWh estimates) and *plan effectiveness* (e.g., realistic, impactful advice). The current items do this to some extent, but labels could be clearer.

**Measuring Trust Miscalibration:**

The `gemDR` proposal correctly identifies the need for objective calibration measurement and includes the **Objective Calibration Task (Part 2)**. This is the primary way to measure miscalibration behaviorally.

*   **Operationalization:**
    1.  **Accuracy Score:** Calculate each participant's accuracy on the 3 calibration task judgments (proportion correct).
    2.  **Confidence Score:** Calculate each participant's average confidence rating across the 3 items.
    3.  **Calibration Index (e.g., Brier Score):** Calculate the Brier score for each judgment: `BS = (Confidence - Outcome)^2`, where Confidence is scaled 0-1 and Outcome is 1 if correct, 0 if incorrect. Average BS across items (lower = better calibration).
    4.  **Over/Underconfidence Index:** Calculate `Mean Confidence - Mean Accuracy`. Positive values indicate overconfidence, negative indicate underconfidence.
    5.  **Discrimination:** Compare average confidence on items the participant got *correct* versus items they got *incorrect*. A well-calibrated user should be more confident when correct.
*   **Linking to Hypotheses:** These calibration indices (Brier score, Over/Underconfidence) become the dependent variables for H2a, H2b, H2c (predicting calibration from literacies) and predictor variables for H3 (predicting reliance from calibration). H4a (evidence of miscalibration) is tested by examining the distribution of these indices in the sample (e.g., is the mean over/underconfidence score significantly different from zero?).
*   **Indirect/Perceptual Miscalibration (H1b):** Measure the correlation between a participant's *own* Attari task bias score (e.g., slope of log(perceived) vs log(actual)) and their *perceived* LLM accuracy ratings for those same appliances (from the improved Sec 3.1 items). A positive correlation supports the bias projection hypothesis.

## 5. Rewritten Proposal Sections

*(Integrating improvements based on the To-Do list and evaluation)*

---

### **1) Proposal Theoretical Framework (Rewritten)**

This research investigates lay perceptions and reliance on Large Language Models (LLMs) within the critical domain of household energy management. It integrates cognitive science perspectives on **energy decision-making**, characterized by **bounded rationality** and systematic **cognitive biases** (Attari et al., 2010; Kantenbacher & Attari, 2021), with **human-AI interaction (HAI)** theories focused on **trust calibration**, **mental models**, and the role of **individual literacies**.

Decades of research establish that lay understanding of energy consumption is often flawed, with individuals relying on heuristics that lead to misperceptions like range compression (underestimating high-impact uses/savings, overestimating low-impact ones) (Attari et al., 2010; Marghetis et al., 2019). LLMs present a potential **external cognitive aid** (Steyvers & Kumar, 2024, ref from lit list) to overcome these limitations by providing information or generating plans. However, LLMs themselves introduce **epistemic uncertainty** due to potential inaccuracies, biases, and "hallucinations," often masked by fluent output (Kim et al., 2024). A key theoretical question is how users navigate this **dual-bias environment**: do they project their own energy biases onto LLM evaluations, or can they leverage LLMs effectively?

We posit that users' ability to appropriately evaluate and rely on LLMs is modulated by three key **literacies**, acting as cognitive filters and enablers of **epistemic vigilance**:
1.  **Energy Literacy:** This multidimensional construct (Van Den Broek, 2019) provides the domain-specific knowledge base. **Cognitive energy literacy** (factual knowledge) enables spotting substantive errors in LLM outputs (Mechanism: *Error Detection*). **Action energy literacy** (knowing effective behaviors) helps evaluate plan utility (Mechanism: *Utility Assessment*). **Financial energy literacy** (understanding costs/payback) is crucial for assessing economic implications (Mechanism: *Financial Plausibility*) (Blasch et al., 2019).
2.  **AI Literacy:** Competencies in understanding AI principles, capabilities, and *limitations* (e.g., data cutoffs, hallucination risk, lack of real-world grounding) are vital (Carolus et al., 2023; Long & Magerko, 2020). Higher AI literacy, particularly objective knowledge and critical evaluation facets ('Detect AI,' 'AI Ethics'), should foster more cautious and calibrated assessments (Mechanism: *Awareness of Failure Modes*). However, the effect might be complex, as high usage skills could correlate with higher trust, potentially creating an "AI Literacy Trap" (Rheu & Cho, 2025).
3.  **Objective Numeracy:** The ability to understand and manipulate quantitative information (Cokely et al., 2012) is fundamental for evaluating numerical LLM outputs (kWh, costs, savings percentages) and interpreting uncertainty (Mechanism: *Quantitative Plausibility Checking*).

Effective human-AI collaboration hinges on **calibrated trust**, where reliance matches the AI's actual task-specific capabilities (Lee & See, 2004). Users develop **mental models** of AI systems—internal representations of how they work, their capabilities, and limitations (Chen et al., 2025). These models, often inaccurate or incomplete (Liao & Sundar, 2022), shape expectations and reliance strategies. The documented **"calibration gap"** between LLM internal confidence and human perception (Steyvers et al., 2025; Yin, 2025) underscores the difficulty users face in accurately assessing LLM reliability. We measure perceived accuracy/utility and task-specific trust as proxies for the operational mental model, augmented by probes of attributional beliefs and objective LLM knowledge.

Finally, **dispositional trust and distrust** in AI (Scharowski et al., 2025; Scholz et al., 2025) may act as priors or moderate how specific performance evidence (or lack thereof) influences reliance decisions (H4). This framework allows us to examine the interplay of domain biases, individual cognitive resources, system understanding, and trust dispositions in shaping human interaction with LLMs for energy management.

---

### **2) Proposal Research Questions and Hypotheses (Rewritten)**

This study addresses the following research questions (RQs) and hypotheses (Hs), refined based on the enhanced theoretical framework and measurement plan:

*   **RQ1:** How accurate are lay individuals' judgments of LLM accuracy and utility for specific energy tasks (appliance kWh estimation vs. conservation planning)? How do these subjective perceptions align with (a) their *own* performance and biases on a parallel behavioral energy estimation task (Attari task), and (b) objective benchmarks or known LLM limitations?
    *   **H1a (Human Bias Replication):** Participants' own estimates on the Attari task will exhibit significant range compression bias.
    *   **H1b (Bias Projection/Transfer):** Perceived LLM accuracy for appliance energy estimation will be positively correlated with participants' *own* estimation accuracy (i.e., less biased individuals perceive LLMs as more accurate), suggesting projection of own (mis)perceptions. Perceived LLM accuracy patterns across low/high impact items may mirror participants' own biases.
    *   **H1c (Overestimation Baseline):** Overall perceived LLM accuracy for energy tasks will be significantly overestimated relative to objective benchmarks or known limitations (e.g., hallucination potential for specific facts/numbers).
*   **RQ2:** How do individual differences in objective numeracy (BNT), multidimensional energy literacy (cognitive, action, financial knowledge), and AI literacy (MAILS facets + objective LLM knowledge) predict: (a) beliefs about LLM accuracy/utility, (b) the accuracy/sophistication of their mental models (attributional beliefs, objective knowledge), and (c) **objective trust calibration** (confidence-accuracy alignment on the LLM judgment task)?
    *   **H2a (Numeracy & Calibration):** Higher objective numeracy will predict better *objective calibration* (lower Brier score, less over/underconfidence) for quantitative LLM energy estimates, and potentially lower variance/dispersion in perceived accuracy ratings.
    *   **H2b (Energy Literacy & Critical Evaluation):** Higher cognitive/action/financial energy literacy will predict more critical subjective beliefs (e.g., lower perceived accuracy/trust for complex concepts or nuanced planning) and better *objective calibration*, reflecting enhanced error detection and plausibility assessment.
    *   **H2c (AI Literacy & Calibrated Skepticism):** Higher AI literacy (objective knowledge + critical MAILS facets) will predict more cautious/skeptical subjective beliefs, more accurate mental models regarding LLM limitations (hallucinations, data access), and better *objective calibration*. High AI *usage/application* facets may moderate this, potentially correlating with higher trust.
*   **RQ3:** How do task-specific perceptions (accuracy, utility, trust) and **objective trust calibration** jointly influence individuals' stated behavioral intentions to rely on (accept vs. verify vs. reject) LLM advice in a concrete energy-related decision scenario?
    *   **H3:** Higher perceived accuracy, higher task-specific trust, and better *objective calibration* will independently predict a greater likelihood of choosing to accept (vs. verify or reject) LLM advice in the scenario-based task.
*   **RQ4:** Do dispositional Trust and Distrust in AI (TPA-Revised factors) mediate or moderate the relationships between task-specific beliefs/**objective calibration** and scenario-based reliance intentions?
    *   **H4a (Miscalibration Evidence):** Significant trust miscalibration (over-trust > under-trust) will be observed in the objective calibration task results across the sample.
    *   **H4b (General Trust Moderation):** Dispositional Trust will positively moderate the relationship between specific positive beliefs/**calibration** and reliance intention. Dispositional Distrust will negatively moderate this relationship. Mediation pathways will also be explored.

---

### **3) Measuring User Mental Models of LLMs (Rewritten)**

Assessing users' mental models—their internal representations of how LLMs operate, their capabilities, and limitations—is crucial for understanding trust calibration and reliance behavior (Liao & Sundar, 2022). Given that these models are often implicit, incomplete, and potentially inaccurate among lay users (Chen et al., 2025), we employ a **multi-method approach** moving beyond simple self-report ratings:

1.  **Attributional Belief Scale (Section 3.3):** A custom 6-item Likert scale probes explicit beliefs about LLM functioning relevant to energy tasks:
    *   *Data Access:* Beliefs about real-time data access vs. reliance on static training data.
    *   *Error Potential:* Awareness of hallucination risk for facts/numbers.
    *   *Personalization Capability:* Beliefs about inferring specific user context.
    *   *Reasoning Style:* Perception of genuine understanding vs. pattern matching.
    *   *Scope Awareness:* Understanding knowledge cutoffs or generality of advice.
    *   *Bias Awareness:* Recognition of potential biases inherited from training data.
    *(Rationale: Captures key dimensions identified by Liao & Sundar, 2022, relevant to trust formation).*

2.  **Objective LLM Knowledge (Section 1.3.2):** Three multiple-choice questions assess factual knowledge about core LLM limitations:
    *   *Hallucination:* Identifying the term for confident fabrication.
    *   *Knowledge Cutoff:* Recognizing reliance on potentially outdated training data.
    *   *Mechanism:* Understanding the probabilistic nature (pattern matching) vs. alternatives (real-time simulation, expert consultation).
    *(Rationale: Provides an objective check on understanding, complementing subjective MAILS facets and attributional beliefs).*

3.  **Open-Ended Reasoning Prompt (To be added):** A qualitative prompt asking participants to describe, in their own words, how they think an LLM generates an energy estimate (e.g., "How does ChatGPT figure out a refrigerator's kWh?").
    *   *Coding:* Responses coded for reasoning style (e.g., database lookup, calculation, pattern matching, anthropomorphic understanding, "magic").
    *(Rationale: Offers deeper insights into underlying conceptual models not captured by scales; aligns with think-aloud methodologies).*

4.  **Proxies via Perceptions and Behavior:** Perceived accuracy/utility ratings (Sec 3.1) and task-specific trust (Sec 3.2) reflect the *output* of the mental model. Performance on the Objective Calibration Task (Part 2) provides a behavioral indicator of how well the mental model aligns with reality (i.e., ability to accurately judge LLM correctness).

This combined approach triangulates mental models using explicit beliefs, objective knowledge, qualitative reasoning, and behavioral correlates, providing a richer assessment than single-method approaches.

---

### **4) Background and Rationale (Rewritten)**

The proliferation of accessible Large Language Models (LLMs) like ChatGPT offers potential solutions for complex societal challenges, including promoting sustainable behaviors like household energy conservation. However, the effectiveness of LLMs as decision aids hinges critically on users' ability to appropriately evaluate and rely on their outputs. This is particularly challenging in the energy domain, where decades of cognitive research demonstrate that lay individuals possess flawed mental models and exhibit systematic biases (e.g., range compression) in estimating energy consumption and savings (Attari et al., 2010; Kantenbacher & Attari, 2021). Introducing LLMs, which can generate fluent but potentially inaccurate or "hallucinated" information (Kim et al., 2024), into this already biased cognitive landscape creates a "dual-bias environment" with significant risks. Users might project their own energy misperceptions onto the AI (H1b), leading to miscalibrated trust and potentially harmful reliance decisions—accepting poor advice or rejecting good advice (Lee & See, 2004).

Recent HAI research highlights a persistent "calibration gap" with LLMs, where user confidence often exceeds actual LLM accuracy (Steyvers et al., 2025; Yin, 2025). Understanding the factors that shape this gap is crucial. This proposal posits that individual differences in relevant **literacies** act as key moderators. **Energy literacy** (cognitive, action, financial) provides the domain knowledge to spot errors (Van Den Broek, 2019); **AI literacy** (understanding capabilities and limitations) fosters critical evaluation (Long & Magerko, 2020; Rheu & Cho, 2025); and **objective numeracy** enables quantitative plausibility checks (Cokely et al., 2012; Peters et al., 2022). Users' **mental models** of how LLMs work (Liao & Sundar, 2022; Chen et al., 2025) and their **dispositional trust/distrust** in AI (Scharowski et al., 2025) are also expected to influence belief formation and reliance.

This study uniquely investigates the interplay of these factors—pre-existing energy biases, multiple literacies, mental models, and trust dispositions—in shaping lay perceptions, objective calibration, and reliance intentions regarding LLMs for specific household energy tasks (estimation vs. planning). By employing a multi-method approach including validated scales, behavioral estimation tasks (Attari), objective knowledge checks, mental model probes, and an objective calibration task, this research moves beyond simple self-reports to provide a more nuanced understanding of human-AI interaction in this critical domain.

---

### **5) Rationale and Implications (Rewritten)**

Understanding lay perceptions and trust calibration with LLMs in the household energy domain carries significant practical and theoretical implications. From a practical standpoint, identifying factors (e.g., low numeracy, inaccurate mental models) associated with miscalibrated trust (over- or under-reliance) can inform the design of safer and more effective human-AI systems. For instance, findings could guide the development of adaptive interfaces that provide tailored uncertainty cues (Kim et al., 2024) or cognitive forcing functions (Buçinca et al., 2021) based on user characteristics or task type. Results can also inform targeted educational interventions aimed at improving energy literacy, AI literacy, or fostering more accurate mental models of LLM capabilities and limitations, thereby promoting appropriate reliance.

Theoretically, this research contributes to several fields. It extends the literature on **energy decision-making** by examining how a novel information technology (LLMs) interacts with known cognitive biases and heuristics. It contributes to **human-AI interaction** by empirically investigating trust calibration dynamics specifically with LLMs in a complex, quantitative domain, testing the moderating roles of multiple literacies and mental models. The focus on potential bias transfer (H1b) offers a novel lens on how domain-specific cognition shapes interaction with general-purpose AI. Findings will refine theories of **calibrated trust** (Lee & See, 2004) and **mental model** formation (Liao & Sundar, 2022) in the context of generative AI.

Ultimately, by characterizing the factors that enable users to leverage LLMs effectively while mitigating the risks of misinformation and miscalibrated reliance, this study aims to provide actionable insights for harnessing AI to support individual energy conservation efforts and contribute to broader sustainability goals, ensuring that AI serves as a tool to overcome, rather than exacerbate, human cognitive limitations.

---

## 6. Suggest Scenario-Based LLM Beliefs Questions

*(These would ideally be part of the Objective Calibration Task or a separate section)*

**Instructions:** Below are hypothetical answers an AI chatbot (like ChatGPT) might give to questions about household energy. Please read each answer and respond to the questions that follow.

---

**Scenario 1: Appliance Estimation**

**Question to AI:** "How much electricity does a typical electric clothes dryer use per load?"
**AI Answer:** "A typical electric clothes dryer uses about **0.5 kilowatt-hours (kWh)** per load. So, running it frequently won't impact your bill much compared to other appliances like your refrigerator."

*   **Q1.1:** How accurate do you believe the AI's estimate of **0.5 kWh per load** is? *(Scale: 1=Very Inaccurate to 7=Very Accurate)*
*   **Q1.2:** How confident are you (0-100%) that the AI's estimate of 0.5 kWh is correct? `________ %` *(Part of Calibration Task)*
*   **Q1.3:** Based on this answer, how trustworthy do you find the AI for estimating appliance energy use? *(Scale: 1=Not at all Trustworthy to 7=Very Trustworthy)*
*   **Q1.4:** Would you rely on this specific 0.5 kWh estimate if deciding how often to use your dryer? *(Options: Yes, definitely / Yes, probably / Unsure / No, probably not / No, definitely not)*
*   **Q1.5 (Mental Model Probe):** Why do you think the AI might give this specific number (0.5 kWh)? *(Open text box)*

*(Note: The actual average is closer to 3-4 kWh per load. 0.5 kWh is significantly underestimated, potentially reflecting human bias projecting onto AI or an AI hallucination).*

---

**Scenario 2: Conservation Plan Advice**

**Question to AI:** "What's the single most effective thing I can do to save energy in my apartment this winter?"
**AI Answer:** "The single most effective thing is definitely to **unplug all your electronics when you're not using them**, especially chargers and TVs. These 'phantom loads' add up significantly and tackling them first will give you the biggest savings."

*   **Q2.1:** How accurate do you believe the AI's claim is that unplugging electronics is the *single most effective* action for winter energy savings in an apartment? *(Scale: 1=Very Inaccurate to 7=Very Accurate)*
*   **Q2.2:** How confident are you (0-100%) that the AI's advice here is correct (i.e., that phantom load reduction is the *most* effective winter action)? `________ %` *(Part of Calibration Task)*
*   **Q2.3:** How useful do you find this specific piece of advice? *(Scale: 1=Not at all Useful to 7=Very Useful)*
*   **Q2.4:** If this was the main advice given, how likely would you be to focus your efforts primarily on unplugging devices this winter? *(Scale: 1=Very Unlikely to 7=Very Likely)*
*   **Q2.5 (Mental Model Probe):** Why might the AI prioritize unplugging devices over other potential winter savings actions (like heating adjustments)? *(Open text box)*

*(Note: While phantom loads exist, reducing heating energy use (e.g., thermostat setbacks, sealing drafts) is typically far more impactful for winter savings, especially in apartments. The AI answer reflects a common misconception potentially learned from training data).*

---

**Scenario 3: Factual Concept Explanation**

**Question to AI:** "Explain what an ENERGY STAR rating means for appliances."
**AI Answer:** "ENERGY STAR is a government program that labels appliances meeting strict energy efficiency guidelines set by the EPA. Choosing an ENERGY STAR model means it uses significantly less energy than standard models – usually **at least 50% less** – saving you money and helping the environment."

*   **Q3.1:** How accurate do you believe the AI's explanation of the ENERGY STAR program is? *(Scale: 1=Very Inaccurate to 7=Very Accurate)*
*   **Q3.2:** How confident are you (0-100%) that the AI's explanation, including the "at least 50% less" figure, is correct? `________ %` *(Part of Calibration Task)*
*   **Q3.3:** How helpful is this explanation in understanding the benefit of ENERGY STAR? *(Scale: 1=Not at all Helpful to 7=Very Helpful)*
*   **Q3.4:** Based on this explanation, how much would you trust the AI to accurately explain other energy standards or concepts? *(Scale: 1=Distrust Completely to 7=Trust Completely)*

*(Note: The general explanation is correct, but the "at least 50% less" figure is often an exaggeration. Savings vary greatly by appliance type, often being in the 10-30% range compared to minimum standards, not always >50%. This probes ability to spot potentially inflated quantitative claims within a generally correct explanation).*

---

## Addressing the To-Do List Items (Summary of Changes)

*(This summarizes how the rewritten proposal addresses the specific To-Do items from `draft10_prpsl.md`)*

1.  **Objective Calibration Added:** The rewritten proposal explicitly includes the Objective Calibration Task (Part 2 in the survey draft) and integrates calibration indices (Brier score, Over/Underconfidence) into the RQs, Hypotheses (H2a, H2c, H3, H4), Analysis Plan, and Theoretical Framework. **(ToDo 1, 18 Addressed)**
2.  **Attari Task Reintroduced & Aligned:** The proposal confirms the inclusion of the Attari task and explicitly links it to H1b (Bias Projection/Transfer), comparing participant bias scores with perceived LLM accuracy. **(ToDo 2 Addressed)**
3.  **Mechanisms & Hypotheses Refined:** The rewritten Theoretical Framework explicitly states the hypothesized mechanisms (Error Detection, Utility Assessment, Financial Plausibility, Awareness of Failure Modes, Quantitative Plausibility Checking). Hypotheses (H1-H4) are refined, more specific, directional, and incorporate calibration concepts. **(ToDo 3 Addressed)**
4.  **Expanded Mental Model Measurement:** The rewritten proposal details a multi-method approach (Attributional Belief Scale, Objective LLM Knowledge items, Open-Ended Prompt) justified by theory. **(ToDo 4, 17 Addressed)**
5.  **Scenario-Based Reliance Measure Added:** The proposal includes and justifies the Scenario-Choice Task (Sec 5.1 in survey draft) as a behavioral intention measure. **(ToDo 5 Addressed)**
6.  **Energy Literacy Scope Expanded:** The rewritten proposal and theoretical framework explicitly mention cognitive, action, and financial facets. The measures section implies inclusion. **(ToDo 6, 15 Addressed)**
7.  **Objective LLM Knowledge Items Added:** The proposal includes and justifies adding objective LLM knowledge questions. **(ToDo 7 Addressed)**
8.  **Trust Measurement Updated:** The proposal adopts the TPA-Revised two-factor structure based on recent validation insights. **(ToDo 8, 14 Addressed)**
9.  **Custom Item Validation (Acknowledged):** The need for pilot testing custom items is acknowledged in the evaluation and remaining issues. **(ToDo 9 Addressed)**
10. **Literature Coverage & Framing Updated:** The rewritten Theoretical Framework integrates concepts like calibration gap, uncertainty communication (briefly), mental models, and AI literacy complexities, citing relevant recent literature. Bias transfer is emphasized. **(ToDo 10, 19 Addressed)**
11. **Survey Design Threats Addressed:** The proposal mentions counterbalancing. The survey draft includes an attention check. The need for reverse-keyed items for custom scales should be ensured during piloting. **(ToDo 11 Addressed)**
12. **Analysis Plan Documentation:** The proposal outlines an analysis plan incorporating calibration indices, regression, moderation/mediation testing. **(ToDo 12 Addressed)**
13. **Comprehensive RQ Coverage:** The rewritten RQs and survey measures cover all intended constructs. **(ToDo 13 Addressed)**
14. **Contemporary Instruments Adopted:** Proposal uses MAILS-Short, BNT, TPA-Revised factors based on recent work. **(ToDo 14 Addressed)**
15. **Financial Energy Literacy Added:** Explicitly included in the theoretical framing and measures description. **(ToDo 15 Addressed)**
16. **Scenario-Based LLM Beliefs:** Scenario-based questions are suggested to improve belief measurement, complementing general ratings. **(ToDo 16 Addressed)**
17. **Multi-Method Mental Model Strategy:** Rewritten proposal details and justifies the multi-method approach. **(ToDo 17 Addressed)**
18. **Trust Miscalibration Measurement Procedures:** Rewritten proposal details the Objective Calibration Task and relevant metrics (Brier score, over/underconfidence). **(ToDo 18 Addressed)**
19. **Strengthened Theoretical Framework:** Rewritten section incorporates more theory and mechanisms. **(ToDo 19 Addressed)**

---

## Remaining Issues

1.  **Survey Length & Fatigue:** The survey is comprehensive but long. Fatigue effects could impact data quality, especially on later sections or calibration tasks. Mitigation strategies (breaks, progress indicators, fair compensation) are needed. Consider modularization or split-sampling if length becomes prohibitive in piloting.
2.  **Custom Item Validation:** As repeatedly noted, the validity and reliability of all newly developed custom items (Perceived Accuracy/Utility, Task-Specific Trust, Attributional Beliefs, Objective LLM Knowledge, Calibration Task stimuli, Scenario Choice) are critical unknowns. **Pilot testing is essential** before main data collection.
3.  **Objective Calibration Task Limitations:** The task relies on pre-generated, static LLM answers. Real interactions are dynamic. The small number of items (3) limits the reliability of individual calibration scores. The "correctness" of stimuli must be rigorously verified.
4.  **Scenario Realism:** Both the calibration task and the scenario-choice task present hypothetical situations. Real-world reliance decisions involve more context, cost/benefit tradeoffs, and potentially different motivations. Ecological validity is limited.
5.  **Self-Report Limitations:** Reliance on self-reported literacy (MAILS), attitudes (ELQ Affective), behaviors (ELQ Behavioral), intentions, and past frequency carries inherent biases. Objective measures (BNT, ELQ Cognitive, Attari, Objective AIL, Calibration Task) help mitigate this but don't eliminate it entirely.
6.  **Causality:** The cross-sectional design limits causal inference. While predicting outcomes from literacies is framed directionally based on theory, establishing causality requires experimental manipulation (e.g., literacy interventions) or longitudinal designs.
7.  **Open-Ended Prompt:** While valuable, coding open-ended responses requires significant resources and a reliable coding scheme. This needs planning.





-----

# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1

**Analysis of the Problem: LLMs for Household Energy Management**

The domain of household energy management is characterized by inherent complexity and significant cognitive barriers for lay individuals. Empirical research demonstrates that lay judgments about energy consumption and savings are frequently inaccurate, stemming from reliance on simplifying cognitive heuristics rather than accurate quantitative calculation. Common biases include the underestimation of high-impact actions (e.g., insulation, efficient appliances) and overestimation of low-impact, visible actions (e.g., turning off lights), leading to a "range compression" effect in energy use estimations. These systematic misperceptions are consistent with models of bounded rationality, where cognitive limitations restrict optimal decision-making in complex environments lacking intuitive feedback.

LLMs are increasingly consulted for practical guidance, including energy-related advice. They possess potential as external cognitive aids capable of providing information, estimates, or personalized plans that could theoretically help users overcome these inherent human limitations. However, this potential is mediated by how users perceive and evaluate the LLM's capabilities. A primary risk is miscalibrated trust, particularly over-reliance, where users uncritically accept LLM outputs that may be inaccurate, biased, or fabricated ("hallucinated") within the specific, quantitatively demanding energy domain. Conversely, excessive skepticism or under-reliance might prevent users from benefiting from genuinely helpful AI capabilities. The fluency and seemingly confident output style of LLMs can exacerbate these issues, potentially inflating perceived competence and trustworthiness even when unwarranted. The "calibration gap" observed with LLMs, where subjective confidence does not align with objective accuracy, poses a critical challenge in this context, especially when users already hold pre-existing domain misperceptions.

Real-world constraints necessitate focusing on factors that influence how users understand and evaluate LLMs. Users approach these systems with varying levels of domain knowledge (energy literacy), technical understanding (AI literacy), and quantitative skills (numeracy). These individual differences interact with users' internal representations of the LLM—their mental models—to shape expectations, trust, and reliance behaviors. Effective interface design in this domain must account for these complex interactions to promote appropriate reliance and calibrated trust.

**Conceptual Framework**

Understanding how users interact with LLMs for energy management requires integrating theoretical perspectives from cognitive psychology, human-AI interaction, and research on energy decision-making and literacy. The proposed framework centers on the interplay between users' cognitive biases, their mental models of LLMs, relevant literacies, and the process of trust calibration, ultimately influencing reliance decisions in the energy domain.

1.  **Cognitive Biases and Bounded Rationality in Energy Judgments:** Lay users often rely on simplifying heuristics in energy judgments, leading to systematic biases like range compression and misperceptions about conservation effectiveness. This is consistent with the concept of bounded rationality, acknowledging cognitive limitations in processing complex energy information. LLMs, as potential external aids, must be evaluated by users who are already prone to these biases.

2.  **Mental Models of LLMs:** Users form internal representations, or mental models, of how LLMs function, their capabilities, and limitations. These models are often informal, incomplete, and may be influenced by pre-existing beliefs or media portrayals. Key dimensions of these mental models include beliefs about the LLM's data access (e.g., real-time vs. static training data), potential for error and fabrication (hallucinations), contextual understanding and personalization ability, and the nature of its processing (e.g., expert-like understanding vs. pattern matching). These models shape user expectations and interpretations of LLM outputs.

3.  **Literacies as Modulators:** Individual differences in specific literacies—energy literacy (domain knowledge), AI literacy (understanding AI capabilities and limitations), and numeracy (quantitative skills)—are hypothesized to modulate how users process and evaluate information from LLMs. Higher cognitive energy literacy and AI literacy (particularly critical evaluation facets) are expected to enable users to detect errors and assess plausibility in energy-related LLM outputs. Higher numeracy facilitates the evaluation of quantitative estimates.

4.  **Trust Calibration and Reliance:** Effective human-AI collaboration depends on calibrated trust, where a user's trust level aligns with the AI's actual reliability for a given task. Trust is multidimensional, encompassing cognitive evaluations of competence and reliability. For LLMs in the energy domain, task-specific trust in the LLM's factual accuracy, estimation accuracy, and planning competence is crucial. Miscalibration, such as over-trust due to inflated perceived competence or under-trust due to skepticism, leads to suboptimal reliance—either accepting flawed advice or failing to leverage helpful capabilities. General dispositional trust/distrust in AI can also influence task-specific trust and reliance intentions. The "calibration gap" with LLMs highlights the empirical challenge of achieving appropriate reliance.

This framework posits that users' existing energy biases, modulated by their literacies and general AI trust disposition, shape their mental models of LLMs in the energy context. These mental models, in turn, inform task-specific perceptions of LLM accuracy and utility, which are primary inputs to cognitive trust formation. Task-specific trust and objective calibration then predict reliance intentions and behaviors.

**Informing Interface Design Strategies: The Role of Uncertainty Communication**

Understanding how users form mental models and calibrate trust in LLMs for complex domains like energy management is crucial for designing interfaces that promote effective and appropriate human-AI collaboration. The insights derived from this framework have direct implications for interface design strategies, particularly concerning the communication of uncertainty.

Given the prevalence of human cognitive biases in energy judgments and the potential for LLMs to generate fluent yet inaccurate outputs, especially in quantitatively complex tasks, it is imperative that LLM interfaces actively support users in evaluating the credibility of the information provided. Mental models that are incomplete or inaccurate can lead to over-reliance if users assume the LLM possesses capabilities it lacks, such as real-time data access or true contextual understanding. Over-trust stemming from a poor mental model can be particularly detrimental in the energy domain, leading to actions based on flawed estimates or plans.

Interface design can leverage an understanding of user mental models and trust calibration challenges in several ways:

1.  **Scaffolding User Understanding (Improving Mental Models):** Interfaces can be designed to better scaffold user understanding of LLM capabilities and limitations. Rather than presenting LLMs as oracular sources of truth, interfaces could explicitly communicate aspects of their underlying mechanisms relevant to the energy domain. For instance, explaining that information is based on vast training data up to a certain date, rather than real-time energy databases, can correct a potential mental model deficit regarding data access. Similarly, subtly indicating that responses are generated based on pattern matching rather than human-like reasoning could help users calibrate expectations about depth of understanding. Open-ended probes and think-aloud protocols reveal that users develop diverse and sometimes inaccurate "tacit theories" about LLM functioning, suggesting the need for interfaces to provide clearer insights into the system's nature.

2.  **Highlighting Uncertainty:** A key strategy informed by the need for calibrated trust and addressing the "calibration gap" is the explicit communication of uncertainty. LLMs can generate highly confident-sounding text regardless of factual accuracy. Interfaces should counteract this by visually or textually highlighting the potential for error or lack of certainty, particularly for quantitative estimates or personalized plans in the energy domain where human biases are prevalent. For example, when providing an appliance energy estimate, the interface could display a confidence interval, a disclaimer about the probabilistic nature of the data, or an explicit statement like "This is an estimated value based on typical models and usage, actual consumption may vary significantly". Such "cognitive forcing functions" prompt users to engage in more critical evaluation rather than passively accepting the output. This aligns with findings that higher AI literacy and domain knowledge enable better critical evaluation, suggesting interfaces could offer tailored levels of uncertainty information or verification prompts based on inferred user literacy or task type.

3.  **Encouraging Verification and Critical Evaluation:** Interfaces can actively encourage users to verify LLM outputs, especially for high-stakes or quantitative energy decisions. This could involve providing easy access to external verification resources (e.g., links to official energy efficiency databases, calculators) or prompting users to consider if the LLM's suggestion aligns with their own knowledge or other sources. Behavioral tasks reveal that users may struggle to detect errors in LLM outputs related to energy values, underscoring the need for interfaces to facilitate this critical evaluation process. Designing for different task types is also important; users might need more robust verification support for numerical estimates or personalized plans compared to general factual questions.

4.  **Addressing Attributional Beliefs:** Interfaces should be designed to avoid reinforcing inaccurate attributional beliefs about the LLM. Overly anthropomorphic interfaces or language might contribute to users believing the LLM "understands" in a human-like way or has access to real-time personal data. While interactive features can increase trust, they must be balanced with transparency about the system's actual workings to prevent unwarranted trust and miscalibration.

In conclusion, understanding the complex interplay between human cognitive biases in energy judgment, the formation and content of user mental models of LLMs, and the process of trust calibration is paramount for designing effective human-AI interfaces in the energy domain. Interface strategies informed by these principles, particularly focusing on scaffolding understanding, explicitly highlighting uncertainty, encouraging verification, and carefully managing attributional cues, can help users achieve better-calibrated trust and leverage LLMs appropriately to support energy-related decision-making. This approach moves beyond simply providing information to actively shaping the user's cognitive interaction with the AI system, aiming to mitigate risks of miscalibration and foster more effective conservation outcomes.




-------

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

# https://notebooklm.google.com/notebook/5f89be29-389a-4d18-8ef1-adb57ce564b9?pli=1

**Problem Analysis: Nature, Scope, and Core Requirements**

The core problem addressed by this research lies at the complex intersection of human cognitive limitations in a specific domain—household energy management—and the emergent capabilities and inherent uncertainties of Large Language Models (LLMs) as potential information sources and decision aids.

*   **Nature:** The problem stems from the well-documented reality that individuals often possess inaccurate mental models of energy consumption and savings, leading to suboptimal choices. These misperceptions are rooted in cognitive biases and reliance on simple heuristics rather than accurate quantitative understanding. Introducing LLMs, which can provide fluent but potentially inaccurate information ("hallucinations") or exhibit a "calibration gap" between their internal confidence and actual accuracy, creates a "dual-bias environment" where pre-existing human biases might interact with AI uncertainty. The critical risk is miscalibrated trust, particularly over-reliance, leading users to accept flawed energy advice with potential financial loss or wasted effort.
*   **Scope:** The research aims to understand how lay individuals perceive LLM accuracy and utility for energy tasks, focusing on factors that influence whether users' trust in the AI is appropriately calibrated to its actual performance in this domain. The scope includes examining the role of individual differences in relevant literacies (energy, AI, numeracy), users' mental models of LLMs, and how these factors predict trust calibration and behavioral intentions regarding LLM advice.
*   **Core Requirements:** A rigorous study requires accurately measuring key constructs like various literacies, mental models of LLMs, perceived and actual LLM accuracy, user trust, and behavioral intentions or actual reliance. It necessitates linking these measures within a coherent theoretical framework that explains how human cognitive traits and AI characteristics interact to shape outcomes like trust calibration and appropriate reliance. Real-world constraints include designing a feasible study (likely survey-based for scale), recruiting a representative sample, and operationalizing complex constructs (like miscalibration) using appropriate methods.

**Conceptual Framework Integrating Key Principles**

Drawing on the sources, the research is grounded in principles from several domains:

*   **Energy Decision-Making:** Acknowledging established cognitive biases in energy perception (e.g., range compression), bounded rationality, and the use of heuristics. LLMs are positioned as potential *external cognitive aids* to overcome these limitations.
*   **Human-AI Interaction (HAI):** Focusing on *trust in automation* and the critical goal of *appropriate reliance*. The framework incorporates the concept of *trust calibration*—the alignment between user trust and system reliability—and the risks of *miscalibration* (over-reliance or under-reliance).
*   **Literacy Studies:** Integrating multidimensional constructs of energy literacy (cognitive, affective, behavioral, action, financial), objective numeracy, and AI literacy (objective knowledge, self-report facets). These literacies are posited as *epistemic vigilance mechanisms* that modulate users' critical evaluation of AI outputs.
*   **Cognitive Science & Judgment & Decision Making:** Exploring user *mental models* of LLM capabilities and limitations, how users perceive and interpret *uncertainty* cues from LLMs, and potential *domain-specific bias transfer*—projecting human biases onto AI expectations.
*   **AI Ethics/Trustworthiness:** Recognizing the importance of designing AI that facilitates calibrated trust and avoids potentially harmful over-reliance.

The framework posits that individual differences in literacies and dispositional trust, combined with users' mental models of LLMs, influence their subjective beliefs about LLM accuracy and utility for energy tasks. These subjective perceptions, along with objective calibration (the alignment of confidence/reliance with actual AI correctness), jointly determine behavioral intentions and actual reliance patterns. Domain-specific biases in energy perception are hypothesized to interact with or be projected onto perceptions of AI performance.

**Evaluation of the Current Survey Draft (Based on Initial Critiques)**

Evaluating the *initial* current survey draft based on the critiques provided in the sources (,,,), its adequacy in addressing the research questions varied significantly, with notable deficiencies:

*   **RQ1: Prevailing lay beliefs about LLM accuracy & utility for energy tasks.**
    *   **Adequacy (Initial Draft):** The draft likely included items on beliefs about LLM accuracy and utility, covering tasks like kWh estimates and personalized plans. It separated accuracy, utility, and trust concepts, which aligns with the need for distinct measures.
    *   **Gaps / Threats to Validity (Initial Draft):** Measures were primarily *subjective* self-reports. They lacked scenario-based specificity, meaning they might not capture how beliefs vary across different energy task types (factual vs. quantitative estimation vs. planning) or reflect known human biases. Wording might have mixed accuracy and trust verbs, potentially inflating shared-method variance. There was no objective benchmark to compare beliefs against.
*   **RQ2: Role of numeracy, energy literacy, AI literacy.**
    *   **Adequacy (Initial Draft):** The draft included sections for numeracy (likely Berlin Numeracy Test or similar), energy literacy (likely using items from ELQ or similar), and AI literacy (possibly a short form of MAILS). Using validated short forms for these literacies was a reasonable starting point.
    *   **Gaps / Threats to Validity (Initial Draft):** The energy literacy section likely omitted crucial sub-facets like *action* and *financial* energy literacy, which are highly relevant to evaluating energy advice and linked to specific biases. The AI literacy measure was likely self-report only, risking biases like the Dunning-Kruger effect (overestimation of one's own competence) and failing to capture *objective* understanding of LLM limitations.
*   **RQ3: Links from perceived accuracy/trust to willingness & past use.**
    *   **Adequacy (Initial Draft):** Included items on past behavior (usage frequency) and behavioral intentions.
    *   **Gaps / Threats to Validity (Initial Draft):** Intentions were likely single-item measures, which are less reliable than multi-item scales or behavioral choice tasks for assessing intended reliance. The link between subjective perceptions/trust and *objective* calibration was not captured behaviorally.
*   **RQ4: Mediation/moderation by general trust vs. distrust in AI.**
    *   **Adequacy (Initial Draft):** Included a general trust measure, possibly a subset of the TPA scale, potentially capturing both trust and distrust facets.
    *   **Gaps / Threats to Validity (Initial Draft):** The psychometric properties of a short, potentially unvalidated subset of a trust scale were unknown. Broader dimensions of trust (e.g., affective trust like closeness or empathy) might have been missing. Critically, there was no explicit operationalization or task to *measure* trust miscalibration directly.

**Evaluation of the Current Study Proposal (Initial State)**

Evaluating the *initial* study proposal based on the critiques provided in the sources (,,,,), its novelty, logical structure, and justification against the literature had significant weaknesses, particularly concerning the measurement of mental models:

*   **Novelty:** The proposal addressed a timely and significant topic at the intersection of HCI, energy behavior, and AI ethics. Its potential to yield insights into AI's influence on consumer energy decisions was a strength. However, the *unique contribution* (novelty) needed sharper articulation, specifically focusing on the intersection of literacies, mental models, and LLM interaction in the under-explored, high-stakes energy domain. Linking energy-specific biases to LLM evaluation was noted as a key potential contribution.
*   **Logical Structure:** The proposal mentioned relevant constructs but lacked a clear, explicit theoretical framework that integrated how they jointly influence user perceptions and calibration. The connection between the literature, the theoretical framework, and the research questions/hypotheses was not always explicit or strongly justified. Hypotheses sometimes relied on intuition rather than specific literature.
*   **Justification against Literature:**
    *   **General:** Justification needed stronger grounding in relevant theoretical and empirical literature, particularly concerning recent advancements in LLMs (capabilities, user reliance, trust dynamics, uncertainty expression). Foundational work (e.g., Attari et al. on energy misperceptions, Lee & See on trust in automation) needed better integration.
    *   **Energy Literacy & Appliance Knowledge:** Mentioned, but alignment with established standards (e.g., multidimensional nature of energy literacy, specific items for appliance knowledge, financial literacy) needed strengthening. Justification for *why* higher energy knowledge would affect LLM evaluation needed to link to mechanisms like error detection.
    *   **AI Literacy:** Concept was not well-defined or integrated with literature. Justification needed to link AI literacy to awareness of AI limitations and how this affects trust. Measurement relied on potentially inadequate or outdated scales.
    *   **Human-AI Reliance & Uncertainty Perception:** Reliance measurement was simplistic (primarily self-report intention). It needed to differentiate appropriate vs. inappropriate reliance. Uncertainty perception measurement needed to align with current understanding of how LLMs express uncertainty and how users interpret it. Justification for studying reliance and uncertainty needed grounding in HAI literature and recent LLM research.
    *   **Trust in AI:** Scale choice was problematic (potentially inadequate or outdated scales not validated for AI context, like TPA single-factor). Justification needed to integrate established trust models and recent findings on trust in AI/LLMs, including the importance of distrust as a separate construct.
    *   **Mental Models of LLMs:** The proposal's approach to measuring mental models was considered *overly simplistic*, primarily depending on inadequate self-report measures. It needed a more nuanced, multi-method approach. The initial draft was criticized for only having simple self-report items and lacking richer measurement. The justification for *why* mental models matter needed clearer links to trust outcomes.

**Issues Identified**

Based on the analysis of the initial proposal and survey draft, the key issues are:

1.  **Theoretical Framework Weaknesses:** Lack of explicit, integrated framework linking literacies, mental models, and trust calibration. Mechanisms linking individual differences (literacies, numeracy) to LLM evaluation and calibration were implicit.
2.  **Measurement Inadequacy:**
    *   **Trust Calibration:** Absence of a direct, objective measure of trust miscalibration (e.g., confidence-accuracy task, behavioral reliance).
    *   **Mental Models:** Overly simplistic measurement relying on limited self-report items. Needed a multi-method approach.
    *   **Literacies:** Energy literacy measure potentially incomplete (missing financial, action facets). AI literacy measure potentially subjective-only (missing objective knowledge).
    *   **Trust/Distrust Scales:** Use of potentially unvalidated or psychometrically weak scales for AI contexts (e.g., TPA single-factor).
    *   **Reliance:** Reliance measured only as abstract self-report intention, not scenario-based behavioral intention or actual behavior.
    *   **Beliefs about Accuracy:** Questions potentially too generic, lacking specificity for different tasks or reflection of domain biases.
3.  **Justification and Literature Grounding:** Rationale for RQs/Hypotheses needed stronger grounding in specific, recent literature on LLMs and integrated theories. Lack of clear articulation of the *domain-specific bias transfer* hypothesis initially.
4.  **Survey Design:** Potential threats like order effects, lack of reverse-coded items in some scales. Need for pilot testing custom items.
5.  **Causal Inference Limitation:** Cross-sectional design limits causal claims.

**Suggestions for Improving "Beliefs about LLM Accuracy for Energy Tasks" Questions**

To improve the questions assessing beliefs about LLM accuracy for energy tasks, drawing on sources:

1.  **Increase Specificity:** Instead of general statements, ask about perceived accuracy for *specific types* of energy tasks and *specific items* known to be subject to human bias.
    *   *Initial (Problematic):* "LLM answers about energy are accurate."
    *   *Suggested Improvement:* "How accurate do you think current LLMs are at estimating the typical energy use of a refrigerator?" (High Consumption Appliance)
    *   *Suggested Improvement:* "How accurate do you think current LLMs are at estimating the energy use of an LED light bulb?" (Low Consumption Device)
    *   *Suggested Improvement:* "How accurate do you think current LLMs are at estimating the potential savings from adding attic insulation?" (High-Impact Action)
    *   *Suggested Improvement:* "How accurate do you think current LLMs are at estimating the potential savings from unplugging electronics that are turned off?" (Low-Impact Action/Phantom Load)
    *   *Rationale:* Comparing perceived accuracy across these items allows testing if participants project human biases (underestimating high impact/consumption, overestimating low impact/consumption) onto their expectations of AI performance. Also include perceived accuracy for factual recall vs. complex planning tasks.
2.  **Include Recognition of Fallibility:** Add reverse-coded items that probe awareness of LLM limitations within the energy domain.
    *   *Suggested Improvement:* "LLMs might sometimes confidently invent incorrect numbers or facts about energy that sound plausible."
    *   *Suggested Improvement:* "It is unlikely that an LLM would make the same kinds of energy estimation mistakes that people typically make." (Consider agreeing/disagreeing)
    *   *Rationale:* This taps into critical AI literacy and awareness of issues like hallucinations, moving beyond just perceived positive accuracy.
3.  **Differentiate Accuracy and Utility:** Ensure distinct scales or clear wording separates perceived accuracy (how correct) from perceived utility (how helpful/beneficial).
4.  **Explore Reasons for Beliefs:** Consider adding follow-up questions or items probing *why* participants hold these beliefs, which can shed light on their underlying mental models. E.g., "I believe LLMs are accurate for energy estimates because they have access to vast amounts of data."

**Suggestions for Measuring Trust Miscalibration**

Measuring trust miscalibration requires comparing a user's trust or confidence in an AI output against the actual correctness or reliability of that output. Simply asking a general trust question is insufficient. The sources propose several concrete methods:

1.  **Behavioral Confidence-Accuracy Task:** This is the most recommended approach.
    *   *Method:* Present participants with a series of pre-generated LLM answers to energy-related questions (some correct, some incorrect). For each answer, ask participants to rate their confidence (e.g., on a 0-100% scale) that the answer is correct.
    *   *Measurement:* Compute objective calibration indices for each participant based on their confidence judgments and the known correctness of the AI answers. Key metrics include:
        *   **Brier Score:** An overall measure of calibration error.
        *   **Over/Underconfidence:** Calculate the difference between mean confidence and mean actual accuracy. Positive values indicate overconfidence (over-trust), negative values indicate underconfidence (under-trust).
        *   **Calibration Curves:** Plot accuracy within bins of confidence.
        *   **Discrimination:** Assess if confidence ratings correlate with actual correctness.
    *   *Rationale:* This provides a direct, behavioral measure of whether participants' trust (expressed as confidence) aligns with the AI's performance.
2.  **Reliance Pattern Analysis in Scenarios:** Use scenario-based tasks where participants are presented with an energy-related problem and LLM advice (potentially varying in correctness or uncertainty expression). Ask participants to choose among options like "Accept advice," "Verify advice," or "Reject advice".
    *   *Measurement:* Analyze the frequency of Accept/Verify/Reject choices. Crucially, if advice correctness is known/manipulated across scenarios (future work suggestion), calculate rates of *Reliance on Correct Advice* vs. *Reliance on Incorrect Advice*. Compare these patterns across individuals or groups with different calibration scores from the confidence task or different literacy levels.
    *   *Rationale:* This captures intended or simulated *behavioral reliance* and can reveal miscalibration (e.g., high acceptance of incorrect advice indicates over-reliance/over-trust). The "Verify" option specifically reflects calibrated behavior.
3.  **Perceived Accuracy vs. Human Bias Discrepancy:** As a proxy if objective LLM accuracy isn't directly assessed, compare a participant's perceived accuracy of an LLM for a task (e.g., appliance estimation) with their *own* demonstrated accuracy or bias magnitude on a parallel human estimation task (like the Attari task).
    *   *Measurement:* Calculate the discrepancy between perceived LLM accuracy and the magnitude of the participant's own estimation error. High perceived LLM accuracy despite large personal errors could indicate poor calibration or projection of bias.
    *   *Rationale:* This leverages the known human biases as a benchmark for evaluating expectations of the AI.
4.  **Validated Trust Scales:** While not directly measuring calibration *behavior*, using psychometrically sound scales validated for AI contexts (like the TAI or the two-factor TPA distinguishing trust/distrust) provides a more reliable measure of the *subjective* trust component that is central to calibration.

**Rewritten Proposal Sections**

Based on the critiques and suggestions, here are rewritten versions of the requested sections, synthesizing the improvements discussed in the sources, particularly drawing from the "Revised Proposal" and "Rewritten Proposal Sections" provided in sources.

---

**1) Proposal Theoretical Framework (Rewritten)** [Synthesizing 10, 18, 25, 28]

This research examines the dynamics of human-AI interaction within the domain of household energy management, a context uniquely characterized by a "dual-bias environment". Consumers often possess suboptimal mental models of energy consumption, exhibiting systematic biases such as range compression (underestimating high energy use/savings, overestimating low energy use/savings) when estimating appliance energy use and savings (Attari et al., 2010; Kantenbacher & Attari, 2021; Marghetis et al., 2019). These cognitive heuristics, coupled with bounded rationality stemming from limited information, cognitive capacity, numeracy, and incomplete feedback (Simon, 1957; Blasch et al., 2019, cited in source), impede effective energy decision-making. The advent of Large Language Models (LLMs) introduces a potential avenue to serve as external cognitive aids, providing information or generating plans to mitigate these human limitations.

However, LLMs also introduce a second layer of "epistemic uncertainty" due to their capacity for generating confident yet sometimes inaccurate or "hallucinated" outputs. Their "calibration gap"—a mismatch between their internal confidence and actual accuracy—raises a critical question: How does the LLM calibration gap interact with the pre-existing *human* calibration gap in the energy domain? A novel theoretical consideration is the potential for *domain-specific bias transfer*: Do individuals project their own known energy-related cognitive biases (e.g., range compression) onto their expectations of LLM performance? Understanding this interaction is crucial for predicting whether LLMs will help correct or inadvertently reinforce existing human misperceptions.

Drawing on **bounded-rationality theory** (Simon) and decades of work on **automation misuse/disuse** (Lee & See, 2004; Massachusetts Institute of Technology, cited in source), we argue that users may default to heuristic cues—fluency, confidence, anthropomorphic language—when judging LLM outputs, particularly when lacking domain or AI expertise. This can lead to *miscalibrated trust*—trust that does not align with the system's actual reliability—resulting in potentially harmful over-reliance on inaccurate outputs or beneficial under-use of capable systems. Our framework adopts the concept of *appropriate trust*—aligning user trust with the LLM’s true capabilities—as a core theoretical goal.

We propose that **prior knowledge and skills** modulate users' critical evaluation and trust calibration. Three literacies function as "epistemic vigilance" mechanisms, enabling users to scrutinize LLM outputs:
*   **Numeracy** supports quantitative plausibility checks, helping users identify unrealistic numerical estimates provided by the AI.
*   **Energy literacy** (particularly cognitive and action knowledge) enables the detection of technically implausible claims or ineffective conservation strategies suggested by the AI, facilitating error spotting in the domain context. Financial energy literacy is crucial for evaluating cost-related advice.
*   **AI literacy** (both objective knowledge of limitations and self-reported critical evaluation facets) affords awareness of AI failure modes like hallucinations, data cut-offs, and sensitivity to prompts, promoting more cautious and nuanced evaluation.

When these competencies are low, users may be more susceptible to the *calibration gap*, potentially exhibiting high subjective confidence paired with low objective correctness, as documented in recent LLM work (Steyvers et al., 2025; Agüera y Arcas, 2021). Conversely, excessively low trust (disuse) may arise when dispositional distrust overrides signals of accurate AI performance.

Furthermore, users' **mental models** of how LLMs function (e.g., anthropomorphic vs. mechanistic views, understanding of data access, reasoning process, fallibility) are expected to shape their interpretation of LLM outputs and subsequent trust. Anthropomorphic views may lead to over-attribution of capability and unwarranted trust, while mechanistic views may promote more critical evaluation.

Our framework therefore integrates individual differences (literacies, dispositional trust), mental models, subjective perceptions, objective calibration (confidence-accuracy alignment), and the concept of *domain-specific bias transfer* to predict behavioral intentions and reliance behaviors regarding LLM advice in the household energy domain.

---

**2) Proposal Research Questions and Hypotheses (Rewritten)** [Synthesizing 7, 11, 16, 26, 29, 33, 37]

Building on the integrated theoretical framework, this study addresses four primary research questions (RQs) and associated directional hypotheses (Hs), focusing on lay perceptions, calibration, and reliance on LLMs for household energy management tasks. The study is exploratory in examining *variance* in beliefs and trust across individuals, but we also propose directional hypotheses based on theory:

*   **RQ1: What are lay individuals' baseline perceptions of current LLMs' accuracy and utility for specific household energy tasks (e.g., estimating appliance consumption, designing conservation plans), and how do these perceptions reflect known human cognitive biases in energy judgments?**
    *   **H1a (Human Bias Replication):** Consistent with prior research (Attari et al., 2010; Marghetis et al., 2019), participants' own estimates of appliance energy use and savings effectiveness (measured via tasks like the Attari et al. estimation task) will exhibit systematic cognitive biases, particularly range compression (underestimating high consumption/savings, overestimating low consumption/savings).
    *   **H1b (Bias Projection):** Lay individuals' subjective perceptions of LLM accuracy for energy estimation tasks will be positively correlated with the degree of bias (or negatively correlated with the accuracy) in their *own* energy estimates from a parallel task. This suggests users may project their existing (mis)perceptions and cognitive biases onto their evaluation of the AI's capabilities rather than making an objective assessment.
    *   **H1c (Baseline Perceptions):** On average, lay participants will perceive current LLMs as moderately to highly accurate and useful for household energy management tasks. However, we hypothesize they will overestimate the LLMs' accuracy compared to objective benchmarks (tested in RQ4), reflecting a general tendency towards over-trust or over-attribution of capability to fluent AI systems (Agüera y Arcas, 2021; Steyvers et al., 2025). Perceived accuracy, utility, and task-specific trust (RQ1) are expected to differ depending on the task type (e.g., factual recall vs. quantitative estimation vs. complex planning).
*   **RQ2: To what extent do individual differences in objective numeracy, multidimensional energy literacy (cognitive knowledge, affective, behavioral, action, financial), and AI literacy (objective knowledge, self-reported facets) predict: (a) subjective lay beliefs about LLM accuracy and utility for energy tasks, (b) the accuracy and sophistication of users' mental models of LLMs, and (c) objective trust calibration scores when evaluating LLM outputs in the energy domain?**
    *   **H2a (Numeracy):** Higher objective numeracy (e.g., Berlin Numeracy Test) will be associated with (a) more nuanced subjective beliefs about LLM quantitative accuracy (e.g., less likely to expect perfect accuracy, but potentially higher perceived accuracy compared to biased human estimates) and (c) better objective calibration scores when evaluating numerical LLM outputs (e.g., lower Brier scores, less over/underconfidence), reflecting an enhanced ability for quantitative plausibility checks (Peters et al., 2022).
    *   **H2b (Energy Literacy):** Higher cognitive and action energy literacy will be associated with (a) more critical or skeptical subjective beliefs about LLM accuracy and trustworthiness, particularly for tasks susceptible to human bias or involving complex planning, as domain knowledge facilitates error spotting. Higher financial energy literacy will specifically predict better evaluation of LLM outputs related to costs and savings. These domain-specific evaluation abilities are expected to contribute to (c) better objective trust calibration for energy-related outputs.
    *   **H2c (AI Literacy):** Higher objective AI literacy (knowledge of LLM limitations via MCQs) and higher self-reported AI literacy facets related to critical evaluation (e.g., MAILS Detect AI, Know & Understand AI, potentially MAILS short form) will be associated with (a) more cautious or nuanced subjective beliefs about LLM capabilities (e.g., higher perceived likelihood of hallucination), (b) more accurate or mechanistic mental models of LLM functioning (e.g., understanding pattern matching, data limitations), and (c) better objective trust calibration scores. Conversely, higher self-reported AI literacy facets related to Use & Apply AI might correlate with higher perceived utility, potentially independent of calibration.
    *   **H2d (Literacy Interactions - Exploratory):** We will explore potential interactions between specific facets of energy literacy and AI literacy in predicting subjective beliefs, mental model characteristics, and objective calibration. We hypothesize that lacking sufficient literacy in both relevant domains (energy and AI) may represent a significant risk factor for miscalibrated trust and increased susceptibility to erroneous AI outputs.
*   **RQ3: How do subjective perceptions of LLM accuracy/utility for specific energy-related tasks and associated task-specific trust in LLM outputs, alongside objective reliance calibration, jointly influence lay individuals' stated behavioral intentions to rely on (accept, verify, reject) LLM advice in concrete energy-related decision scenarios, and their self-reported frequency of using LLMs for such tasks?**
    *   **H3a:** Higher task-specific perceived LLM accuracy, higher task-specific trust, and better objective trust calibration (lower miscalibration) will independently predict a greater stated willingness to rely on (i.e., accept without verification) LLM advice in energy-related decision scenarios (Buçinca et al., 2021; Chen & Zhao, 2025, cited in source). Those with better calibration are specifically expected to choose "verify" more often than "accept" or "ignore" in scenario tasks.
    *   **H3b:** Higher self-reported frequency of past LLM use for energy tasks will be positively associated with higher task-specific perceived accuracy, utility, and trust, reflecting a potential influence of experience on perceptions and reliance.
*   **RQ4: How does dispositional trust and distrust in AI mediate or moderate the relationships between task-specific perceptions/objective calibration and scenario-based reliance intentions/past usage frequency?**
    *   **H4a (Miscalibration Evidence):** We expect to find empirical evidence of significant trust miscalibration (Steyvers et al., 2025). Specifically, we hypothesize that over-trust (placing more confidence/reliance in LLM outputs than warranted by their actual accuracy) will be more prevalent than under-trust among the general population interacting with LLMs in the energy domain.
    *   **H4b (Dispositional Moderation):** Dispositional Trust in AI (measured via scales like TPA Trust factor or TAI) is hypothesized to positively moderate the relationship between favorable task-specific subjective perceptions/objective calibration and reliance intention/frequency (i.e., this link will be stronger for those high in dispositional trust). Dispositional Distrust in AI (measured via scales like TPA Distrust factor) is hypothesized to negatively moderate this relationship (i.e., the positive effect of favorable specific perceptions/calibration will be weaker or potentially reversed for those high in dispositional distrust).
    *   **H4c (Mediation Exploration):** We will explore potential mediation effects, such as whether specific favorable subjective perceptions of LLM capabilities for energy tasks or positive objective calibration feedback lead to increased general dispositional trust in AI, which in turn predicts greater willingness or frequency of use.

---

**3) Measuring User Mental Models of LLMs (Rewritten)** [Synthesizing 3, 5, 10, 15, 17, 19, 20, 36]

To capture the complexity, richness, and potential idiosyncrasies of users' mental models of LLMs, moving beyond simplistic self-report is crucial. A multi-method approach combining quantitative scales, objective knowledge items, and qualitative data will be employed. This approach aims to uncover what participants *think* the LLM is doing and capable of (e.g., does it "know" facts, perform logical reasoning, have real-time data access, possess limitations like hallucinations?), which influences their trust and reliance.

The measurement strategy includes:

1.  **Attributional Beliefs Scale:** A new 6-item scale will be used to capture users' attributional beliefs about the LLM's nature, probing whether they attribute human-like characteristics or view it as a more tool-like or mechanistic system. This scale includes items probing concepts such as whether the AI "understands" questions like a human, or is "basically a smart search engine," and includes reverse-coded items reflecting a mechanistic view. This scale aims to differentiate anthropomorphic versus mechanistic mental model orientations. Pilot testing is required to confirm its psychometric properties.
2.  **Objective Knowledge Questions on LLM Limitations:** Three multiple-choice questions will assess participants' objective knowledge of critical LLM limitations. These include questions targeting awareness of:
    *   The risk of "hallucinations" (confidently generating incorrect information).
    *   Training data cut-offs (lack of real-time knowledge).
    *   Absence of physical sensors or real-world perceptual understanding.
    Correct answers on these items serve as an objective indicator of AI literacy related to understanding LLM fallibility.
3.  **Open-Ended Prompt for Reasoning Style:** A brief open-ended prompt (e.g., "In two sentences, please describe how you think an AI like ChatGPT generates its responses to your questions") will capture participants' conceptual models in their own words. These responses will be qualitatively coded to identify common themes and classify reasoning styles (e.g., anthropomorphic descriptions emphasizing understanding or thought processes vs. mechanistic descriptions focusing on pattern matching, data processing, or algorithms). Dual coding will be employed to ensure reliability of thematic analysis.

This multi-method approach provides a richer understanding of users' mental models than any single method alone, capturing subjective beliefs, objective knowledge, and spontaneously expressed conceptualizations. We hypothesize that these different facets of mental models will relate to perceived AI accuracy, trust calibration, and reliance behaviors.

---

**4) Background and Rationale (Rewritten)** [Synthesizing 6, 9, 10, 17, 28]

The proliferation of Large Language Models (LLMs) like ChatGPT, Gemini, and Claude marks a significant shift in how individuals access information and seek advice across various domains. Increasingly, these powerful AI systems are consulted for practical guidance, extending into complex areas such as personal finance, health, and, pertinent to this proposal, household energy management. The energy domain presents a unique and critical context due to its societal importance for sustainability, its direct impact on personal finance, and the well-documented prevalence of cognitive biases and bounded rationality influencing consumer energy decisions.

Decades of research demonstrate that individuals often possess flawed mental models of energy consumption and potential savings. They rely on cognitive heuristics rather than accurate calculations, leading to suboptimal choices regarding energy use and conservation. Studies consistently show systematic biases, such as underestimating the energy use of high-consumption devices (e.g., dryers, air conditioners, HVAC) and overestimating the impact of highly visible but low-energy actions (e.g., turning off lights), while often underestimating savings from high-impact efficiency measures (like insulation). These misperceptions stem from individuals operating under *bounded rationality*—making decisions with limited information, cognitive capacity, and time—and relying on *cognitive heuristics* such as the availability heuristic (judging impact based on ease of recall) and attribute substitution (replacing difficult energy questions with simpler cues like size or temperature). These pervasive human cognitive limitations and biases set the stage for potential benefits and significant risks when introducing LLMs as potential information sources or decision aids in this domain.

LLMs can be conceptualized as external cognitive tools that might help overcome bounded rationality by providing quick estimates, summarizing complex information, or generating personalized plans. However, LLMs themselves are imperfect; they are prone to generating inaccurate information ("hallucinations"), reflecting biases in their training data, and possessing knowledge cutoffs. A significant concern is the potential for a "calibration gap"—a mismatch between the LLM's actual capabilities and users' perception of those capabilities. If users, particularly those lacking domain-specific energy knowledge, overestimate LLM accuracy or utility for energy tasks, they risk relying on flawed advice. Accepting flawed energy estimates or ineffective conservation plans generated by an LLM could lead to wasted effort, financial loss, and ultimately, disillusionment with energy-saving efforts. This risk is compounded by the observation that LLM explanation length can sometimes increase user confidence irrespective of actual accuracy improvements.

Conversely, excessive skepticism or under-reliance might prevent users from benefiting from genuinely helpful AI capabilities, such as rapid cost calculations, identification of effective conservation strategies, or understanding complex energy tariffs. Therefore, understanding the factors that shape lay perceptions, trust calibration, and reliance decisions regarding LLMs in the energy domain is crucial.

Despite the growing body of research on human-AI interaction, trust, and calibration, significant gaps remain in understanding how these dynamics unfold *specifically* within the household energy context. Little is known about how individual differences in relevant literacies (energy, AI, numeracy), pre-existing cognitive biases related to energy judgments (e.g., range compression), and users' mental models of LLM capabilities interact to shape perceptions of accuracy, trust calibration, and reliance intentions.

This study aims to address this gap by investigating lay perceptions, trust calibration (measured both subjectively and behaviorally), and reliance intentions regarding LLMs for household energy tasks. A unique contribution lies in examining the potential transfer or interaction of domain-specific human biases (energy estimation errors) with the evaluation of LLM performance, moderated by individual differences in literacies and trust dispositions. By moving beyond simple belief assessment to incorporate objective measures of calibration and more nuanced assessments of mental models and behavioral intentions, this study aims to provide a rigorous understanding of human-LLM interaction dynamics in this critical area.

---

**Rationale and Implications (Rewritten)** [Synthesizing 5, 8, 17, 20, 36]

This research represents a novel and important investigation into the emerging landscape of human-AI interaction, specifically addressing the under-explored intersection of user interaction with Large Language Models (LLMs) for household energy management tasks. The study is grounded in pertinent theoretical literatures, drawing insights from energy decision-making, cognitive psychology, and human-AI interaction to illuminate how individual differences and AI characteristics combine to influence trust and reliance in this domain.

**Rationale:** The selection of household energy management is highly relevant due to its societal importance for sustainability and personal financial well-being, coupled with the established reality of pervasive human cognitive biases in this area. Introducing LLMs as potential decision aids creates a unique "dual-bias environment" where understanding the interaction between pre-existing human misperceptions and the "epistemic uncertainty" of AI (e.g., hallucinations) is critical. Focusing on *calibrated trust*—ensuring user trust aligns with the AI's actual capabilities—is paramount to prevent detrimental over-reliance on potentially flawed energy advice or disuse of beneficial AI functions.

The proposed study design, incorporating objective measures for key constructs like numeracy, objective AI literacy, and critically, trust calibration through a confidence-accuracy task, addresses significant weaknesses identified in earlier proposals, which relied too heavily on subjective self-reports. The multi-method approach to measuring mental models and the inclusion of scenario-based behavioral intentions provide a more robust assessment than previously envisioned. The explicit linkage of established cognitive biases in energy perception (Attari et al., 2010) with user perceptions of LLMs in this domain represents a key theoretical strength and contribution—exploring the hypothesis of domain-specific bias transfer. The integration of multidimensional literacies (energy, AI, numeracy) as hypothesized *epistemic vigilance* mechanisms modulating critical evaluation is well-justified and central to understanding predictors of calibrated trust.

**Implications:** The findings of this study hold significant implications for theory, design, and practice:

*   **Theoretical Implications:** The research will contribute to the theoretical understanding of human-AI interaction dynamics, particularly how domain-specific knowledge and biases intersect with AI literacy and mental models to shape trust calibration and reliance. It will provide empirical evidence for the extent of miscalibration with LLMs in a high-stakes decision domain and clarify the roles of different individual differences (literacies, dispositional trust) in predicting these outcomes. Exploring domain-specific bias transfer adds a novel layer to AI user research.
*   **Design Implications:** Insights gained can inform the design of more trustworthy and usable AI systems for energy management. Understanding how users' mental models influence their evaluation of LLMs can guide the development of more transparent or explanatory AI interfaces. Identifying specific literacy gaps or cognitive biases that lead to miscalibration can inform the design of *cognitive forcing functions* or other interface features that encourage appropriate scrutiny or verification of AI outputs (Buçinca et al., 2021). Findings on the perception and impact of LLM uncertainty communication (Steyvers et al., 2025) can guide how LLMs should express confidence levels or limitations in energy advice.
*   **Practical Implications:** The research provides actionable insights for energy companies, policymakers, and educators developing resources or tools for consumer energy decisions. Understanding which users are most vulnerable to miscalibrated trust in AI (e.g., those low in both energy and AI literacy, as explored in H2d) can help target educational interventions. Tailored literacy training focusing on energy concepts, numerical reasoning, and understanding AI capabilities/limitations could empower users to make better decisions with or without AI assistance. The study highlights the need for critical evaluation of AI-generated advice in sensitive domains like energy.

**Remaining Issues and Future Directions:** [Synthesizing 8, 14, 17] Despite significant revisions, certain limitations are inherent to the cross-sectional survey design, which cannot establish causal relationships or track changes over time. Reliance is measured via scenario-based intention rather than actual observed behavior with an LLM. The online recruitment may introduce sampling biases. Assessing beliefs about "LLMs in general" does not capture potential variations across specific models. Measurement depends on the accessibility and ongoing validation of specific scales (e.g., AICOS, MAILS short form, TPA two-factor) in the target population. While individual factors are key, broader socio-cultural factors or specific interface design choices (beyond basic uncertainty cues) are not deeply explored.

*   *Future Research Directions:* Behavioral experiments involving real LLM interaction tasks could provide direct measures of reliance and performance outcomes. Qualitative methods (think-aloud, interviews) could offer deeper insight into mental models and reasoning. Longitudinal studies are needed to track adaptation over time. Interventions (literacy training, interface design) should be developed and tested based on findings. Comparative studies across different LLM models and variations in task complexity or stakes are also warranted.

Pilot testing is crucial before the main study to validate custom items (attributional beliefs, scenario choices), refine wording, confirm scale properties, and assess the feasibility and flow of the behavioral calibration task. This iterative process ensures the final instrument is robust and reliable.

---

**Scenario-Based LLM Beliefs Questions**

Building on the need for specificity and scenario-based measures of beliefs, here are some suggestions for Scenario-Based LLM Beliefs questions, focusing on perceived accuracy and utility within concrete energy contexts:

For each scenario, participants would read a brief description and then rate their belief about an LLM's capability for that specific task, perhaps using Likert scales (e.g., 1 = Very Inaccurate/Not Useful, 7 = Very Accurate/Extremely Useful).

*   **Scenario 1 (Factual Recall - Low Bias Risk):** "Imagine you ask an AI like ChatGPT to explain the basic principle of how a solar panel converts sunlight into electricity."
    *   *Question:* "How accurate do you think the AI's explanation would be?"
    *   *Question:* "How useful do you think the AI's explanation would be for understanding solar power?"
*   **Scenario 2 (Quantitative Estimation - High Consumption/Impact Bias Risk):** "Imagine you ask an AI like ChatGPT to estimate how much electricity a typical central air conditioner uses per hour when running."
    *   *Question:* "How accurate do you think the AI's estimate would be?"
    *   *Question:* "How useful do you think the AI's estimate would be for understanding your AC's impact on your bill?"
*   **Scenario 3 (Quantitative Estimation - Low Consumption/Impact Bias Risk):** "Imagine you ask an AI like ChatGPT to estimate how much electricity a single LED light bulb uses per hour when turned on."
    *   *Question:* "How accurate do you think the AI's estimate would be?"
    *   *Question:* "How useful do you think the AI's estimate would be for reducing your overall energy use?"
*   **Scenario 4 (Complex Planning - High Bias/Uncertainty Risk):** "Imagine you provide an AI like ChatGPT details about your home (size, appliances, insulation) and ask it to create a detailed, personalized plan to reduce your annual energy consumption by 20%."
    *   *Question:* "How accurate do you think the AI's personalized plan would be?"
    *   *Question:* "How useful do you think the AI's personalized plan would be for actually reducing your energy use?"

These scenario-based belief questions provide more context-specific data than generic questions and, when aligned with human estimation tasks (H1a/H1b) and potential behavioral scenarios (RQ3/H3a), strengthen the study's ability to test key hypotheses about bias projection and task-specific evaluation.

Concluding critique protocol. The analysis reveals significant opportunities for refinement addressed by the proposed revisions. The rewritten sections aim to provide a robust theoretical foundation and methodological approach grounded in comprehensive literature.