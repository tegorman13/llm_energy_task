
# Current Draft of Energy AI Literacy Proposal


# current study proposal

This proposal investigates lay perceptions regarding the accuracy and utility of Large Language Models (LLMs) for household energy management tasks, such as estimating appliance energy use and creating personalized conservation plans, areas known for significant human misperceptions rooted in cognitive heuristics and bounded rationality. Grounded in theories of energy decision-making, literacies (energy, AI, numeracy), and human-AI trust calibration, the research aims to understand prevailing beliefs about LLM capabilities in this domain and how these beliefs are shaped by individual differences. Key hypotheses posit that higher numeracy, energy literacy, and AI literacy will correlate with potentially better-calibrated or more critical assessments of LLM performance, mitigating risks associated with inaccurate LLM outputs ("hallucinations") or miscalibrated trust, while perceived LLM accuracy and both general and task-specific trust are expected to predict users' willingness to rely on these tools for energy-related decisions.

## Background and Rationale


Achieving substantial reductions in residential energy consumption remains a critical, yet elusive, goal for climate mitigation efforts, often hampered by the complexities of consumer cognition and decision-making. A robust literature establishes that lay understanding of household energy use is frequently characterized by systematic misperceptions, particularly the concurrent underestimation of high-consumption activities (e.g., heating, major appliances) and overestimation of savings from lower-impact actions (e.g., turning off lights), phenomena extensively documented by Attari et al. (2010) and others (Kantenbacher & Attari, 2021). These inaccuracies, often stemming from reliance on readily available but potentially misleading cognitive heuristics—such as judging energy use by appliance visibility, operational duration, or perceived heat output (Schille-Hudson et al. 2021). Such patterns align with bounded-rationality frameworks, which posit that cognitive limitations and incomplete information lead consumers toward satisficing rather than optimizing energy decisions (Blasch, Filippini, & Kumar, 2019; Simon, 1957).


The emergence of sophisticated Large Language Models (LLMs), exemplified by systems like ChatGPT, Gemini, and Claude, introduces a novel technological affordance potentially capable of mitigating these cognitive barriers. Through natural language interaction, LLMs could ostensibly simplify complex energy information, provide tailored estimations of appliance consumption, and assist in formulating personalized conservation strategies, thereby augmenting users' decision-making capabilities (Attari & Rajagopal, 2015). However, the practical utility and safety of employing LLMs in this quantitatively sensitive domain are contingent not only upon their evolving, yet imperfect, technical capabilities—which include a noted propensity for generating fluent but factually incorrect outputs or "hallucinations" (Choe et al., 2024)—but also, crucially, upon the dynamics of human-AI interaction.

Despite the rapid integration of LLMs into various informational ecosystems, there remains a lack of empirical work on user perceptions of their specific competence and reliability for the nuanced, quantitative tasks inherent in household energy management. It is largely unknown whether individuals believe LLMs can accurately perform tasks known to challenge human intuition (Attari et al., 2010) or generate genuinely personalized and effective energy-saving plans. Specifically, how lay individuals perceive the capabilities of LLMs for distinct energy-related tasks, and the extent to which these perceptions are modulated by pertinent individual differences, remains a largely under-investigated empirical question. 




## Theoretical Framework

This research is situated at the intersection of several theoretical domains relevant to energy decision-making, information processing, and human-AI interaction:

* **Misperceptions, Cognitive Heuristics, and Bounded Rationality in Energy Judgments:** 
Empirical work demonstrates that individuals possess flawed mental models of energy consumption and savings (Attari et al., 2010; Lesic et al., 2018). These misperceptions can lead to suboptimal energy-related decisions. An LLM, if perceived as knowledgeable and accurate, could potentially serve as an external source to correct these misperceptions or provide more reliable estimates, yet users' beliefs about the AI's ability to do so may themselves be subject to cognitive biases.

We adopt the empirically supported view that lay judgments about energy consumption are frequently inaccurate due to reliance on cognitive heuristics rather than deliberative calculation (Attari et al., 2010; Schley & DeKay, 2015). A crucial theoretical question is how the "calibration gap" (Steyvers et al. 2025) observed with LLMs plays out in the energy domain, where users already have significant pre-existing misperceptions. Will higher energy literacy, which provides a more accurate baseline understanding, enable users to better detect errors in LLM outputs, thus improving trust calibration? Will AI literacy, specifically the 'Detect AI' factor, play a similar role? Within a bounded rationality framework (Simon, 1957; Blasch et al., 2019), LLMs can be conceptualized as potential external cognitive aids; however, their effective use requires users to navigate both their own cognitive limitations and the credibility of AI-generated outputs. 

* **Literacies as Modulators of Information Processing and Evaluation:** Individual differences in cognitive skills and domain knowledge critically shape the ability to seek, interpret, evaluate, and act on complex information, including LLM outputs.
    * *Energy Literacy,* a multidimensional construct including cognitive knowledge, affective attitudes, and behavioral engagement (DeWaters & Powers, 2011; Van Den Broek, 2019), provides the necessary framework for assessing the plausibility and relevance of LLM energy advice (Andolfi et al., 2024). Higher cognitive energy literacy, specifically, should enable more discerning judgment.
    * *AI Literacy,* encompassing knowledge of AI principles, capabilities, limitations, ethics, and critical evaluation skills (Carolus et al., 2023; Lintner, 2024; Pinski & Benlian, 2024), is theorized to directly influence perceptions of LLM functionality and the calibration of reliance. Understanding LLM fallibility is key for critical evaluation in specific domains, although literacy's impact on mitigating over-reliance remains complex (Morrill & Noetel, 2023; Puppart & Aru, 2025).
    * *Objective Numeracy,* the ability to comprehend and manipulate fundamental numerical concepts (Cokely et al., 2012; Peters et al., 2006), is essential for processing quantitative energy data (kWh, savings). 

* **Calibrated Trust Theory and Human-AI Reliance Dynamics:** Trust, within the human-AI interaction paradigm, is conceived not as a monolithic entity but as a multifaceted psychological construct involving dynamic evaluations of an AI's perceived competence, reliability, integrity, and potentially benevolence (Lee & See, 2004). These trust perceptions, potentially differentiable into cognitive (capability-based) and affective (relationally-based) components (Shang et al., 2025), are theorized to significantly influence decisions regarding reliance on AI systems (Buçinca et al., 2021; Chen & Zhao, 2025). *Calibrated trust*—a state where the user's level of trust accurately aligns with the AI's demonstrable performance characteristics for a given task—is considered optimal for promoting effective and safe collaboration. Beliefs about an AI's specific capabilities (e.g., accuracy in energy estimation) serve as primary antecedents to cognitive trust judgments. However, broader dispositional trust or distrust in AI systems, potentially reflecting generalized attitudes or prior experiences, may further moderate reliance decisions, potentially overriding task-specific capability assessments (Scharowski et al., 2025; Carter & Liu, 2025). Recent findings also highlight potential dissociations between objective performance improvements facilitated by AI and users' subjective metacognitive awareness, suggesting that reliance decisions may not always be grounded in accurate self-assessment of the human-AI dyad's performance (Fernandes et al., 2024).




### **3. Research Questions and Hypotheses**

This study seeks to address the following research questions (RQs):

* **RQ1:** What are the prevailing lay beliefs concerning the accuracy and utility of contemporary LLMs (e.g., ChatGPT, Gemini, Claude) for (a) estimating appliance-level electricity use, using metrics conceptually similar to those employed by Attari et al. (2010), and (b) designing personalized household energy-saving plans? How do individuals differentiate their trust in LLMs for providing specific factual energy information versus generating comprehensive, personalized plans?

* **RQ2:** To what extent do individual differences in objective numeracy (Berlin Numeracy Test), multidimensional energy literacy (cognitive knowledge, affective, and behavioral components), and AI literacy (MAILS short form facets) predict these lay beliefs about LLM capabilities (accuracy, utility, trustworthiness) in the energy domain?

* **RQ3:** How do perceptions of LLM accuracy for specific energy-related tasks and associated task-specific trust in LLM outputs jointly influence lay individuals' self-reported willingness to utilize LLMs for energy-related decisions and their self-reported frequency of such usage in the recent past?

* **RQ4:** Do general trust and distrust in AI, measured via validated scales assessing factors like competence, benevolence, and integrity (TPA-revised) and semantic differentials (Semantic-Differential AI-Trust scale), mediate or moderate the relationship between specific beliefs about LLM capabilities for energy tasks and self-reported willingness/frequency of use?

Based on the integration of the theoretical frameworks and empirical literature reviewed above, the following directional hypotheses (H) are proposed:

* **H1:** Laypeople will perceive LLMs as relatively accurate for energy estimation and planning, but their accuracy perceptions will reflect, to some extent, known human biases such as overestimating the impact of low-energy activities (curtailment) and underestimating high-energy activities (efficiency improvements). 
* **H2a:** Higher objective numeracy will be associated with beliefs reflecting a potentially better-calibrated (i.e., less extreme or variable) assessment of LLM quantitative capabilities for energy estimation tasks compared to lower numeracy individuals.
* **H2b:** Higher energy literacy (particularly the cognitive knowledge component) will be associated with more critical evaluation of LLM outputs, potentially leading to beliefs that are more skeptical of LLM accuracy, especially concerning complex planning or nuanced energy concepts, compared to individuals with lower energy literacy who may lack the domain knowledge to identify implausible AI suggestions. 
* **H2c:** Higher AI literacy (especially facets related to understanding limitations and critical evaluation from MAILS) will be associated with more cautious or nuanced beliefs about LLM capabilities, potentially mitigating tendencies towards uncritical acceptance of LLM accuracy claims. Conversely, high scores on AI usage/application facets might correlate with more positive beliefs, possibly reflecting positive past experiences or general technophilia, suggesting a potential interaction between understanding and application orientation.
* **H3:** More favorable beliefs regarding LLM accuracy and trustworthiness for energy tasks will be positively associated with greater self-reported willingness to use LLMs for energy decisions in the future, consistent with models where perceived competence and usefulness drive behavioral intentions (Chen & Zhao, 2025). 
* **H4:** General trust in AI is hypothesized to mediate the positive relationship between favorable specific beliefs about LLM energy capabilities and willingness/frequency of use. That is, believing an LLM is effective for energy tasks may bolster general AI trust, which in turn promotes use intentions and reported behavior.


# Current Draft of Energy AI Literacy Proposal


## Methods

**Design:** This study will employ a quantitative, cross-sectional online survey design to concurrently assess individual differences, beliefs, trust perceptions, and self-reported behavioral intentions and past behavior regarding LLM use for energy decisions.

### Individual Difference Measures (Predictors):

The survey will collect data on the following measures:

*   **Objective Numeracy:** Assessed using a validated measure such as the Berlin Numeracy Test.
*   **Multidimensional Energy Literacy:** Assessed using a composite measure drawing items from existing literature or scales covering device energy literacy, action energy literacy, and financial energy literacy, aligned with the typology by Van Den Broek. Items will probe knowledge about typical energy consumption of various appliances (e.g., refrigerator, lighting, HVAC) and estimated savings from common actions (e.g., adjusting thermostat, using energy-efficient bulbs). Financial energy literacy items will assess understanding of concepts like lifetime cost.
*   **AI Literacy:** Assessed using the MAILS short form questionnaire. This scale is designed for the general population and measures dimensions such as Use & Apply AI, Know & understand AI, Detect AI, AI Ethics, AI Self-efficacy, and AI Self-competency.
*   **General Trust in AI:** Assessed using items adapted from the TPA scale, focusing on the competence (capability/reliability) and benevolence/integrity factors, rephrased for general AI systems. This aligns with recommendations to use validated questionnaires where possible, while acknowledging the need for adaptation for the AI context.
*   **General Distrust in AI:** Assessed using items probing general skepticism, wariness, or lack of confidence in AI systems. 
*   **Self-Reported Willingness to Use LLMs for Energy Decisions:** Participants will be asked about their likelihood of using an LLM in the future to get information about appliance energy use, estimate savings from actions, or help create an energy-saving plan (Likert scale).
*   **Self-Reported Past-Month Frequency of Using LLMs for Energy Decisions:** Participants will be asked how often (e.g., Never, Rarely, Sometimes, Often, Very Often) they have used any LLM (e.g., ChatGPT, Gemini) in the past month for tasks related to understanding or reducing their household energy consumption. Self-report measures of behavior are susceptible to social desirability bias and may reflect perceived behavior rather than actual behavior, but are necessary for assessing complex, infrequent actions.

### Measuring User Mental Models of LLMs  

* **Probing Lay Beliefs and Mental Models of LLM Capabilities:** This component assesses participants' internal representations—their mental models—of how contemporary LLMs function and what they are capable of achieving within the household energy domain. Recognizing that lay users' understanding of LLM mechanisms is often nascent and potentially filtered through pre-existing (mis)conceptions about both AI capabilities and energy use phenomena (Attari et al., 2010), we employ targeted probes. These aim to map users' tacit theories regarding what an LLM "knows," how it appears to reason, and where its limitations might lie, as these models are crucial prerequisites for achieving calibrated trust and determining appropriate verification strategies (Buçinca et al., 2021). Building on observations of a persistent "calibration gap" where user confidence can diverge from actual LLM reliability (Steyvers et al., 2025), we assess beliefs along several complementary dimensions:

	* **Perceived Factual Accuracy:** This assesses beliefs about the LLM's ability to provide *correct, non-numerical information* related to energy principles and conservation practices. Participants rate, using Likert-type scales (e.g., 1=Very Inaccurate, 7=Very Accurate), their confidence in a "state-of-the-art AI chatbot" to accurately answer qualitative or comparative questions, such as identifying the most energy-efficient type of appliance (e.g., "Which type of water heater generally uses less energy?") or verifying common energy myths (e.g., "Is it true that appliances use no power when turned off but still plugged in?"). This probes perceived reliability for retrieving and presenting established domain knowledge, distinct from quantitative calculation.

	* **Perceived Estimation Accuracy:** This focuses specifically on *quantitative competence*. Participants rate (similar Likert scales) their belief in the LLM's accuracy for estimating numerical energy consumption metrics (e.g., annual kWh, operating cost in USD) for specific benchmark household appliances drawn from Attari et al. (2010), covering a range from low to high energy use (e.g., LED bulb, laptop computer, refrigerator, electric clothes dryer). Juxtaposing these ratings against known human bias patterns (e.g., range compression) allows exploration of whether users project their own difficulties onto the AI or expect superior quantitative performance.

	* **Perceived Planning Competence:** This assesses beliefs about the LLM's capability for more complex synthesis, personalization, and strategic reasoning tasks. Participants rate (similar scales) the perceived effectiveness, realism, and likely impact of an LLM in generating a *personalized* energy-saving plan tailored to a hypothetical household profile to meet a specific reduction goal (e.g., 15% usage cut). This probes beliefs about the LLM's ability to identify high-impact actions, translate abstract goals into concrete steps, and account for contextual factors, moving beyond simple recall or estimation.

	* **Task-Specific Trust and Intended Reliance:** Directly following the accuracy belief probes for factual answers, estimations, and plans, separate items assess trust and reliance specifically tied to those outputs. Using Likert scales (e.g., 1=Do not trust at all, 7=Trust completely), items ask: "How much would you trust the factual accuracy of this type of energy information provided by the AI?" or "How much would you trust this AI-generated estimate/plan to be reliable?". Additional items probe reliance propensity, such as "How likely would you be to act on this specific advice/plan without seeking a second opinion?". This differentiation allows examination of how trust and reliance intentions might vary across different perceived LLM functions (informant vs. calculator vs. advisor) and potentially diverge from perceived accuracy ratings.

	* **Attributional Beliefs** To further unpack the underlying assumptions driving accuracy perceptions and trust, this section probes agreement (e.g., 1=Strongly Disagree, 7=Strongly Agree) with statements reflecting potential mental models of LLM operation in the energy context. Items tap into beliefs regarding:
		* *Data Access & Knowledge Base:* e.g., "The chatbot has real-time access to comprehensive and up-to-date energy usage databases."
		* *Potential for Error/Fabrication:* e.g., "The chatbot might sometimes confidently invent ('hallucinate') numbers or facts about energy that sound plausible but are incorrect."
		* *Contextual Understanding & Personalization:* e.g., "The chatbot can accurately infer details about my specific home situation to give truly personalized advice." vs. "The chatbot's advice is likely too generic and ignores important variations between households."
		* *Nature of Processing:* e.g., "The chatbot genuinely understands energy principles in a way similar to a human expert." vs. "The chatbot primarily matches word patterns from its training data without true understanding."
		These items aim to classify users' mental models along continua such as expert-like/anthropomorphic versus statistical/pattern-matching, and data-rich/omniscient versus fallible/limited.



### **Procedure**

The survey will be administered online. Participants will first provide informed consent. They will then complete measures of objective numeracy, energy literacy, and AI literacy. Subsequently, they will be presented with the hypothetical LLM outputs for appliance estimates and the energy-saving plan, providing their perceived accuracy and specific trust ratings for each. Finally, they will complete measures of general AI trust and distrust, and self-report on their willingness and past frequency of using LLMs for energy decisions. The order of presenting appliance estimates vs. energy plan may be counterbalanced to control for order effects. Debriefing will include information about the potential inaccuracies of current LLMs and links to reliable energy information resources.


## Rationale and Implications

Understanding lay beliefs about LLM capabilities in domains like household energy use is critically important. As LLMs become more accessible and widely used, they are likely to be consulted for practical advice, including complex areas where users already hold significant misperceptions. The energy domain is particularly relevant due to its importance for sustainability and the prevalence of bounded rationality in consumer decisions.

A primary risk highlighted by this research context concerns the potential for miscalibrated trust, particularly over-trust. If lay users perceive LLMs as possessing high accuracy and trustworthiness for estimating appliance energy consumption or generating personalized saving plans—even when these systems may be prone to significant errors, biases, or "hallucinations" within this specific, often quantitatively complex, domain—reliance on such outputs could lead to detrimental outcomes. For example, consumers might base purchasing decisions for major appliances on inaccurate LLM-provided energy use estimates or dedicate effort towards implementing ineffective energy-saving plans derived from flawed AI advice. Such misplaced reliance could not only undermine genuine energy reduction goals but also engender user frustration, potentially leading to disillusionment and disengagement from broader energy conservation efforts when anticipated savings fail to materialize. This risk is amplified by findings suggesting users may sometimes overestimate LLM accuracy, potentially influenced by factors like the fluency or apparent confidence of the AI's output (Fernandes et al., 2024; Horowitz & Kahn, 2023).

Conversely, significant under-trust or excessive skepticism towards LLMs for energy-related tasks could also prove suboptimal. If potential users unduly distrust LLMs, even when they might offer genuinely helpful capabilities (e.g., rapidly calculating lifetime operating costs, providing accessible summaries of complex efficiency standards, or suggesting relevant conservation actions users hadn't considered; Attari & Rajagopal, 2015), this could impede the adoption and effective utilization of a potentially valuable decision-support technology. Understanding which individual factors—such as levels of numeracy, domain-specific energy literacy, or broader AI literacy and trust orientations—predict tendencies towards either over- or under-trust is therefore crucial for designing effective user interfaces, educational interventions, or "cognitive forcing functions" (Buçinca et al., 2021) aimed at fostering better trust calibration.

This study's investigation into how numeracy, different types of energy literacy, and dimensions of AI literacy relate to perceptions of LLM accuracy and trust will illuminate who is more susceptible to these potential trust calibration issues. For instance, are individuals with low energy literacy but high general trust in technology or high AI self-efficacy more likely to over-trust LLMs in the energy domain? Does having some degree of energy literacy, particularly device or action literacy, enable users to better critically evaluate LLM-generated energy information ("Detect AI" in action)? The findings could inform the design of LLM interactions that better scaffold user understanding, highlight uncertainties, and encourage appropriate verification, ultimately helping users leverage AI as a tool to overcome, rather than potentially reinforce, cognitive barriers to energy conservation.





## References  

Andolfi, L., Marxen, H., & Frank, M. (2024). *Are you flexible enough?* …  
Attari, S. Z., DeKay, M. L., Davidson, C. I., & Bruine de Bruin, W. (2010). *Public perceptions of energy consumption and savings.* *PNAS*, 107, 16054-16059.  
Attari, S. Z., & Rajagopal, D. (2015). *Enabling energy conservation through effective decision aids.* *Journal of Sustainability Education*, 8, 1-15.  
Blasch, J., Filippini, M., & Kumar, N. (2019). *Boundedly rational consumers…* *Resource and Energy Economics*, 56, 39-58.  
Buçinca, Z., Malaya, M. B., & Gajos, K. Z. (2021). *To trust or to think…* *Proc. ACM HCI*, 5(CSCW1).  
Carolus, A., Koch, M. J., Straka, S., Latoschik, M. E., & Wienrich, C. (2023). *MAILS—Meta AI literacy scale.* *Computers in Human Behavior: Artificial Humans*, 1, 100014.  
Cokely, E. T., Galesic, M., Schulz, E., Ghazal, S., & Garcia-Retamero, R. (2012). *Measuring risk literacy…* *Journal of Behavioral Decision Making*, 25, 329-342.  
DeWaters, J. E., & Powers, S. E. (2011). *Energy literacy of secondary students…* *Energy Policy*, 39, 1699-1710.  
Fernandes, D. et al. (2024). *AI makes you smarter, but none the wiser.* arXiv:2409.16708.  
Lee, J. D., & See, K. A. (2004). *Trust in automation.* *Human Factors*, 46, 50-80.  
Lintner, T. (2024). *A systematic review of AI literacy scales.* *npj Science of Learning*, 9, 1-11.  
Morrill, J., & Noetel, M. (2023). *A short-form AI literacy intervention…* OSF Preprint.  
Puppart, B., & Aru, J. (2025). *Short-term AI literacy intervention…* arXiv:2503.10556.  
Santillán, O. S., & Cedano, K. G. (2023). *Energy literacy: A systematic review.* *Energies*, 16, 7235.  
Scharowski, N. et al. (2025). *To trust or distrust trust measures…* arXiv:2403.00582.  
Schille-Hudson, E. B. et al. (2019). *Big, hot, or bright?* In *Proc. 41st Cognitive Science Society*.  
Shang, R., Hsieh, G., & Shah, C. (2025). *Trusting your AI agent emotionally and cognitively.* In *AIES 2024* (pp. 1343-1356).  
Van Den Broek, K. L. (2019). *Household energy literacy: A critical review.* *Energy Research & Social Science*, 57, 101256.  


Attari, S. Z., DeKay, M. L., Davidson, C. I., & Bruine De Bruin, W. (2010). Public perceptions of energy consumption and savings. Proceedings of the National Academy of Sciences, 107(37), 16054–16059. https://doi.org/10.1073/pnas.1001509107

Attari, S. Z., & Rajagopal, D. (2015). Enabling energy conservation through effective decision aids. Journal of Sustainability Education, 8, 1–15.
Kantenbacher, J., & Attari, S. Z. (2021). Better rules for judging joules: Exploring how experts make decisions about household energy use. Energy Research & Social Science, 73, 101911. https://doi.org/10.1016/j.erss.2021.101911

Marghetis, T., Attari, S. Z., & Landy, D. (2019). Simple interventions can correct misperceptions of home energy use. Nature Energy, 4(10), 874–881. https://doi.org/10.1038/s41560-019-0467-2

Schille-Hudson, E. B., Margehtis, T., Miniard, D., Landy, D., & Attari, S. Z. (2019). Big, hot, or bright? Integrating cues to perceive home energy use. Proceedings of the 41st Cognitive Science Society.


Andolfi, L., Marxen, H., & Frank, M. (2024). Are you Flexible Enough? The Impact of Energy Literacy and Environmental Values on Flexibility Provision. 2024 20th International Conference on the European Energy Market (EEM), 1–8. https://doi.org/10.1109/EEM60825.2024.10608859

Blasch, J., Filippini, M., & Kumar, N. (2019). Boundedly rational consumers, energy and investment literacy, and the display of information on household appliances. Resource and Energy Economics, 56, 39–58. https://doi.org/10.1016/j.reseneeco.2017.06.001

DeWaters, J. E., & Powers, S. E. (2011). Energy literacy of secondary students in New York State (USA): A measure of knowledge, affect, and behavior. Energy Policy, 39(3), 1699–1710. https://doi.org/10.1016/j.enpol.2010.12.049

Santillán, O. S., & Cedano, K. G. (2023). Energy Literacy: A Systematic Review of the Scientific Literature. Energies, 16(21), 7235. https://doi.org/10.3390/en16217235
Van Den Broek, K. L. (2019). Household energy literacy: A critical review and a conceptual typology. Energy Research & Social Science, 57, 101256. https://doi.org/10.1016/j.erss.2019.101256


Fernandes, D., Villa, S., Nicholls, S., Haavisto, O., Buschek, D., Schmidt, A., Kosch, T., Shen, C., & Welsch, R. (2024). AI Makes You Smarter, But None The Wiser: The Disconnect Between Performance and Metacognition (No. arXiv:2409.16708). arXiv. http://arxiv.org/abs/2409.16708

Morrill, J., & Noetel, M. (2023). A short-form AI literacy intervention can reduce over-reliance on AI. OSF. https://doi.org/10.31234/osf.io/hv9qc

Pestana, C., Barros, L., Scuri, S., & Barreto, M. (2021). Can HCI Help Increase People’s Engagement in Sustainable Development? A Case Study on Energy Literacy. Sustainability, 13(14), Article 14. https://doi.org/10.3390/su13147543

Puppart, B., & Aru, J. (2025). Short-term AI literacy intervention does not reduce over-reliance on incorrect ChatGPT recommendations (No. arXiv:2503.10556). arXiv. https://doi.org/10.48550/arXiv.2503.10556

Choe, K., Lee, C., Lee, S., Song, J., Cho, A., Kim, N. W., & Seo, J. (2024). Enhancing Data Literacy On-demand: LLMs as Guides for Novices in Chart Interpretation. IEEE Transactions on Visualization and Computer Graphics, 1–17. https://doi.org/10.1109/TVCG.2024.3413195

Buçinca, Z., Malaya, M. B., & Gajos, K. Z. (2021). To trust or to think: Cognitive forcing functions can reduce overreliance on AI in AI-assisted decision-making. Proceedings of the ACM on Human-Computer Interaction, 5(CSCW1), 1–21. https://doi.org/10.1145/3449287 

Carter, D. R., & Liu, S. (2025). How was my performance: Exploring the role of anchoring bias in AI-assisted decision making. International Journal of Information Management, 82, 102875. Chen, L., & Zhao, S. (2025). Why am I willing to collaborate with AI: Exploring the desire for collaboration in human-AI hybrid g. Journal of Retailing and Consumer Services, 83, 103988.

Scharowski, N., Perrig, S. A. C., Aeschbach, L. F., Felten, N. von, Opwis, K., Wintersberger, P., & Brühlmann, F. (2025). To Trust or Distrust Trust Measures: Validating Questionnaires for Trust in AI (No. arXiv:2403.00582). arXiv. https://doi.org/10.48550/arXiv.2403.00582


Carolus, A., Koch, M. J., Straka, S., Latoschik, M. E., & Wienrich, C. (2023). MAILS - Meta AI literacy scale: Development and testing of an AI literacy questionnaire based on well-founded competency models and psychological change- and meta-competencies. Computers in Human Behavior: Artificial Humans, 1(2), 100014. https://doi.org/10.1016/j.chbah.2023.100014

Lintner, T. (2024). A systematic review of AI literacy scales. Npj Science of Learning, 9(1), 1–11. https://doi.org/10.1038/s41539-024-00264-4

Pinski, M., & Benlian, A. (2024). AI literacy for users – A comprehensive review and future research directions of learning methods, components, and effects. Computers in Human Behavior: Artificial Humans, 2(1), 100062. https://doi.org/10.1016/j.chbah.2024.100062


Shang, R., Hsieh, G., & Shah, C. (2025). Trusting Your AI Agent Emotionally and Cognitively: Development and Validation of a Semantic Differential Scale for AI Trust. Proceedings of the 2024 AAAI/ACM Conference on AI, Ethics, and Society, 1343–1356.

Horowitz, M. C., & Kahn, L. (2023). Bending the Automation Bias Curve: A Study of Human and AI-based Decision Making in National Security Contexts (No. arXiv:2306.16507). arXiv. https://doi.org/10.48550/arXiv.2306.16507