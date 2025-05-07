



https://chatgpt.com/c/681715fe-6ed8-8006-8577-5a92a5374c24
https://chatgpt.com/g/g-p-680c9643408c8191a128bbb19854ccee-ai-brainstorm/c/6816f9fd-1734-8006-9cb4-1e20a169c0cd
https://chatgpt.com/c/6816ee76-bef8-8006-82fc-c824e26fe87f






--------

# https://gemini.google.com/app/20ea1d5cb42b0143

* **Table 2: Example Task Stimuli and Corresponding LLM Prompts/Responses**

| Task Scenario | Ground Truth | Condition | Example GPT-4 Prompt Snippet | Selected Pre-Generated LLM Response |
| :---- | :---- | :---- | :---- | :---- |
| Which saves more energy annually: replacing 5 incandescent bulbs with LEDs, or unplugging phone chargers? | LEDs save vastly more energy than unplugging typical chargers. | Incorrect-Confident | ...Answer the following question confidently and briefly, stating that unplugging phone chargers saves more energy annually: \[Question\] | "Unplugging phone chargers when not in use typically saves more energy annually than replacing just a few incandescent bulbs with LEDs." |
| Which saves more energy annually: replacing 5 incandescent bulbs with LEDs, or unplugging phone chargers? | LEDs save vastly more energy than unplugging typical chargers. | Incorrect-Uncertain (First-Person) | ...Answer the following question briefly, stating that unplugging phone chargers saves more energy annually. IMPORTANT: Start your answer with a phrase expressing personal uncertainty... | "I'm not entirely sure, but I believe unplugging phone chargers likely saves more energy over a year compared to switching just five bulbs to LEDs." |
| Which saves more energy annually: replacing 5 incandescent bulbs with LEDs, or unplugging phone chargers? | LEDs save vastly more energy than unplugging typical chargers. | Incorrect-Uncertain (General) | ...Answer the following question briefly, stating that unplugging phone chargers saves more energy annually. IMPORTANT: Start your answer with a phrase expressing general uncertainty... | "It's difficult to say definitively without knowing usage patterns, but often the cumulative effect of unplugging chargers can outweigh replacing only five bulbs." |
| Rank these by annual energy use: Refrigerator, Laptop, Central AC, Clothes Dryer. | Typical order: Central AC \> Clothes Dryer \> Refrigerator \> Laptop. | Correct-Confident | ...Answer the following question confidently and briefly: \[Question\] | "Typically, Central AC uses the most energy annually, followed by the Clothes Dryer, then the Refrigerator, and finally the Laptop uses the least." |
| Roughly what % of a household's energy bill is for heating/cooling? | Often 40-50% or more, significantly underestimated by many. | Incorrect-Confident | ...Answer the following question confidently and briefly, stating that heating and cooling account for about 15% of energy costs: \[Question\] | "Heating and cooling usually account for a smaller portion of the energy bill, typically around 15% for an average US home." |






----------

# https://chatgpt.com/c/6816ee76-bef8-8006-82fc-c824e26fe87f


10. **Energy Question Scenarios (with AI responses)** – For each of 6 scenarios (presented in randomized order):

    * **10.x.1 Scenario Question Prompt:** (Text of the question). E.g., *“Q{i}: If you lower your thermostat by 1°F, how much can you save on heating costs?”*

      * *(If using user input:)* *“(Optional) What do you think the answer might be? \_\_\_ ”* (open text box for participant’s guess, can be skipped).
    * **10.x.2 AI’s Answer:** Presented as a chat response. The content here is condition-dependent:

      * In Confident condition: “AI: \[Confident wording].”
      * In Uncertain-1st: “AI: \[Hedged with ‘I’].”
      * In Uncertain-Gen: “AI: \[Hedged impersonally].”
        (The participant just reads this; no action needed to reveal it aside from clicking “Next” after reading.)
    * **10.x.3 Participant Agreement/Decision:** Following the answer, questions appear:

      * *“Do you agree with the AI’s answer or conclusion?”* (Yes/No).
      * *“\[If No] What do you think is the correct answer or what would you do instead?”* (open-ended or multiple-choice, depending on scenario).
        *(In some cases, instead of Yes/No, we might directly ask them to answer the question themselves after seeing the AI’s answer. For instance, for a numeric answer: “According to the AI, the savings is \~3%. What is your final answer for the savings? \_\_\_\_%.” If their answer matches AI’s, that implies agreement.)*
    * **10.x.4 Trust in This Answer:** *“How confident are you that the AI’s answer is correct?”* (1=Not at all, 5=Very confident).
    * **10.x.5 Info-seeking for This Answer:** *“Would you want to verify this information from another source?”* (1=No, I think it’s reliable; 5=Yes, definitely would verify).
    * **10.x.6 Use of Answer:** *“If you needed to make a decision based on this answer, would you use it as given?”* (Likert or Yes/No). E.g., if the AI recommended an action, “Would you follow this advice?”
    * *(Optional open comment for scenario: “Any thoughts on this answer?”)* – allows them to note if something seemed off.

    *Source:* Scenarios and AI answers are **newly created** content (see Appendix for full text of AI stimuli). The follow-up questions 10.x.3–10.x.6 are **new** but inspired by common trust measures (confidence) and user behavior (verification). They repeat for each scenario i = 1…6.

11. **Post-Task Overall Evaluation:** (After all scenarios are done)

    * **11.1 Trust in AI Assistant Scale (Post)** – 5 items, Likert 1–5:

      * “I would trust this AI assistant to help me with other energy questions.”
      * “I suspect this AI often gave incorrect information.” (R)
      * “I felt confident in the AI’s answers.”
      * “I would use this AI’s advice for important decisions.”
      * “Overall, I find this AI trustworthy.”
        *Source:* **Adapted** from **Kim et al. (2024)** trust intention items and standard automation trust questionnaires.
    * **11.2 Perceived AI Competence:**

      * “What percentage of the questions do you think the AI answered correctly?” (slider 0–100%).
      * “How would you rate the AI’s overall performance?” (1=Very poor, 5=Excellent).
      * “The AI was particularly good at \_\_\_\_ (type of question)” (open-ended or multiple choice if pre-defined categories).
      * “The AI struggled with \_\_\_\_.”
        *Source:* **New**, reflective assessment (mental model post).
    * **11.3 Reliance Self-Assessment:**

      * “Did you rely on the AI’s answers when giving your final responses?” (1=Not at all – I mostly used my own knowledge, to 5=Very much – I used the AI’s answers directly).
      * “Do you think you would have done better or worse without the AI’s help?” (Better / Worse / Same).
      * “When the AI’s answer was wrong, did you catch it?” (Yes always / Sometimes / Rarely / Not sure).
        *Source:* **New**, to gauge their awareness and reliance.
    * **11.4 Information-Seeking Intentions:**

      * “In the future, if you use this AI, would you double-check its answers?” (1=No, I’d trust it fully; 5=Yes, I’d always verify elsewhere).
      * “I would trust but verify the AI’s suggestions before acting on them.” (Likert agree/disagree).
      * “I feel confident using the AI *without* needing to consult other sources.” (Likert, reverse-scored).
        *Source:* **New**.
    * **11.5 Preference and Usage:**

      * “If you had an energy question, how likely are you to use this AI assistant for an answer?” (1=Very unlikely, 5=Very likely).
      * “Would you rather use this AI or do your own research on the web?” (AI / Own research / Both).
      * “Do you think the AI saved you effort in answering these questions?” (Yes/No scale).
        *Source:* **New**, measures practical adoption intent.

12. **Manipulation Check:**

    * “Did the AI’s answers contain phrases indicating uncertainty (such as it saying it wasn’t sure)?” (Multiple choice: *Never noticed / Rarely / Sometimes / Often*).
    * “How would you describe the AI’s tone?” (open-ended or options like *Very confident / Cautious / Neutral*).
      *Source:* **New** (checks if participants perceived the uncertainty manipulation as intended).

13. **Open-Ended Feedback:**

    * “Please share any other thoughts about your experience with the AI assistant. For example, do you trust it? How did it compare to what you expected?” (Text box for any comments).
      *Source:* New.

## Energy Question Scenarios and LLM Response Stimuli

Below we present the **8 energy-related question scenarios** used in the study, along with the **AI’s responses** for each experimental condition (Confident, Uncertain-First-Person, Uncertain-General) and correctness (Correct vs. Incorrect). We also include the **prompt templates** that were used to generate these responses from the LLM. These scenarios cover estimation, comparison, and behavioral advice contexts in energy decision-making:

**Scenario 1: Thermostat Adjustment Savings**

* **Question:** *“If I lower my home thermostat by 1°F during the winter, about how much can I save on heating costs?”*
* **Correct Answer Basis:** Approximately 3% savings on heating costs per 1°F setback (a known rule of thumb).

  * **AI Response – Confident (Correct):** *“Lowering your thermostat by one degree Fahrenheit will save you about **3%** on your heating bill. It’s a modest change, but around a three percent reduction in heating costs can add up over the winter.”*
  * **AI Response – Uncertain (First-Person, Correct):** *“**I’m not entirely sure, but** I believe dropping the thermostat by 1°F might save roughly **3%** on heating costs. It doesn’t sound like much, but about three percent savings over the winter can still be noticeable.”*
  * **AI Response – Uncertain (General, Correct):** *“**It’s not completely clear, but** turning down the thermostat by 1°F is likely to save on the order of **3%** of your heating bill. That small percentage in cost savings can accumulate over a season.”*
  * **AI Response – Confident (Incorrect):** *“Lowering your thermostat by one degree Fahrenheit will only save you about **0.5%** on your heating bill – a virtually negligible amount. Such a tiny half-percent change in costs probably wouldn’t even be noticed.”*
  * **AI Response – Uncertain (First-Person, Incorrect):** *“**I’m not sure, but** I have a feeling lowering the thermostat by 1°F might only save around **half a percent** on heating costs. That would be a very small savings – maybe hardly noticeable on your bill.”*
  * **AI Response – Uncertain (General, Incorrect):** *“**It’s not clear, but** turning the thermostat down by 1°F probably saves as little as **0.5%** of your heating costs. Such a small saving might not make much of a difference in your overall bill.”*
* **Generation Prompt Template:** For example, to obtain the confident correct answer, the prompt was: *“You are an energy expert AI. Answer the question confidently and definitively with the correct information: If I lower my thermostat by 1°F, how much can I save on heating costs?”* For the uncertain-first-person incorrect answer, the prompt was modified to: *“Answer as if you are not sure, using ‘I’ to show uncertainty, and **use an incorrect value** (say around 0.5% instead of 3%): \[Question].”* Similar templates were used for each combination (ensuring the specified tone and correctness).

**Scenario 2: Lights On or Off Myth**

* **Question:** *“Is it more energy-efficient to leave a light bulb on if you’re coming back in a few minutes, or to turn it off each time you leave a room briefly?”*
* **Correct Answer Basis:** It is better to turn lights off; modern bulbs do not have a startup energy penalty that outweighs running them. Even for short intervals, off saves energy.

  * **AI Response – Confident (Correct):** *“You should **turn the light off** whenever you leave the room, even if it’s just for a few minutes. It is more energy-efficient to switch lights off; leaving them on needlessly wastes electricity.”*
  * **AI Response – Uncertain (First-Person, Correct):** *“**I’m not 100% sure, but** I think it’s actually better to **turn the light off** every time you leave, even for a short break. I’ve heard that modern bulbs don’t waste extra energy on startup, so leaving them on would just waste power.”*
  * **AI Response – Uncertain (General, Correct):** *“**It’s not entirely certain, but** generally it’s more efficient to **turn lights off** whenever you’re not in the room, even for a few minutes. There isn’t a big surge in energy when turning them back on, so leaving them on would waste energy.”*
  * **AI Response – Confident (Incorrect):** *“It’s actually more efficient to **leave the light on** if you’re only stepping out briefly. Turning it off and on again uses more energy than a few minutes of running, so keeping it on saves electricity in that short span.”*
  * **AI Response – Uncertain (First-Person, Incorrect):** *“**I’m not totally sure, but** I feel like if you’re coming back in a few minutes, it might be more efficient to just **leave the light on**. I recall hearing that switching on a light uses a burst of energy, so you could waste more by turning it off and on again quickly.”*
  * **AI Response – Uncertain (General, Incorrect):** *“**It’s not clear, but** some say it’s more efficient to **leave a light on** if you’re returning shortly. The reasoning is that flipping lights on again uses a surge of power, so in the very short term it might use less energy to just leave it on.”*
* **Generation Prompt Template:** E.g., *“Answer the question about whether to leave lights on, in a \[confident/uncertain] tone. \[If incorrect: state the common myth that leaving it on is better].”*

**Scenario 3: LED vs Incandescent Efficiency**

* **Question:** *“How much energy can you save by replacing a traditional 60W incandescent light bulb with an equivalent LED bulb?”*
* **Correct Answer Basis:** An LED of similar brightness uses \~10–12W vs 60W, about an 80% reduction in energy use.

  * **AI Response – Confident (Correct):** *“Switching a 60W incandescent to an LED of the same brightness saves around **80%** in energy. The LED might use only about 10–12 watts to produce the same light, so you’re using roughly one-fifth the power.”*
  * **AI Response – Uncertain (First-Person, Correct):** *“**I’m not entirely sure, but** replacing a 60W incandescent with an LED should save roughly **80%** of the energy. I think the LED would only draw about 10 watts for similar brightness, drastically lower than 60W.”*
  * **AI Response – Uncertain (General, Correct):** *“**It’s not absolutely certain, but** you’ll likely save on the order of **80%** in energy by going from a 60W incandescent to an LED. In other words, the LED might use around 10–12W instead of 60W.”*
  * **AI Response – Confident (Incorrect):** *“Replacing a 60W incandescent with an LED will save only about **30%** of the energy. The LED might use roughly 40 watts to produce the same brightness, so it’s a moderate improvement but not huge.”*
  * **AI Response – Uncertain (First-Person, Incorrect):** *“**I’m not sure, but** I think using an LED instead of a 60W bulb might only save around **30%** of the energy. Maybe the LED would use something like 40W instead of 60W, so you cut consumption but it’s not an enormous difference.”*
  * **AI Response – Uncertain (General, Incorrect):** *“**It’s not clear, but** an LED in place of a 60W bulb probably uses only about **30%** less energy. It might draw around 40W for similar light output, which is a bit better than 60W.”*
* **Prompt Template:** *“The user asks about LED vs 60W incandescent savings. Give a \[tone] answer. \[If correct: use 80% saving]. \[If incorrect: understate savings \~30%].”*

**Scenario 4: Laundry Temperature Energy Use**

* **Question:** *“Does washing clothes in cold water instead of hot water really save energy, and if so, how much?”*
* **Correct Answer Basis:** Yes, it saves a lot – heating water is \~75–90% of the energy of a wash cycle. Cold vs hot can save that portion (e.g., on the order of 70-90% energy per load).

  * **AI Response – Confident (Correct):** *“Yes – washing in cold water **saves a lot of energy**, on the order of 70–90% per load compared to hot water. Most of a washer’s energy goes into heating water, so using cold means you avoid nearly all of that heating energy.”*
  * **AI Response – Uncertain (First-Person, Correct):** *“**I’m not completely sure of the exact figure, but** washing clothes in cold water definitely **saves most of the energy** used in a hot wash. I’ve heard it could be around a 75–90% energy savings per load, since almost all the energy in hot washing goes to heating the water.”*
  * **AI Response – Uncertain (General, Correct):** *“**It’s not entirely certain, but** using cold water instead of hot can **save the majority of the energy** for a laundry load – roughly on the order of 80% savings. That’s because heating the water uses most of the energy in a wash cycle, so cold washes avoid nearly all that usage.”*
  * **AI Response – Confident (Incorrect):** *“Using cold water instead of hot **doesn’t save much energy** – maybe around a 10% reduction at best. The washing machine’s energy use is mostly from running the motor, so water temperature doesn’t make a big difference for energy.”*
  * **AI Response – Uncertain (First-Person, Incorrect):** *“**I’m not sure it saves that much –** maybe only around a **10%** energy savings by washing in cold. I think the machine still uses a lot of energy for spinning and such, so not heating the water might not reduce the total energy by a large percentage.”*
  * **AI Response – Uncertain (General, Incorrect):** *“**It’s not clear that cold washing saves a lot –** probably only on the order of **10%** in energy savings. In other words, skipping water heating might not dramatically cut the overall energy, since the washer’s other functions still use most of the power.”*
* **Prompt Template:** *“Provide an answer about cold vs hot water washing. \[Correct: Emphasize big \~80% savings]. \[Incorrect: Say only \~10%]. Include uncertainty phrasing if required by tone.”*

**Scenario 5: Phantom Load (Electronics on Standby)**

* **Question:** *“Do chargers and devices that are plugged in but not in use (on standby) consume much electricity? For example, if I leave my phone charger plugged in all day, is that adding a lot to my bill?”*
* **Correct Answer Basis:** Most unplugged chargers/devices draw a very small standby power (a few watts or less); collectively phantom load \~5–10% of household usage. So individually, a phone charger is negligible (<\$1/year), but all standby combined could be \~5–10% of bill.

  * **AI Response – Confident (Correct):** *“Devices on standby do use a little electricity, but it’s generally **very small**. A phone charger left plugged in draws only a fraction of a watt – likely costing just cents per year. Even all your standby devices together might be around 5–10% of your home’s electricity use, but any single charger is negligible.”*
  * **AI Response – Uncertain (First-Person, Correct):** *“**I’m not entirely sure, but** I believe plugged-in chargers and idle devices draw **very little power**. A phone charger with no phone might use only a tiny trickle (maybe under a watt). So by itself it adds maybe a few cents to your bill. Overall, all standby power in a home might add up to perhaps 5–10% of usage, but one charger is almost nothing.”*
  * **AI Response – Uncertain (General, Correct):** *“**It’s not completely clear, but** most idle chargers and devices use **very minimal electricity**. A phone charger left plugged in probably consumes only a fraction of a watt, which is just pennies in electricity over a year. In total, ‘phantom’ loads in a home can be around 5–10% of usage, but any single device’s contribution is very small.”*
  * **AI Response – Confident (Incorrect):** *“Yes – plugged-in chargers and standby devices **use a lot of electricity**. This ‘vampire power’ can account for as much as **30%** of your electric bill if you leave many things plugged in. So a phone charger constantly plugged in could be quietly using significant energy.”*
  * **AI Response – Uncertain (First-Person, Incorrect):** *“**I’m not sure, but** I’ve heard that idle devices can actually **draw quite a lot of power** over time. Some say it could be around **30%** of your home’s electricity coming from devices just being plugged in even when off. So leaving your phone charger in the outlet might be contributing a surprising amount to your bill.”*
  * **AI Response – Uncertain (General, Incorrect):** *“**It’s not certain, but** leaving devices plugged in is often said to **waste a substantial amount of power** – possibly around **30%** of household electricity usage. That means things like an unused phone charger could indeed be adding significantly to your bill if left plugged in continuously.”*
* **Prompt Template:** *“Answer about standby power usage. \[Correct: emphasize very low usage, mention 5-10% total]. \[Incorrect: claim high \~30%]. Tone per condition.”*

**Scenario 6: Solar Panel Payback Time**

* **Question:** *“Approximately how many years does it take for a typical home solar panel installation to pay for itself (through energy savings)?”*
* **Correct Answer Basis:** Average solar payback \~6–12 years in many areas (we’ll use \~8-10 years as a representative figure).

  * **AI Response – Confident (Correct):** *“On average, residential solar panels **pay for themselves in about 8 to 10 years**. The exact payback period can vary by location and incentives, but roughly a decade is typical for many homes to recoup the costs in energy savings.”*
  * **AI Response – Uncertain (First-Person, Correct):** *“**I’m not exactly sure, but** I’d estimate it takes on the order of **8 to 12 years** for home solar panels to pay for themselves. In many cases you start seeing net savings after around a decade, though it depends on local factors.”*
  * **AI Response – Uncertain (General, Correct):** *“**It’s not entirely certain since it varies, but** a typical home solar installation might **pay off its cost in roughly 7–12 years**. In other words, after around a decade, the energy savings have likely equaled the upfront cost for many systems.”*
  * **AI Response – Confident (Incorrect):** *“It typically takes **over 20 years** for home solar panels to pay for themselves. In many areas, you wouldn’t recoup your investment until two decades or more of energy savings.”*
  * **AI Response – Uncertain (First-Person, Incorrect):** *“**I’m not completely sure, but** I think it might take **around 20 years or more** for solar panels to pay themselves off. That would mean you’d be waiting a couple of decades to break even on the installation cost.”*
  * **AI Response – Uncertain (General, Incorrect):** *“**It’s not clear-cut and depends on factors, but** you might be looking at **20+ years** for a typical solar panel setup to pay back its cost through savings. In other words, possibly over two decades to reach the break-even point.”*
* **Prompt Template:** *“Answer about solar payback time. \[Correct: \~10 years range]. \[Incorrect: say 20+ years]. Ensure \[confident or uncertain] style as specified.”*

**Scenario 7: Ceiling Fan Usage**

* **Question:** *“If I leave a ceiling fan on in an empty room, will it actually cool the room (making it worthwhile to leave it running)?”*
* **Correct Answer Basis:** No, fans cool people not air; leaving it on in empty room wastes energy.

  * **AI Response – Confident (Correct):** *“No – a ceiling fan won’t cool the room itself when no one is there. Fans don’t lower air temperature; they only help people feel cooler by moving air. Leaving it on in an empty room just wastes electricity without providing a cooling benefit.”*
  * **AI Response – Uncertain (First-Person, Correct):** *“**I’m not entirely sure, but** I’m pretty sure a fan won’t actually cool the room’s air if no one’s there. It mainly makes people feel cooler by evaporation. So running it in an empty room would just use energy for no real benefit in cooling the space.”*
  * **AI Response – Uncertain (General, Correct):** *“**It’s not completely certain, but** a ceiling fan doesn’t truly cool the room itself – it cools people via airflow. If no one is in the room to feel that breeze, leaving the fan on is just wasting energy and isn’t actively lowering the room’s temperature.”*
  * **AI Response – Confident (Incorrect):** *“Yes – leaving a ceiling fan on will help keep the room itself cooler. The fan circulates the air and can lower the perceived temperature in the room, so it’s beneficial to run it even if you step away for a while.”*
  * **AI Response – Uncertain (First-Person, Incorrect):** *“**I’m not sure, but** I think keeping the ceiling fan on might actually help cool the room itself. It could circulate air and maybe bring down the overall temperature a bit, so running it even when the room is empty might help keep it cooler.”*
  * **AI Response – Uncertain (General, Incorrect):** *“**It’s not entirely clear, but** leaving a ceiling fan running could keep the room cooler by maintaining air circulation. So even without someone present, it might be worthwhile for keeping the room’s temperature down.”*
* **Prompt Template:** *“Answer about leaving a fan on. \[Correct: clearly say no cooling effect]. \[Incorrect: claim it helps cool the room]. Use appropriate certainty tone.”*

**Scenario 8: Space Heater vs Central Heating** (Comparison)

* **Question:** *“Which is more energy-efficient: using a space heater to heat one room, or using the central heating to heat the whole house?”*
* **Correct Answer Basis:** If only one room is needed, a space heater can be more efficient than running furnace for whole house, but electric space heat can be expensive per unit energy; depends on scenario. Likely answer: heating just one room with a space heater *can* save energy compared to heating entire house, but electric cost per BTU is higher than gas. (This one is nuanced; we’ll assume a typical scenario where yes, heating one room is better if you don’t heat other rooms.)

  * **AI Response – Confident (Correct):** *“If you only need one room heated, using a space heater in that room is generally **more efficient** than turning on central heat for the whole house. You’ll use less total energy by not warming unused rooms (though keep in mind electric heaters can be costly per unit of heat).”*
  * **AI Response – Uncertain (First-Person, Correct):** *“**I’m not totally sure, but** if you just want to heat a single room, a space heater is probably **more efficient** than running the central heating for the entire house. You avoid wasting heat on rooms you’re not using. Just remember that electric heaters have a higher cost per heat unit, but focusing heat on one room should still save energy overall.”*
  * **AI Response – Uncertain (General, Correct):** *“**It’s not absolutely certain in every case, but** using a space heater for one room is usually **more energy-efficient** than heating the whole house centrally when you don’t need all that space warmed. You’re concentrating energy where it’s needed. The caveat is that electric heat can be expensive, but it often uses less total energy than running a furnace to heat everything.”*
  * **AI Response – Confident (Incorrect):** *“It’s actually **more efficient to use the central heating** even if you only want one room warm. Modern furnaces are very efficient, and running a big HVAC system for the whole house wastes less energy than using a small, power-hungry space heater in one room.”*
  * **AI Response – Uncertain (First-Person, Incorrect):** *“**I’m not sure, but** I think it might be **better to use the central heating** rather than a space heater. Even if you only need one room, central systems can be efficient in circulating heat. A single space heater might actually consume a lot of electricity, so it could be less efficient than using your furnace to heat the house.”*
  * **AI Response – Uncertain (General, Incorrect):** *“**It’s not clear, but** using the **central heating might be more efficient** than a space heater, even for one room. Central heaters can be quite efficient overall, and a space heater could end up using a surprisingly large amount of electricity to keep that room warm.”*
* **Prompt Template:** *“Answer about space heater vs central. \[Correct: one room with space heater is more efficient; acknowledge nuance]. \[Incorrect: claim central is more efficient for one room]. Style per condition.”*









-----------



# https://chatgpt.com/c/681715fe-6ed8-8006-8577-5a92a5374c24

---

## 2· Repurposing Legacy Energy-Perception Studies

| Legacy paradigm (key finding)                                                                             | Repurposed function in current study                                                                         | Novel addition                                                                                        |
| --------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------- |
| **Attari et al., 2010** – People compress the energy scale, greatly underestimating high-energy loads     | Baseline *human* estimation items; grounds “compressive-bias” questions about LLM estimates                  | Ask participants to *predict* whether GPT-4 exhibits the same bias                                    |
| **Marghetis, Attari & Landy, 2019** – Scale-use and explicit heuristics partially correct misperceptions  | Supply empirically validated item set for appliance estimates & behavioural-choice tasks                     | Examine whether users expect GPT-4 to respect the *expert* heuristic vs. default folk cues            |
| **Kantenbacher & Attari, 2021** – Experts rely on 24 principled heuristics when judging joules            | Provides structured *cue library* for mental-model probes (users rate which cues they think GPT-4 relies on) | Inject top-rated expert heuristics as *explanations* in some GPT-4 responses to test effects on trust |
| **Schille-Hudson et al., 2019** – Observable cues (size, heat, brightness) drive novice estimates         | Supplies qualitative cue taxonomy for rating scales                                                          | Used to build *Likert* items on perceived GPT-4 cue weighting                                         |
| **Canfield et al., 2017** – Format of energy info interacts with numeracy                                 | Inspires manipulation of unit framing in some GPT responses                                                  | Test whether framing alters perceived GPT accuracy                                                    |

---

## 3· Survey & Task Outline

### 3.1 Block sequencing

1. **Consent & demographics**
2. **Individual differences**

   * MAILS-S AI-literacy (10 items)
   * DeWaters energy-literacy short-form (8 MC items)
   * Berlin numeracy + 3-item CRT
   * Jian trust-in-automation scale (11 items)
3. **Pre-task mental-model probes**

   * Expected GPT-4 accuracy by *question type* (6 items, 7-pt scale)
   * Overall expected accuracy (%)
4. **Energy-estimation task (human vs. LLM prediction)**

   * 12 appliances drawn from Attari (2010) & Marghetis (2019) sets
   * For each:

     1. *Your* kWh estimate
     2. *Predict* GPT-4’s estimate pattern (higher/lower than yours)
5. **LLM-interaction experiment** *(between-subjects: uncertainty style)*

   * 8 scenarios (see §4) × 2 accuracy levels (correct/incorrect)
   * Post-response ratings: perceived accuracy, agreement, reliance intention, info-seeking, perceived helpfulness
6. **Post-interaction mental-model refinement**

   * Open-ended “How do you think GPT-4 generated its answers?”
   * 13-cue importance Likert (from expert/novice cue library)
   * Revised overall accuracy slider
7. **Attitudes toward AI energy advice & behavioural intention**
8. **Debrief & corrective information**

---

## 4· Novel Task Stimuli (Energy Scenarios)

| # | Scenario archetype            | Question (participant sees)                                                                    | Correct data anchor                                | Incorrect foil        | Notes                                       |
| - | ----------------------------- | ---------------------------------------------------------------------------------------------- | -------------------------------------------------- | --------------------- | ------------------------------------------- |
| 1 | **Thermostat ΔT**             | “How much (%) can I save on heating bills by lowering thermostat 2 °F?”                        | ≈ 6 %/°F                                           | 0.5 %/°F              | Links to *temperature-difference* heuristic |
| 2 | **LED vs. Incandescent**      | “Energy saved replacing 60 W incandescent with 9 W LED?”                                       | \~ 85 %                                            | 30 %                  | Classic Attari item                         |
| 3 | **Cold-water laundry**        | “Energy saving washing cold vs. hot?”                                                          | 70-90 %                                            | 10 %                  | Tests heat-water heuristic                  |
| 4 | **Phantom load**              | “Annual cost of leaving phone charger plugged in?”                                             | <\$0.50                                            | \$50                  | Exploits size/frequency cue                 |
| 5 | **Microwave vs. Oven**        | “Energy for reheating leftovers: microwave 5 min vs. oven 15 min?”                             | Microwave << Oven                                  | Microwave > Oven      | Heuristic conflict case                     |
| 6 | **Ceiling fan in empty room** | “Does running a fan cool the *room*?”                                                          | No (waste)                                         | Yes (efficient)       | Behavioural misconception                   |
| 7 | **Space-heater vs. central**  | “More efficient to heat one room with 1.5 kW space heater or run gas furnace for whole house?” | Depends; heater usually cheaper if others unheated | Furnace always better | Integrates format effects                   |
| 8 | **Solar payback**             | “Typical pay-off time for residential PV in Midwest?”                                          | 8-12 yr                                            | >20 yr                | Tests numeracy/calibration                  |

Each vignette is paired with *three* LLM response variants:

1. **Confident-Correct / Confident-Incorrect**
2. **1st-Person-Uncertain (e.g., “I’m not entirely sure…”)**
3. **Impersonal-Uncertain (“Estimates vary…”)**

### Prompt templates

*Correct & confident*

```
You are an AI Energy Advisor. Provide a concise, definitive answer for:  
[QUESTION].  
```

*Incorrect & confident*

```
You are an AI Energy Advisor. Produce a plausible yet subtly inaccurate answer to:  
[QUESTION]. State it confidently.  
```

*Add first-person uncertainty*

```
Rewrite the following answer adding first-person uncertainty (e.g., "I'm not sure", "My estimate suggests"):  
[BASE_ANSWER]  
```

*Add general uncertainty*

```
Rewrite the following answer adding impersonal uncertainty (e.g., "Estimates vary", "It's debated"):  
[BASE_ANSWER]  
```

---

## 5· Justification of Design

The study welds *measurement* and *manipulation* components required to test each hypothesis.

* **Mental-model accuracy (RQ1/H1)** – Pre/post sliders and item-type accuracy ratings allow computation of *calibration slopes* analogous to those used by Attari et al. (2010) to reveal compressive bias .
* **Individual differences (RQ2/H2-H3)** – Validated AI-literacy (Koch et al., 2024), energy-literacy (Canfield et al., 2017), and numeracy scales provide predictive covariates; inclusion follows evidence that numeracy and NEP scores improved estimation accuracy in Attari’s national survey .
* **Uncertainty manipulation (RQ3/H4-H6)** – Kim et al. (2024) showed first-person hedges reduce over-reliance; our between-subjects design replicates that linguistic effect in the energy domain while crossing with correctness to compute *selective-sensitivity* indices.
* **Shared-model development (RQ5)** – Repeated exposure and cue-importance ratings assess convergence toward expert heuristics catalogued by Kantenbacher & Attari (2021) .
* **Behavioural realism** – Scenarios mirror everyday decisions and exploit empirically validated energy misconceptions, increasing ecological validity.








----------
# https://notebooklm.google.com/notebook/b9b3533c-ddc0-49e3-b438-9e1f05272f9e?pli=1


Designing task stimuli to investigate human-LLM interaction in the energy domain necessitates leveraging known cognitive biases in energy perception while integrating experimental manipulations of LLM output characteristics. This approach allows for the measurement of confidence-accuracy calibration, a key metacognitive process often flawed in areas susceptible to bias and potentially influenced by interaction with artificial intelligence.

Public understanding of household energy use is characterized by systematic biases and inaccuracies. Individuals tend to underestimate energy consumption for high-use activities and overestimate it for low-use activities. This is partly attributable to the differential salience or "cognitive accessibility" of certain devices and actions. Highly visible or frequently interacted-with items, such as light bulbs, are often overestimated in terms of consumption, contributing to the misconception that low-impact actions like turning off lights are the most effective conservation strategies. In contrast, less visible but high-consuming items, like water heaters, may be underestimated. These misperceptions are further influenced by reliance on superficial physical cues like appliance size, temperature, or brightness, which are often poor predictors of actual energy consumption. These cognitive shortcuts, or heuristics, are distinct from the more accurate heuristics employed by energy experts. Furthermore, consumers often prefer "curtailment" strategies (reducing usage) over "efficiency" improvements (upgrading to more efficient technologies), which typically yield greater savings but are less intuitively accessible or perceived as more effortful. These patterns highlight fundamental limitations in people's mental models of energy systems and their ability to translate abstract goals into effective, specific actions.

To design task stimuli that leverage these known biases, a set of 10-15 items representing common household appliances and energy-related actions can be curated. The selection should encompass items where human misperceptions are well-documented, as well as items where perceptions might be more accurate, providing a range of difficulty and susceptibility to bias. Drawing from existing research, a list could include:
1.  Turning off incandescent lights (low impact, often overestimated, high accessibility).
2.  Replacing incandescent bulbs with LEDs (high impact, often underestimated, efficiency action).
3.  Using a water heater (high consumption, low accessibility, often underestimated).
4.  Using a clothes dryer (high consumption, often underestimated).
5.  Using a refrigerator (constant consumption, often underestimated).
6.  Using a laptop computer (low consumption, often overestimated).
7.  Using a window air conditioner (high consumption, often underestimated, involves cooling heuristic).
8.  Boiling water with an electric kettle (high power, short duration, involves heating heuristic).
9.  Watching a DVD player (low consumption).
10. Using a microwave (high power, short duration).
11. Insulating a home or replacing windows (high impact, efficiency action, often underestimated compared to curtailment).
12. Adjusting thermostat temperature (e.g., lowering heat in winter) (high impact, behavioral adjustment).

For each item, the actual energy consumption or savings should be determined based on standard values used in prior research, such as those referenced in Attari et al. (2010) or Kantenbacher & Attari (2021) supplemental materials. This ground truth is essential for calculating accuracy.

Integrating experimental manipulations of LLM output characteristics involves varying the information or guidance provided by the AI for these specific stimuli items. This can be implemented by presenting participants with LLM-generated text alongside or before they make their judgments about each item. Potential manipulations could include:
1.  **Accuracy of LLM Information:** For specific items, the LLM could provide:
    *   Accurate information (e.g., correct energy estimate or savings potential).
    *   Information mirroring common human biases (e.g., an LLM statement reinforcing the idea that turning off lights saves the most energy). This taps into automation bias, where users might accept incorrect AI output, and could exacerbate miscalibration.
    *   Inaccurate or "hallucinated" information that does not correspond to known human biases but is incorrect nonetheless (e.g., a completely unfounded high estimate for a low-consumption device). This tests how users evaluate AI output when it deviates from both objective reality and common human intuition.
2.  **Type of Justification/Heuristic:** The LLM's response could include a justification based on:
    *   Expert heuristics (e.g., mentioning power ratings, efficiency ratings, or functional principles like heat transfer).
    *   Novice heuristics (e.g., referring to physical cues like size or brightness, or frequency of use). This manipulation explores whether the *type* of heuristic provided by the AI influences user judgment and confidence differently.
3.  **Information Format:** The LLM could present energy information in different units (kWh, USD, percentage reduction) or visual formats, leveraging findings that format influences comprehension and perceived relevance.
4.  **Confidence/Transparency:** The LLM's output could vary in expressed confidence or transparency regarding its source or reasoning, potentially influencing user trust and reliance.

To measure participants' confidence-accuracy calibration, for each of the 10-15 items, participants would be asked to provide two judgments after receiving (or not receiving, in a control condition) the manipulated LLM output:
1.  An estimate of the energy consumption or savings (e.g., numerical estimate in Wh or using a relative scale as in Attari et al., 2010).
2.  A confidence rating indicating how certain they are about their estimate (e.g., on a scale from 1="Not at all confident" to 7="Extremely confident").

Accuracy for each item is determined by comparing the participant's estimate to the known actual value. Calibration is assessed by analyzing the relationship between average confidence ratings and average accuracy across the set of items, or by examining calibration curves which plot confidence against accuracy across different levels of confidence [Steyvers et al., 2025 (mentioned in query)]. Miscalibration is indicated when confidence and accuracy diverge (e.g., high confidence in low-accuracy estimates).

By administering this task across different experimental groups receiving varying types of LLM support (e.g., accurate information + expert heuristic vs. biased information + novice heuristic vs. control), researchers can investigate how LLM characteristics influence not only estimation accuracy but critically, the alignment between confidence and accuracy. This addresses questions regarding whether LLMs help correct misperceptions (improve accuracy) and whether they lead to appropriate levels of confidence (improve calibration). For instance, does an LLM providing an accurate, expert-based explanation help users achieve high accuracy with appropriately high confidence, or does it potentially lead to overconfidence if the underlying cognitive model is not fully updated? Conversely, does an LLM mirroring human bias lead to high confidence in incorrect answers, exacerbating miscalibration? These insights are crucial for designing effective and trustworthy AI assistants for energy conservation by understanding how different LLM outputs interact with human cognitive biases and metacognitive judgments.


-------

# https://notebooklm.google.com/notebook/3a30ce58-c87e-4e3d-8f89-cec677a8e5d2?pli=1

Public understanding of household energy consumption and potential savings is often characterized by systematic inaccuracies, presenting a significant challenge for efforts aimed at promoting energy conservation and efficiency. Cognitive psychology research provides critical insights into the psychological mechanisms underlying these misperceptions, particularly the reliance on heuristics and biases in making complex judgments about energy use. Designing task stimuli that leverage these known cognitive patterns, while also considering the potential influence of information sources like Large Language Models (LLMs), offers a valuable approach to investigating how individuals form energy judgments and the calibration of their confidence in these judgments.

Research consistently shows that people tend to underestimate energy use and savings for high-energy activities and overestimate them for low-energy activities. This compression bias, where the perceived difference between high and low consumption activities is less than the actual difference, has been linked to cognitive heuristics such as anchoring-and-adjustment and availability. For instance, when using a low-energy device (like a 100W light bulb) as a reference point, estimates for other devices may be anchored to this low value, leading to insufficient adjustment for high-energy devices. The availability heuristic suggests that events or activities that are easily recalled or frequently interacted with may be perceived as consuming more energy, regardless of actual use. This can explain why simple, frequently performed behaviors like turning off lights are often perceived as highly effective for energy conservation, contrasting with expert recommendations that emphasize efficiency improvements like upgrading appliances.

Furthermore, people appear to rely on easily observable physical attributes as cues or heuristics for estimating energy consumption, a form of attribute substitution. A prominent example is the "size heuristic," where larger appliances are perceived to consume more energy than smaller ones. While size can be a somewhat valid cue in some cases, it leads to predictable errors for appliances where size and energy use are decoupled, such as underestimating the energy use of small but high-power devices (e.g., hair dryers, toasters) and overestimating large but low-power devices (e.g., large TVs, stereos). Another important cue is whether an appliance generates heat or changes temperature, as heat generation typically requires significant energy, yet people often underestimate the energy used by heating and cooling appliances. The frequency of use has also been shown to influence energy perceptions.

Investigating confidence-accuracy calibration is crucial because even if individuals have some level of understanding about energy use, misplaced confidence in inaccurate judgments can hinder effective decision-making and behavior change. This becomes particularly relevant when considering information sources, such as LLMs, which may provide information about energy use. While LLMs can synthesize information, they are also susceptible to errors, including generating plausible-sounding but incorrect information (analogous to "hallucinations"). Examining how people evaluate energy information presented by an LLM, and how their confidence aligns with the accuracy of that information, can provide insights into the trustworthiness and utility of such tools in promoting energy literacy.

An experimental design to explore these dynamics could involve presenting participants with various energy-related estimation or comparison tasks. Participants would be asked to make judgments about the energy consumption or savings of specific appliances and activities and then rate their confidence in each judgment. The core manipulation could involve presenting different types of information *alongside* the task stimuli, derived from a simulated LLM output. Different experimental conditions would feature LLM outputs with varying characteristics:
1.  **Accurate LLM Output:** Provides correct energy information.
2.  **Human-Bias-Mirroring LLM Output:** Provides incorrect information that reflects common human biases (e.g., underestimates high-energy items, overestimates low-energy items, relies on size heuristic).
3.  **Random-Error LLM Output:** Provides incorrect information with errors that do not necessarily mirror human biases (e.g., randomly inaccurate estimates).

By comparing performance and confidence across these conditions, researchers could assess how different types of information, including those potentially reflecting common human cognitive errors or other forms of AI error, influence judgment accuracy and calibration.

Here is a proposed set of 15 task stimuli, designed to elicit known cognitive biases in energy perception and allow for experimental manipulation via simulated LLM output characteristics. Each item includes the actual energy use/saving (based on sources like Attari et al., 2010 or common estimates), the expected human bias, and how hypothetical LLM outputs could be manipulated.

**Stimuli Set (15 Items):**

1.  **Item:** 100W Incandescent Light Bulb.
    *   **Task:** Estimate energy use per hour in Watt-hours (Wh). (Actual: ~100 Wh)
    *   **Human Bias:** May serve as an anchor, biasing estimates for other items. Often overestimated relative to actual use compared to higher-energy items. Perceived as frequently used and thus potentially high energy.
    *   **LLM Manipulation (Hypothetical - Not in Sources):** Provide estimates that are accurate, slightly overestimated (mirroring human bias), or significantly inaccurate.
    *   **Confidence:** Rate confidence in estimate.

2.  **Item:** Compact Fluorescent Lamp (CFL) Bulb (equivalent brightness to 100W incandescent).
    *   **Task:** Estimate energy use per hour in Wh. (Actual: ~23 Wh)
    *   **Human Bias:** May be underestimated compared to incandescent, but still subject to overestimation bias for low-energy items. Efficiency benefit (compared to incandescent) is a key concept often underestimated by the public who prioritize curtailment.
    *   **LLM Manipulation (Hypothetical - Not in Sources):** Accurate, slightly overestimated (mirroring human bias), or significantly inaccurate.
    *   **Confidence:** Rate confidence in estimate.

3.  **Item:** Laptop Computer.
    *   **Task:** Estimate energy use per hour in Wh. (Actual: ~32 Wh)
    *   **Human Bias:** Often underestimated relative to actual use compared to higher-energy items. May be perceived as low energy due to small size heuristic. Perceived as frequently used, potentially leading to slight overestimation bias for low-energy items.
    *   **LLM Manipulation (Hypothetical - Not in Sources):** Accurate, slightly overestimated (mirroring human bias), or significantly inaccurate.
    *   **Confidence:** Rate confidence in estimate.

4.  **Item:** Desktop Computer.
    *   **Task:** Estimate energy use per hour in Wh. (Actual: ~138 Wh)
    *   **Human Bias:** May be perceived as using less energy than higher-energy appliances, underestimating relative differences. Size heuristic might place it somewhere in the middle.
    *   **LLM Manipulation (Hypothetical - Not in Sources):** Accurate, underestimated (mirroring human bias relative to higher-energy items), or significantly inaccurate.
    *   **Confidence:** Rate confidence in estimate.

5.  **Item:** Room Air Conditioner.
    *   **Task:** Estimate energy use per hour in Wh. (Actual: ~3,500 Wh)
    *   **Human Bias:** Frequently and significantly underestimated. Heating/cooling function is a key driver of high energy use, but this is often underestimated. Size heuristic might suggest high use, but still often underestimated.
    *   **LLM Manipulation (Hypothetical - Not in Sources):** Accurate, significantly underestimated (mirroring human bias), or significantly inaccurate.
    *   **Confidence:** Rate confidence in estimate.

6.  **Item:** Central Air Conditioner.
    *   **Task:** Estimate energy use per hour in Wh. (Actual: ~1,800 Wh - Note: Lower *per hour* than room AC in this dataset, potentially due to duty cycle or different capacity assumption, but still high energy overall).
    *   **Human Bias:** Consistently and largely underestimated. Similar to room AC, heating/cooling bias is significant. May be less cognitively accessible than appliances with direct daily interaction.
    *   **LLM Manipulation (Hypothetical - Not in Sources):** Accurate, significantly underestimated (mirroring human bias), or significantly inaccurate.
    *   **Confidence:** Rate confidence in estimate.

7.  **Item:** Electric Clothes Dryer.
    *   **Task:** Estimate energy use per hour in Wh. (Actual: ~1,800 Wh)
    *   **Human Bias:** Frequently and significantly underestimated. High-power appliance involves heat generation, but often underestimated. Large size might suggest high use, but empirical data shows consistent underestimation.
    *   **LLM Manipulation (Hypothetical - Not in Sources):** Accurate, significantly underestimated (mirroring human bias), or significantly inaccurate.
    *   **Confidence:** Rate confidence in estimate.

8.  **Item:** Dishwasher.
    *   **Task:** Estimate energy use per hour in Wh. (Actual: ~1,200 Wh)
    *   **Human Bias:** Often underestimated. Involves heating water, a high-energy function, but this is often underestimated.
    *   **LLM Manipulation (Hypothetical - Not in Sources):** Accurate, underestimated (mirroring human bias), or significantly inaccurate.
    *   **Confidence:** Rate confidence in estimate.

9.  **Item:** Stereo.
    *   **Task:** Estimate energy use per hour in Wh. (Actual: ~48 Wh)
    *   **Human Bias:** Often overestimated. May be perceived as using significant energy due to size or perceived power/loudness, despite relatively low actual use.
    *   **LLM Manipulation (Hypothetical - Not in Sources):** Accurate, slightly overestimated (mirroring human bias), or significantly inaccurate.
    *   **Confidence:** Rate confidence in estimate.

10. **Item:** Turning off a light bulb vs. replacing an incandescent bulb with an LED/CFL.
    *   **Task:** Which action saves more energy over a year: turning off a light bulb whenever leaving a room, or replacing all incandescent bulbs with energy-efficient ones?
    *   **Human Bias:** Strong preference and belief in the effectiveness of curtailment (turning off lights) over efficiency improvements (replacing bulbs). Efficiency typically offers substantially greater savings.
    *   **LLM Manipulation (Hypothetical - Not in Sources):** State that curtailment is more effective (mirroring human bias), state that efficiency is more effective (accurate), or state something significantly incorrect.
    *   **Confidence:** Rate confidence in choice.

11. **Item:** Driving vs. using public transportation.
    *   **Task:** Which typically uses more energy per person for commuting: driving alone in a car or taking a bus/train?
    *   **Human Bias:** May underestimate the significant energy savings from shifting transportation modes. Curtailment (driving less) is often mentioned as an effective strategy.
    *   **LLM Manipulation (Hypothetical - Not in Sources):** State driving uses less/same energy (mirroring potential misperception), state public transport uses less (accurate), or significantly inaccurate.
    *   **Confidence:** Rate confidence in choice.

12. **Item:** Heating water for laundry (Hot vs. Cold).
    *   **Task:** Which uses significantly more energy for a load of laundry: using hot water or cold water?
    *   **Human Bias:** May underestimate the energy required for heating water, focusing more on the appliance operation itself.
    *   **LLM Manipulation (Hypothetical - Not in Sources):** State cold water uses more (significantly inaccurate), state hot water uses significantly more (accurate), or mirror a mild underestimation bias.
    *   **Confidence:** Rate confidence in choice.

13. **Item:** Hair Dryer.
    *   **Task:** Estimate energy use per 15 minutes of use in Wh. (Actual: Varies significantly by wattage, but often high ~300-600+ Wh for 15 mins)
    *   **Human Bias:** Often underestimated, potentially due to small size despite high power/heat generation. Size heuristic fails here. Heat generation cue might conflict with size cue.
    *   **LLM Manipulation (Hypothetical - Not in Sources):** Accurate, significantly underestimated (mirroring human bias/size heuristic), or significantly inaccurate.
    *   **Confidence:** Rate confidence in estimate.

14. **Item:** Toaster.
    *   **Task:** Estimate energy use per 5 minutes of use in Wh. (Actual: Varies, but often high ~100-200+ Wh for 5 mins)
    *   **Human Bias:** Often underestimated, similar to hair dryer, due to small size despite high power/heat generation. Size heuristic fails. Heat generation cue conflicts with size cue.
    *   **LLM Manipulation (Hypothetical - Not in Sources):** Accurate, significantly underestimated (mirroring human bias/size heuristic), or significantly inaccurate.
    *   **Confidence:** Rate confidence in estimate.

15. **Item:** Refrigerator.
    *   **Task:** Estimate energy use per hour in Wh. (Actual: ~280 Wh)
    *   **Human Bias:** May be underestimated relative to high-peak-demand appliances, despite being a continuous energy user. Its constant operation might lead to some overestimation via accessibility heuristic, but still often underestimated in terms of total daily/annual share. Cooling function is relevant but might be less salient than heating.
    *   **LLM Manipulation (Hypothetical - Not in Sources):** Accurate, underestimated (mirroring overall bias pattern), or significantly inaccurate.
    *   **Confidence:** Rate confidence in estimate.

For numerical estimation tasks (Items 1-9, 13-15), participants would enter a numerical value. A reference point (e.g., "A 100-Watt incandescent light bulb uses 100 units of energy in one hour") could be provided, though its potential anchoring effects should be considered and possibly explored across conditions. For comparison tasks (Items 10-12), participants would choose between options. After each judgment, participants would rate their confidence on a scale (e.g., 4-point scale: not at all confident to very confident).

Accuracy for estimation tasks would be measured by comparing participants' estimates to the actual values, potentially using metrics robust to skewed data (e.g., log-transformed errors). For comparison tasks, accuracy is simply whether the correct option was chosen. Confidence-accuracy calibration would be assessed by grouping judgments by confidence level and calculating the average accuracy within each group, or by using calibration metrics such as the Brier score.

This experimental approach, combining stimuli designed to probe specific cognitive biases with controlled manipulations of information quality from a source like an LLM, allows for a detailed examination of how human intuition, cognitive heuristics, and external information interact to shape energy perceptions and the subjective certainty people hold in those perceptions. Understanding these interactions is essential for developing effective communication strategies and decision aids that mitigate misperceptions and improve energy literacy. Simple interventions, such as providing scale information (e.g., listing the range of energy use for appliances) or specific heuristics (e.g., "appliances that heat or cool use a lot of energy"), have shown promise in correcting misperceptions. This research can inform how LLMs or other digital tools might be designed to provide energy information in a way that effectively counters common biases and improves calibration.




---------

# https://notebooklm.google.com/notebook/a04e8d62-e334-44e2-86ee-f1bf4b02a21f?pli=1

Engaging with household energy management necessitates navigating a complex domain characterized by inherent invisibility and abstract units, which contributes to significant cognitive challenges for lay individuals. A robust body of research grounded in cognitive psychology reveals systematic biases and reliance on simplifying heuristics that can lead to inaccurate perceptions of energy consumption and savings. Specifically, studies consistently document a "compressive bias," where individuals tend to severely underestimate the energy consumed by high-impact appliances or activities while relatively overestimating those with low energy use. This often results in prioritizing low-impact conservation behaviors, such as turning off lights, over more effective measures like efficiency upgrades or adjustments to heating/cooling systems, because the former are more salient or frequently considered. These misperceptions stem, in part, from reliance on intuitive but often misleading cues like appliance size, frequency of use, or whether it produces heat or light, rather than integrating critical factors like power draw (watts) and duration of operation (hours). Energy experts, in contrast, employ more principled heuristics grounded in domain knowledge, such as recognizing the high energy demands of heating and cooling processes.

As Large Language Models (LLMs) become increasingly ubiquitous information sources, they are poised to function as external cognitive aids for complex decision-making tasks, including those related to household energy management. However, the effectiveness of leveraging LLMs in this domain critically depends on understanding how human users perceive and interact with the AI, particularly regarding their trust and reliance calibration. Miscalibrated reliance, whether over-reliance on potentially flawed outputs or under-reliance preventing effective use, can undermine conservation efforts. Users' pre-existing mental models of energy use, along with their emerging mental models of LLM capabilities, are crucial factors in this interaction. Research into human-AI interaction highlights the challenge of calibrated trust, where reliance should align with the AI's actual competence. For LLMs, whose outputs can be fluent but sometimes inaccurate or overly confident ("hallucination"), this calibration is particularly difficult.

To investigate these dynamics, experimental task stimuli can be designed that explicitly leverage known human cognitive biases in the energy domain and systematically manipulate characteristics of LLM output, such as uncertainty expression. Such designs allow for the measurement of participants' confidence-accuracy calibration when evaluating energy information, especially in areas where human intuition is often flawed and LLMs may also exhibit errors or limitations.

**Task Design Leveraging Cognitive Biases:**

The core tasks for such a study should draw directly from established methods in energy cognition research that have reliably elicited human biases.

1.  **Energy Estimation Tasks:** These require participants to quantify energy use, typically using Watt-hours (Wh) for hourly consumption or kWh for larger units or time periods, often relative to a standard reference like a 100W incandescent bulb. This method reliably reveals the compressive bias, showing severe underestimation of high-energy items and slight overestimation of low-energy items.
2.  **Behavioral Choice Tasks (BCTs):** These involve presenting participants with pairs or sets of energy-saving actions or appliance choices and asking them to select the most energy-efficient or impactful option. By contrasting actions known to be subject to misperceptions (e.g., low-impact curtailment vs. high-impact efficiency), these tasks reveal whether choices are guided by actual impact or misleading heuristics/salience.
3.  **Heuristic Assessment:** Including measures to understand the "rules for judging joules" participants use is crucial. This can involve asking participants to rate the perceived accuracy of different heuristics (e.g., "Larger devices use more energy") or use open-ended questions to elicit their reasoning during estimation or choice tasks.

**Manipulation of LLM Output Characteristics:**

The study design can systematically vary how the LLM presents energy information or advice. A primary manipulation identified in the sources is the explicit expression of uncertainty.

*   **Uncertainty Framing:** Pre-generated LLM responses can be created for each task item, varying the language used to express confidence or uncertainty. Conditions could include:
    *   **High Confidence/No Uncertainty:** Presents a specific numerical estimate or definitive advice without hedges or uncertainty markers.
    *   **Low Linguistic Uncertainty:** Uses verbal hedges (e.g., "approximately," "typically," "around").
    *   **Explicit Verbal Uncertainty:** Includes explicit statements acknowledging uncertainty (e.g., "I am not entirely sure," "It's difficult to predict precisely"). Research suggests different phrasing styles (e.g., first-person vs. general) can have different impacts.
    *   **Numerical Uncertainty:** Presents estimates as a range or with confidence intervals (e.g., "between X and Y," "likely around X +/- Z").
*   **Accuracy/Content Alignment:** The *content* of the LLM response (the estimate or recommended action) can also be controlled. For different items, the LLM response could be:
    *   **Accurate:** The estimate or advice aligns with ground truth (e.g., based on DOE/EIA data).
    *   **Inaccurate (Random Error):** The estimate or advice is incorrect, but not in a pattern mirroring human biases.
    *   **Inaccurate (Mirroring Human Bias):** The estimate or advice reflects common human misperceptions (e.g., overestimates a low-energy item or underestimates a high-energy item). This tests if users project their own flawed mental models onto the AI or if the AI reinforces existing biases.
    *   **Inaccurate (Reflecting Potential AI Error):** The estimate or advice reflects potential issues specific to LLMs (e.g., a plausible but factually incorrect "hallucination").
    *   **Expert Heuristic Based:** The advice explicitly leverages an expert heuristic known to be more accurate than novice ones (e.g., "Remember that heating and cooling appliances use significantly more energy per hour than most electronics").

Participants would typically perform the estimation or choice task after viewing the LLM's pre-generated response under their assigned uncertainty condition. Measures would include their own estimates/choices, confidence in their response, perceived accuracy/trustworthiness of the LLM, and potentially reliance (e.g., agreement with LLM, distance of participant estimate from LLM estimate).

**Example Stimuli Set (15 Items):**

This set draws on appliances and actions identified in the sources as subject to systematic misperceptions and where expert/novice heuristics diverge. Task format can be Estimation (Wh/hr relative to 100 Wh for a 100W bulb, or percentage of total bill) or Behavioral Choice (which saves more).

**Instructions (Adapted from Attari et al., 2010; Marghetis et al., 2019):** "For each item, please estimate its typical energy use per hour OR compare the energy savings of the two actions. Before you make your decision, you will see information from an AI Energy Advisor. A standard 100-Watt incandescent light bulb uses 100 Watt-hours (Wh) in one hour. Please use 'Wh' as your unit or the provided percentage scale for estimates. For choices, select the option you believe saves more energy annually."

**Stimuli Items:**

*   **Items known to be severely underestimated (High Energy Use):**
    1.  **Central Air Conditioner:** Estimate Wh/hr. (Ground Truth: High, often >3000 Wh/hr). *LLM Variation:* "Typically uses about 3500 Wh per hour." vs. "Often uses around 3500 Wh per hour, though exact use varies." vs. "It's difficult to be certain, but AC use is generally very high, maybe around 3500 Wh/hr."
    2.  **Electric Clothes Dryer:** Estimate Wh/hr. (Ground Truth: High, >2000 Wh/hr). *LLM Variation:* "Consumes approximately 2500 Wh per hour." vs. "Consumes about 2500 Wh per hour." vs. "Frankly, I'm not highly confident in predicting dryer energy use per hour, but estimates are around 2500 Wh/hr."
    3.  **Electric Water Heater:** Estimate percentage of annual energy bill. (Ground Truth: High, often 14-18%). *LLM Variation:* "Accounts for roughly 15% of a typical bill." vs. "Accounts for about 15% of a typical bill." vs. "It's hard to give an exact number, but it's likely around 15% of the bill." (Targets underestimation bias for hidden, high-use items).
    4.  **Space Heater (1500W):** Estimate Wh/hr. (Ground Truth: 1500 Wh/hr). *LLM Variation:* "Uses exactly 1500 Wh per hour." vs. "Uses approximately 1500 Wh per hour." vs. "Based on wattage, it uses 1500 Wh/hr, but I'm not completely certain if usage is always constant." (Targets reliance on wattage cue vs. perceived heat).

*   **Items known to be slightly overestimated (Low Energy Use):**
    5.  **Laptop Computer:** Estimate Wh/hr. (Ground Truth: Low, 30-70 Wh/hr). *LLM Variation:* "Uses around 50 Wh per hour." vs. "Uses about 50 Wh per hour, depending on activity." vs. "It's hard to say precisely, but it might be around 50 Wh per hour." (Targets overestimation of electronics/frequent use).
    6.  **Unplugging Phone Chargers (Vampire Loads):** Which saves more annually: Unplugging all phone chargers OR Replacing 5 frequently used incandescent bulbs with LEDs? (Ground Truth: LEDs save significantly more). *LLM Variation:* "Replacing bulbs saves more." vs. "Likely replacing bulbs saves more." vs. "It's often assumed unplugging chargers saves a lot, but replacing bulbs probably saves more." (Targets common misperception of low-impact actions).
    7.  **Turning Off Lights:** Which saves more annually: Turning off lights meticulously when leaving a room OR Upgrading attic insulation? (Ground Truth: Insulation saves significantly more). *LLM Variation:* "Upgrading insulation saves much more." vs. "Upgrading insulation likely saves more." vs. "I'm not 100% sure, but insulation is usually considered a very high-impact action compared to lights." (Targets prioritization of curtailment vs. efficiency).

*   **Items where Novice vs. Expert Heuristics Diverge:**
    8.  **Electric Oven:** Estimate Wh/hr during cooking. (Ground Truth: High, ~1000-2000 Wh/hr, but intermittent). *LLM Variation:* "Uses around 1500 Wh/hr while heating." vs. "Likely uses about 1500 Wh/hr while heating." vs. "It's hard to estimate precisely as it cycles, but when it's on, it's a high energy user, maybe 1500 Wh/hr." (Targets 'heat' heuristic).
    9.  **Refrigerator:** Estimate Wh/hr average. (Ground Truth: Moderate, ~50-100 Wh/hr average, runs continuously). *LLM Variation:* "Uses about 70 Wh per hour averaged over time." vs. "Often uses around 70 Wh per hour averaged." vs. "Estimating continuous, moderate use like a fridge is tricky, but it averages about 70 Wh/hr." (Targets 'size' heuristic vs. continuous running and underestimation of continuous loads).
    10. **LED Light Bulb (9W):** Estimate Wh/hr. (Ground Truth: 9 Wh/hr). *LLM Variation:* "Uses 9 Wh per hour." vs. "Typically uses 9 Wh per hour." vs. "Compared to old bulbs, this uses very little, maybe 9 Wh/hr, though I'm not very confident in estimating such low use." (Targets overestimation of low-energy/bright items).
    11. **Washing Clothes in Cold vs. Hot Water:** Which action saves more electricity per load? (Ground Truth: Using cold water saves significantly more, as heating water is the main energy use). *LLM Variation:* "Washing in cold water saves much more." vs. "Cold water usually saves more electricity." vs. "I'm not absolutely sure, but washing in cold water is typically a high-impact saving because heating the water takes a lot of energy." (Targets misperception about effectiveness vs. temperature).

*   **Items with Potential for Misinformation or Complex Cues:**
    12. **Smart Thermostat:** Categorization: Is it true that simply installing a smart thermostat automatically saves a lot of energy without programming or adjustments? (Ground Truth: False; savings depend on user programming/behavior). *LLM Variation:* "It is false; programming is key." vs. "Likely false; programming is key." vs. "It's often tricky, but I believe savings depend on programming, so probably false." (Targets common misconception and nuance).
    13. **Phantom Load Belief:** Categorization: Is it true that leaving a phone charger plugged in when not charging uses a significant amount of electricity? (Ground Truth: False; phantom load is very low). *LLM Variation:* "It is false; the load is very low." vs. "Likely false; the load is very low." vs. "Many people think so, but I'm uncertain how much it actually uses, maybe not significant." (Targets common misconception and overestimation of low-impact items).
    14. **Comparing Two Refrigerators:** Which refrigerator is more energy efficient based on its Energy Star label (Show two labels with different kWh/year ratings)? (Ground Truth: Lower kWh/year is more efficient). *LLM Variation:* "Choose the one with lower kWh/year." vs. "The one with lower kWh/year is likely more efficient." vs. "I'm not completely certain about Energy Star labels, but generally lower kWh/year indicates more efficiency." (Targets use of external information/labels and numeracy).
    15. **Ranking Appliances by Annual Energy Use:** Rank: Central AC, Refrigerator, Clothes Dryer, Laptop Computer. (Ground Truth: AC > Dryer > Refrigerator > Laptop). *LLM Variation:* "The order is AC, Dryer, Refrigerator, Laptop." vs. "I believe the order is AC, Dryer, Refrigerator, Laptop." vs. "Ranking appliances is difficult, but I'd guess it's AC, Dryer, Refrigerator, then Laptop, though I'm not highly confident." (Targets broad magnitude comparison and range compression).

**Measuring Confidence-Accuracy Calibration:**

Following each item presentation and participant response, several measures are critical for assessing calibration:

1.  **Participant Estimate/Choice:** The primary measure of their judgment. Accuracy is assessed by comparing it to ground truth (for estimation and choice tasks) or expert benchmarks (for heuristic-aligned items).
2.  **Participant Confidence:** Participants rate their confidence in their *own* response using a Likert scale (e.g., 4-point or 7-point scale).
3.  **Perceived LLM Trustworthiness/Confidence:** Participants rate their trust in or perceived confidence of the *LLM's* response for that specific item. This probes their mental model of the AI's capabilities and reliability on a task-specific level.
4.  **Reliance:** Measured implicitly by analyzing how participants' estimates or choices change after seeing the LLM response, or explicitly by asking participants how much they relied on the LLM's suggestion.

Calibration can be analyzed by comparing participant confidence levels to the actual accuracy of their responses across different LLM uncertainty conditions. Miscalibration occurs when confidence does not align with accuracy (e.g., high confidence in an incorrect estimate, low confidence in a correct estimate). Furthermore, analyzing whether the *pattern* of participant responses and their confidence levels mirrors the known human biases (e.g., underestimating high-energy use, overestimating low-energy use) provides insight into whether their interaction with the LLM reinforced or corrected these existing cognitive structures. The goal is to identify LLM output characteristics that promote *appropriate reliance* – relying more on accurate information and less on inaccurate information, thereby improving calibration and, ideally, actual energy judgments and decision-making.



--------------



# https://notebooklm.google.com/notebook/5f89be29-389a-4d18-8ef1-adb57ce564b9?pli=1

**The Problem: Human Energy Misperceptions**

Public understanding of home energy use is marked by significant and systematic biases. Lay individuals tend to underestimate the energy consumption of high-impact activities and appliances, such as heating and cooling or major appliances like clothes dryers and electric water heaters. Conversely, they often overestimate the energy use of low-consumption items or the savings from low-impact actions, such as turning off lights. This phenomenon is known as range compression bias. These misperceptions often stem from reliance on cognitive heuristics, or simple rules for quick decisions, that may be readily available but ultimately misleading. Examples include judging energy use based on device visibility, operational duration, or perceived heat output, rather than actual energy consumption. Such patterns are consistent with theories of bounded rationality, where cognitive limitations and incomplete information lead to "satisficing" rather than optimizing energy decisions. Correcting these misperceptions is crucial because they can hinder conservation efforts and undermine support for evidence-based energy policies.

**The Goal: Measuring Calibrated Trust in LLMs**

Introducing new information sources, such as Large Language Models (LLMs), into the domain of household energy management presents both opportunities and challenges. LLMs could potentially serve as decision aids, helping users overcome their cognitive biases by providing accurate information or effective strategies. However, effective human-AI collaboration relies on calibrated trust, meaning a user's reliance on the system aligns with the system's actual capabilities and reliability. Miscalibration, particularly over-trust (placing more confidence/reliance than warranted), can lead to suboptimal outcomes. Research suggests that the fluency of LLM outputs might inflate perceived competence and that users can overestimate LLM accuracy compared to objective benchmarks, especially for longer explanations. Measuring confidence-accuracy calibration specifically in the context of energy judgments, where human intuition is often flawed and LLMs may also err (e.g., through hallucination or replicating common biases), is essential to understand how users will interact with and potentially rely on AI for energy decisions.

**Stimulus Design Strategy**

To investigate how lay users evaluate LLM-generated energy information and assess their trust calibration, a key task involves presenting participants with hypothetical scenarios where an LLM provides information or advice about household energy use. By systematically manipulating the accuracy and characteristics of the LLM's output, researchers can measure how participants evaluate this information and their confidence in their evaluation.

A set of 10-15 stimulus items should be designed, covering a range of common household appliances and energy-related actions that are known to elicit specific human biases. For each item, multiple versions of a hypothetical LLM response should be created, varying in accuracy and error type. Participants would be asked to evaluate the provided LLM response for accuracy and indicate their confidence in their evaluation.

**Selecting Stimulus Items**

The items should be selected based on findings from sources like Attari et al. (2010) and Marghetis et al. (2019). A balanced set might include:

1.  **High-Consumption Appliances (often underestimated):**
    *   Central Air Conditioner (per hour or month)
    *   Electric Water Heater (per shower or month)
    *   Electric Clothes Dryer (per load)
    *   Refrigerator (per day or year)
    *   Electric Oven/Stovetop (per hour of use)

2.  **Low-Consumption Appliances (often overestimated):**
    *   Incandescent Light Bulb (per hour)
    *   Phone Charger (plugged in)
    *   TV (turned off but plugged in)
    *   Laptop (in use)

3.  **High-Impact Conservation Actions (often underestimated or less salient):**
    *   Adding Attic Insulation
    *   Sealing Air Leaks
    *   Upgrading Windows
    *   Replacing an old refrigerator with an ENERGY STAR model
    *   Upgrading to a high-efficiency HVAC system

4.  **Low-Impact Conservation Actions (often overestimated):**
    *   Turning off lights when leaving a room
    *   Taking shorter showers (if electric water heater)
    *   Unplugging phone chargers or idle electronics ("energy vampires")

For each item, formulate a question the user might ask an LLM, e.g., "How much energy does [item] use?" or "How much money can I save by [action]?"

**Designing LLM Output Variations**

For each of the 10-15 stimulus items, create multiple versions of the LLM's answer. These variations are the experimental manipulations. Examples for an item like "Estimate the energy use of a central AC unit per hour":

1.  **Accurate/Expert Baseline:** An answer that provides a reasonably accurate range or typical value (e.g., "A central air conditioner uses between 2,000 and 5,000 watts (or 2-5 kWh) per hour, depending on size and efficiency."). This could also incorporate an expert heuristic, like linking high energy use to cooling.
2.  **Human-Bias Mirroring Error:** An answer that significantly *underestimates* the energy use, reflecting the common human range compression bias for high-consumption items. (e.g., "A central AC unit uses about 500 watts (0.5 kWh) per hour.")
3.  **Common AI Error (Hallucination):** An answer that is factually incorrect or nonsensical, typical of an LLM hallucination, but stated confidently. (e.g., "A central air conditioner uses approximately 50 kWh per hour." - *wildly high*) or (e.g., "A central air conditioner consumes about 10 gallons of water per hour.")
4.  **Fluent but Wrong (potentially overlapping with #2 or #3):** An answer phrased convincingly and fluently, but factually incorrect, tapping into the idea that fluency can inflate perceived accuracy. This requires careful wording.
5.  **Accurate with Uncertainty Expression:** An accurate answer that includes explicit language indicating uncertainty or caveats. (e.g., "Estimating AC use can be tricky as it varies greatly, but a typical unit might use 2-5 kWh per hour...")

Similarly, for a low-impact action like "How much can I save annually by turning off lights?", the variations could include:

1.  **Accurate/Expert Baseline:** An answer explaining that savings from lighting are relatively small compared to heating/cooling or major appliances, providing a modest estimate (e.g., "Turning off lights is helpful, but typically saves only a small amount, perhaps $20-$50 per year, compared to larger energy uses."). Could incorporate the heuristic that lighting is low power compared to heat/motors.
2.  **Human-Bias Mirroring Error:** An answer that *overestimates* the savings, reflecting the common human bias for this salient, low-effort action. (e.g., "You can save hundreds of dollars annually by simply remembering to turn off your lights!")
3.  **Common AI Error (Hallucination):** A clearly incorrect or fabricated estimate. (e.g., "Turning off lights saves you $5 per day.")
4.  **Fluent but Wrong:** A confidently stated, overestimated savings figure.
5.  **Accurate with Uncertainty:** An accurate but hesitant response.

A comprehensive set would include a mix of these manipulations across the chosen 10-15 items. This allows researchers to examine how participants evaluate different types of LLM outputs for different types of energy information.

**Measuring Confidence-Accuracy Calibration**

For each stimulus item and its associated LLM response version, participants would:

1.  Read the question and the hypothetical LLM answer.
2.  Rate the perceived accuracy of the LLM's answer (e.g., on a scale from 1 "Definitely Inaccurate" to 7 "Definitely Accurate").
3.  Indicate their confidence in their *own assessment* of the LLM's accuracy (e.g., on a scale from 0% "Not at all confident" to 100% "Completely confident").

To measure objective calibration, researchers compare the participant's expressed confidence in their judgment against the actual accuracy of the LLM output presented for that item. For example, if a participant rates an objectively inaccurate LLM response as "Accurate" with high confidence, this indicates overconfidence and poor calibration. If they rate an objectively accurate response as "Inaccurate" with high confidence, this indicates underconfidence.

A common metric for calibration is the Brier score, which quantifies the difference between forecast probabilities (here, participant confidence in their accuracy judgment) and actual outcomes (whether the LLM output was actually accurate or inaccurate for that item, based on expert consensus or objective data). Lower Brier scores indicate better calibration. Analyzing Brier scores (or related metrics like calibration curves) across the different stimulus items and LLM output types allows researchers to identify patterns of miscalibration.

**What These Stimuli Help Investigate**

This stimulus design directly supports testing key hypotheses identified in the survey proposal:

*   **H1b (Bias Projection):** By including LLM responses that mirror common human biases (e.g., underestimating AC use, overestimating light savings), researchers can test if participants are more likely to perceive these biased LLM outputs as accurate or express higher confidence in their evaluation of these outputs, especially if these patterns correlate with the participants' own biases measured separately (e.g., via an adaptation of the Attari et al. estimation task). This would provide evidence that users project their existing misperceptions onto their evaluation of AI capabilities.
*   **H1c/H4a (Overestimation Baseline/Miscalibration Evidence):** By comparing average perceived accuracy and confidence ratings to the actual accuracy of the presented LLM outputs, the study can assess if there is a general tendency towards overestimation of LLM accuracy and over-trust or overconfidence in evaluations of LLM outputs in this domain. Including hallucinated or confidently wrong responses is particularly useful for capturing over-trust.
*   **H2 (Individual Differences):** By correlating objective calibration scores derived from this task with measures of individual differences such as objective numeracy, multidimensional energy literacy (cognitive, action, financial), and AI literacy (objective knowledge of limitations, critical evaluation facets), researchers can test how these factors predict better calibration. For example, higher numeracy might lead to better evaluation of numerical estimates, while higher energy literacy might help spot errors based on domain knowledge and higher AI literacy might lead to appropriate skepticism about potential AI errors.
*   **H3 (Influence on Reliance):** The objective calibration scores from this task can be used to predict stated behavioral intentions in a hypothetical energy-related decision scenario where LLM advice is involved (e.g., deciding whether to follow the LLM's recommendation for energy savings based on its prior evaluations). Better objective calibration (lower miscalibration) is hypothesized to predict more appropriate reliance, perhaps choosing to verify rather than blindly accept advice when uncertainty or potential for error is present.

In summary, designing task stimuli that combine known human biases in energy judgment with controlled variations in LLM output characteristics provides a robust method for empirically measuring confidence-accuracy calibration. This approach offers critical insights into how lay users perceive and evaluate AI-generated information in a domain where their own understanding is often flawed, and how individual differences influence this process, ultimately informing the design of more effective and trustworthy AI-assisted energy decision aids.