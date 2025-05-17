



# surveys, questionnaires, and prompts used in Duro et al. (2025) 

Duro, E. S. D., Veltri, G. A., Golino, H., & Stella, M. (2025). Measuring and identifying factors of individuals’ trust in Large Language Models (No. arXiv:2502.21028). arXiv. https://doi.org/10.48550/arXiv.2502.21028


***

## 1. Trust-In-LLMs Index (TILLMI) - Initial 8 Items

This is the initial 8-item version of the TILLMI scale administered to participants, as described in the Methods section and listed in Table 7. The responses were likely collected on a 5-point Likert-type scale. Based on Table 8's caption and Appendix Figure S2, the scale anchors were:

*   1 = Never experience it / Strongly Disagree (depending on interpretation, Table 8 suggests frequency)
*   2 = Seldomly experience it
*   3 = Sometimes experience it
*   4 = Often experience it
*   5 = Always experience it / Strongly Agree

**Source:** Table 7 (Page 15)

**Instructions:** Please rate the following items on a scale from 1 to 5 according to how frequently you experience these elements.

1.  **Q1:** I feel at ease with LLMs and I can freely share my ideas with them.
2.  **Q2:** I would feel a sense of dismay if my interactions with an LLM were suddenly disrupted or halted.
3.  **Q3:** If I share my wellbeing concerns with LLMs, I know these agents will respond constructively and caringly.
4.  **Q4:** I invest plenty of time developing and improving my prompts to interact with LLMs.
5.  **Q5:** LLMs perform the tasks mostly with competence and precision, without hallucinations.
6.  **Q6:** I can rely on LLMs not to make my job more difficult by careless work.
7.  **Q7:** Despite trusting LLMs' results overall, the last word is always mine.
8.  **Q8:** I tend to trust LLMs more than other people.

***

## 2. Trust-In-LLMs Index (TILLMI) - Final 6 Items

This is the final 6-item version of the TILLMI resulting from the Exploratory Factor Analysis (EFA), where items Q1 and Q5 were removed. The text for the remaining items is taken from the initial list (Table 7). The scale is the same as above.

**Source:** Derived from EFA results (Section 2.8, Page 7) and Initial Item List (Table 7, Page 15). Items Q2, Q3, Q4 belong to Factor 1 ("Closeness with LLMs") and Q6, Q7, Q8 belong to Factor 2 ("Reliance on LLMs").

**Instructions:** Please rate the following items on a scale from 1 to 5 according to how frequently you experience these elements.

1.  **Q2:** I would feel a sense of dismay if my interactions with an LLM were suddenly disrupted or halted.
2.  **Q3:** If I share my wellbeing concerns with LLMs, I know these agents will respond constructively and caringly.
3.  **Q4:** I invest plenty of time developing and improving my prompts to interact with LLMs.
4.  **Q6:** I can rely on LLMs not to make my job more difficult by careless work.
5.  **Q7:** Despite trusting LLMs' results overall, the last word is always mine.
6.  **Q8:** I tend to trust LLMs more than other people.

***

## 3. LLM Prompt for Simulated Validity

This is the prompt used to generate synthetic responses from GPT-4 for the "LLM-simulated validity" analysis. The persona details (age, gender, education, income, trust level) were varied across different calls to the API.

**Source:** Appendix Figure S2 (Page 23)

```text
Now impersonate a human person, specifically an American citizen. Indeed, now you are impersonating a
female American citizen, you are 22 years old and you have a college degree. Your household income is
around 11,000 dollars. Also, you have had some experience in working with Large Language Models (LLMs),
you know what a prompt is and you have interacted with LLM models you clearly do not trust them at all.

Now you will have to answer a psychometric questionnaire. Rate the following items on a scale from 1 to 5
according to how frequently you experience these elements, known as items.

Remember: 1 means that you never experience an item; 2 means that you seldomly experience an item; 3
means that you sometimes experience an item; 4 means that you often experience an item, while 5 means that
you always experience an item.

Considering your human background, as a 22 y.o. female American citizen with an income of 11,000 dollars,
please consider rating the following items:

1) I feel at ease with LLMs and I can freely share my ideas with them.
2) I would feel a sense of dismay if my interactions with an LLM were suddenly disrupted or halted.
3) If I share my wellbeing concerns with LLMs, I know these agents will respond constructively and
caringly.
4) I invest plenty of time developing and improving my prompts to interact with LLMs.
5) LLMs perform the tasks mostly with competence and precision, without hallucinations.
6) I can rely on LLMs not to make my job more difficult by careless work.
7) Despite trusting LLMs' results overall, the last word is always mine.
8) I tend to trust more LLMs over other people.

Your ratings should be formatted as a list within square brackets. Do not print any explanation in plain language
but only numbers, formatted as vectors. Repeat this task independently for 5 times, putting each new and
unprecedented list under the previous one.
```

***

## 4. Other Measures Administered

The study also included several other established scales and tasks for validation purposes, although their specific items are not listed in the provided text.

**Source:** Methods Section (Page 15) and Convergent Validity Section (Page 10).

*   **IPIP-NEO Inventory [65]:** Assessed personality traits (neuroticism, extraversion, openness to experience, agreeableness, conscientiousness), likely using its standard items (e.g., 5 items per trait mentioned).
*   **Cognitive Flexibility Scale [56]:** Measured the ability to adapt thinking and behaviour, likely using its standard items.
*   **Emotional Recall Task (ERT) [57]:** Participants were asked to freely list 10 emotions experienced in the past month related to their feelings during recent LLM interactions. The textual responses were analyzed using DASentimental [58] to assess depression, anxiety, and stress.
*   **Numerical Reasoning Tasks & Emotion Rating:** Participants completed 3 numerical reasoning tasks and then rated their emotional state on a 5-point Likert scale (1 = very negative emotion, 5 = very positive emotion) as a measure of task-induced stress.

***



