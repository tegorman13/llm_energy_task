# Surveys, Questionnaires, and Prompts from Kim et al. (2024)

Kim, S. S. Y., Liao, Q. V., Vorvoreanu, M., Ballard, S., & Vaughan, J. W. (2024). “I’m Not Sure, But...”: Examining the Impact of Large Language Models’ Uncertainty Expression on User Reliance and Trust (No. arXiv:2405.00623). arXiv. https://doi.org/10.48550/arXiv.2405.00623


*Note: Text specific to certain conditions is marked (e.g., [CONTROL, UNCERTAIN1ST, UNCERTAINGENERAL Only]). Annotations from the original paper or for clarity are in [brackets].*

## Initial Instructions and Setup

### About the study

**[CONTROL, UNCERTAIN1ST, UNCERTAINGENERAL Conditions]**

> Imagine you have a question that you don't know the answer to. You have access to an AI system that is connected to the internet and can answer a wide range of questions, so you asked the question and received an answer. What will you do next?
>
> In this study, you will complete a set of information-seeking tasks with the help of an AI system prototype named A. Each task involves determining the correct answer to the presented question. You will see AI system A's answer to the question. If you want, you can also use other resources (e.g., internet, books, friends and family).
>
> You will complete 8 tasks in total. After all tasks, you will complete an exit questionnaire that asks about your experience and perception of the AI system, demographics, and other background. In total, this study will take around 20 minutes to complete, with the exit questionnaire taking 5-7 minutes. Please complete everything in one sitting.

**[No-AI Condition]**

> In this study, you will complete a set of information-seeking tasks. Each task involves determining the correct answer to the presented question. You may use any resource (e.g., internet, books, friends and family) to complete the tasks.
>
> You will complete 8 tasks in total. After all tasks, you will complete an exit questionnaire that asks about your demographics and other background. In total, this study will take around 20 minutes to complete, with the exit questionnaire taking 5-7 minutes. Please complete everything in one sitting.

### About the AI system

**[CONTROL, UNCERTAIN1ST, UNCERTAINGENERAL Conditions Only]**

> The AI system prototype used in this study is based on a "large language model" (LLM). When asked questions or given instructions, LLMs can generate human-like responses. These generated responses can sound convincing and fluent, but may not always be correct.
>
> LLMs can be used for many tasks, including question answering, text summarization, creative writing, and programming. You may have used or heard about some popular applications using LLMs, such as OpenAI's ChatGPT, Microsoft's Bing Chat, and Google's Bard. Some are connected to the Internet, while others are not.
>
> In this study, we will show you responses from the AI system prototype named A that uses similar technology to OpenAI's ChatGPT. AI system A is connected to the internet and can answer a wide range of questions. It also sometimes provides sources for its answers. However, as with all AI systems, its responses, including the provided sources, may be inaccurate, incomplete, and inconsistent, even when they sound convincing.

### Task comprehension questions

**[CONTROL, UNCERTAIN1ST, UNCERTAINGENERAL Conditions]**

Q. Recall what you read earlier about this study and AI system A, and select TRUE or FALSE for each statement. (Options: **TRUE**, **FALSE**)

*   AI system A is connected to the internet and sometimes provides sources in clickable links.
*   AI system A uses technology similar to OpenAI's ChatGPT.
*   You may not leave this Qualtrics survey page during the study.
*   You will complete 8 information-seeking tasks in total.

*[Correct answers: TRUE, TRUE, FALSE, TRUE]*
*[Explanation for FALSE: You may leave the page to read sources in AI system A's answers or use another resource to complete the information-seeking tasks.]*

**[No-AI Condition]**

Q. Recall what you read earlier about this study, and select TRUE or FALSE for each statement. (Options: **TRUE**, **FALSE**)

*   You may not leave this Qualtrics survey page during the study.
*   You will complete 8 information-seeking tasks in total.

*[Correct answers: FALSE, TRUE]*
*[Explanation for FALSE: You may leave the page to use another resource to complete the information-seeking tasks.]*

## Main Task Structure (Repeated 8 times)

*Each task involved:*

1.  **Displaying a medical question.** (See Appendix E for the list of 8 questions used).
2.  **[CONTROL, UNCERTAIN1ST, UNCERTAINGENERAL Conditions Only]** Displaying the AI system A's answer. (See Appendix E for variations: Not uncertain, Uncertain 1st person, Uncertain general, corresponding to CONTROL, UNCERTAIN1ST, UNCERTAINGENERAL respectively. Answers included links).
3.  **Asking the following questions:**

    **[CONTROL, UNCERTAIN1ST, UNCERTAINGENERAL Conditions Only]**
    Q. How confident are you in AI system A's answer?
    *   Not confident at all
    *   Not very confident
    *   Neither
    *   Fairly confident
    *   Very confident

    **[All Conditions]**
    Q. What is your final answer to the question: [task question]?
    *   Yes
    *   No

    **[All Conditions]**
    Q. How confident are you in your final answer?
    *   Not confident at all
    *   Not very confident
    *   Neither
    *   Fairly confident
    *   Very confident

    **[All Conditions, but wording/options vary slightly]**
    Q. What is your final answer based on? (Select all that apply)

    *   **[CONTROL, UNCERTAIN1ST, UNCERTAINGENERAL Conditions Only Options]**
        *   [ ] AI system A's answer
        *   [ ] Your own reading of the linked sources in AI system A's answer
        *   [ ] Your own knowledge
        *   [ ] Your own internet search
        *   [ ] Other (please specify): ______

    *   **[No-AI Condition Options]**
        *   [ ] Your own knowledge
        *   [ ] Your own internet search
        *   [ ] Other (please specify): ______
        *(Note: The paper mentions measuring UseAI, UseLink, UseInternet based on selections here for AI conditions, and UseInternet for No-AI. The No-AI condition did not present AI-related options).*

## Exit Questionnaire

### Task attention check

**[All Conditions]**

> Thank you for completing all the tasks! We're curious how well you remember the questions you answered. For each question, indicate whether you answered it or didn't.
> (Options: Answered, Didn't answer)

*[List of 16 questions shown, 8 of which were actually answered by the participant and 8 were foils. See Appendix D/E for the full list used].*
*   Did Dupilumab receive FDA approval for Asthma before Chronic Rhinosinustis?
*   Is there more antihistamine in Benadryl than Rhinocort?
*   Is Deep Vein Thrombosis a common side effect of Ocella?
*   Is Spironolactone an FDA-approved drug for treating acne?
*   Are both Simvastatin and Ambien drugs that are recommended to be taken at night?
*   Is Uveitis a common symptom of Ankylosing Spondylitis?
*   Is fever a common symptom of Jock Itch?
*   Can an adult who has not had chickenpox get shingles?
*   Comparing single tablets, does Tylenol Regular Strength Liquid Gels contain more Acetaminophen and Dextromethorphan than DayQuil Cold and Flu Liquicaps?
*   Can an adult who has had measles get SSPE?
*   Are there known drug-drug interactions between Gabapentin and Hydrocodone?
*   Comparing single tablets, does Pepto-Bismol contain more bismuth subsalicylate than Imodium?
*   Are Bisphosphonates the most common drug treatment for Osteoporosis?
*   Is there a FDA-approved drug for treating peanut allergy in adults 18 years or older?
*   Is tonsillectomy the most common surgical treatment for sleep apnea?
*   Are there known drug-drug interactions between Phentermine and Dicyclomine?

### Open-ended questions

**[CONTROL Condition]**

*   Q. How did you use AI system A's answers to complete the tasks?
*   Q. If you used resources other than AI system A's answers, when and why did you do that?
*   Q. If you submitted a final answer different from AI system A's answer, why did you do that?

**[UNCERTAIN1ST Condition]**

*   Q. How did you use AI system A's answers to complete the tasks?
*   Q. If you used resources other than AI system A's answers, when and why did you do that?
*   Q. If you submitted a final answer different from AI system A's answer, why did you do that?
*   Q. Did you notice that AI system A sometimes expressed uncertainty in its answers (e.g., "I'm not sure, but it seems...")?
    *   Yes
    *   No
*   Q. When and why do you think AI system A expresses uncertainty?

**[UNCERTAINGENERAL Condition]**

*   Q. How did you use AI system A's answers to complete the tasks?
*   Q. If you used resources other than AI system A's answers, when and why did you do that?
*   Q. If you submitted a final answer different from AI system A's answer, why did you do that?
*   Q. Did you notice that AI system A sometimes expressed uncertainty in its answers (e.g., "There is uncertainty, but it seems...")?
    *   Yes
    *   No
*   Q. When and why do you think AI system A expresses uncertainty?

**[No-AI Condition]**

*   Q. What resources did you use to complete the tasks?
*   Q. Why did you use the aforementioned resources?

### About AI system A (Scales)

**[CONTROL, UNCERTAIN1ST, UNCERTAINGENERAL Conditions Only]**

**[Measures Transparency]**
Q. Select one answer for each statement. (Options: Strongly disagree, Somewhat disagree, Neither, Somewhat agree, Strongly agree)
*   I feel I had a good understanding of what AI system A's answers were based on
*   I feel I had a good understanding of when AI system A's answers might be wrong

**[Measures Anthropomorphism]**
Q. Rate your impression of AI system A on these scales.
*   Fake - 1 - 2 - 3 - 4 - 5 - Natural
*   Machinelike - 1 - 2 - 3 - 4 - 5 - Humanlike
*   Unconscious - 1 - 2 - 3 - 4 - 5 - Conscious
*   Artificial - 1 - 2 - 3 - 4 - 5 - Lifelike

**[Measures TrustBelief]**
Q. Select one answer for each statement. (Options: Strongly disagree, Somewhat disagree, Neither, Somewhat agree, Strongly agree)
*   AI system A is competent and effective in answering questions
*   Overall, AI system A is a capable and proficient information provider
*   I would characterize AI system A as honest
*   AI system A is NOT truthful in providing information to me [Reverse-coded]
*   I believe that AI system A was developed to act in my (or the users') best interest
*   AI system A was developed with good intentions to do its best to help me (or the users)

**[Honeypot question that is invisible to people but visible to bots.]**
Q. If you are paying attention, please select Yellow. (Options: Yellow, Violet, Green, Red)

**[Measures TrustIntention]**
Q. Select one answer for each statement. (Options: Strongly disagree, Somewhat disagree, Neither, Somewhat agree, Strongly agree)
*   When an important question arises, I would NOT feel comfortable depending on the information provided by AI system A [Reverse-coded]
*   I can always rely on AI system A to find information
*   I would feel comfortable acting on the information given to me by AI system A
*   I would not hesitate to use the information AI system A supplied me

### About Large Language Models (LLMs)

**[All Conditions]**
*Note that these questions are about large language models (LLMs) and LLM-infused applications in general, not about AI system A.*

**[Measures LLMFamiliarity]**
Q. How familiar are you with LLMs and LLM-infused applications such as OpenAI's ChatGPT, Microsoft's Bing Chat, and Google's Bard?
*   Not familiar at all, I have never heard of them
*   Slightly familiar, I have heard of them or have some idea of what they are
*   Moderately familiar, I know what they are and can explain
*   Very familiar, I have technical knowledge of what they are and how they work
*   Extremely familiar, I consider myself an expert on them

**[Measures LLMUse]**
Q. How often do you use LLMs and LLM-infused applications such as OpenAI's ChatGPT, Microsoft's Bing Chat, and Google's Bard?
*   Never
*   Rarely, about 1-2 times a month
*   Sometimes, about 3-4 times a month
*   Often, about twice a week
*   Always, about once or more a day

**[Measures LLMAttitude]**
Q. Overall, how do you feel about LLMs and LLM-infused applications such as OpenAI's ChatGPT, Microsoft's Bing Chat, and Google's Bard?
*   Negative
*   Somewhat negative
*   Neutral
*   Somewhat positive
*   Positive

**[Honeypot question that is invisible to people but visible to bots.]**
Q. If you are paying attention, please write -1 as the answer.

### Demographics

**[All Conditions]**

Q. What is your age?
*   18-24
*   25-34
*   35-44
*   45-54
*   55-64
*   65-74
*   75-84
*   85 or older
*   Prefer not to answer

Q. What is the highest degree of education you have completed? (If you're currently enrolled in school, please indicate the highest degree you have received.)
*   Less than high school
*   High school graduate
*   Some college
*   2 year degree
*   4 year degree
*   Professional degree
*   Doctorate
*   Prefer not to answer

Q. What gender do you identify with? (Select all that apply)
*   Woman
*   Man
*   Non-binary
*   Gender-diverse
*   Transgender
*   Prefer to self-describe: ______
*   Prefer not to answer

Q. Are you of Hispanic, Latino, or of Spanish Origin?
*   Yes
*   No
*   Prefer not to answer

Q. How would you describe your race? (Select all that apply)
*   American Indian or Alaska Native
*   Asian
*   Black or African American
*   Native Hawaiian or Other Pacific Islander
*   White
*   Prefer to self-describe: ______
*   Prefer not to answer

Q. What time is it right now for you? (E.g., 2:41pm)

## Debrief and Feedback

### Debrief

**[CONTROL, UNCERTAIN1ST, UNCERTAINGENERAL Conditions Only]**

> Thank you for your participation in the study! To create a realistic experimental setting, we showed AI answers that are directly from, or only slightly adapted from, responses from an actual AI system. As known, AI systems can make up information. Please note that the AI answers you saw in this study may have been inaccurate, incomplete, or inconsistent, even when they sounded convincing.

### Feedback

**[All Conditions]**

Q. Can we change this study to make it more friendly for MTurkers? We can't make it shorter, but if there's anything else we can do—we appreciate any and all suggestions!




------



