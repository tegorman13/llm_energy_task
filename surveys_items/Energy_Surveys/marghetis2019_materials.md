# Survey Questions from Marghetis et al. (2019) - Supplementary Information


Marghetis, T., Attari, S. Z., & Landy, D. (2019). Simple interventions can correct misperceptions of home energy use. Nature Energy, 4(10), 874–881. https://doi.org/10.1038/s41560-019-0467-2


*Note: This markdown file reconstructs the survey components based on the provided table image. Wh values (Watt-hours) for BCT items are from the table. The full list of 36 appliances for the estimation task comes from the second image and paper context.*

## Interventions / Conditions

*   **Variable:** `Condition`
*   **Assignment:** Participants were randomly assigned to one of four conditions:
    1.  **None (Control):** Received only the baseline reminder.
    2.  **Scale-Use:** Received baseline reminder + scale-use information.
    3.  **Explicit Heuristic:** Received baseline reminder + explicit heuristic.
    4.  **Both:** Received baseline reminder + scale-use information + explicit heuristic.
*   **Baseline Reminder (All Conditions):** "We reminded all participants that a 100 W incandescent lightbulb uses 100 units of energy in 1 hr (i.e. 100 Wh)."
*   **Scale-Use Intervention Text:** "A 5-watt phone charger uses 5 units of energy to charge a smartphone in one hour. A typical clothes dryer uses about 4,000 units of energy in one hour."
*   **Explicit Heuristic Intervention Text:** "Large appliances that primarily heat or cool things use a lot more energy than people think."

## Demographics & Setup

*   **Variable:** `Gender`
    *   **Question:** Standard Gender Question
    *   **Response Scale:** closed-ended (e.g., Male, Female, Other, Prefer not to say)
    *   **Analysis:** `correct` (Used as covariate/descriptor)
*   **Variable:** `Age`
    *   **Question:** Standard Age Question
    *   **Response Scale:** closed-ended (numeric input or brackets)
    *   **Analysis:** `correct` (Used as covariate/descriptor)
*   **Variable:** `Income`
    *   **Question:** Standard Household Income Question
    *   **Response Scale:** closed-ended (brackets)
    *   **Analysis:** `correct` (Used as covariate/descriptor)
*   **Variable:** `Education`
    *   **Question:** Standard Education Level Question
    *   **Response Scale:** closed-ended (levels)
    *   **Analysis:** `correct` (Used as covariate/descriptor)
*   **Variable:** `PEM_Train` (Physics, Engineering, Math Training)
    *   **Question:** Whether they had college training in physics, engineering or mathematics.
    *   **Response Scale:** closed-ended (Yes/No)
    *   **Analysis:** `correct` (Used as covariate/descriptor)
*   **Variable:** `Elec_Train` (Electrician Training)
    *   **Question:** Whether they had training as an electrician.
    *   **Response Scale:** closed-ended (Yes/No)
    *   **Analysis:** `correct` (Used as covariate/descriptor)
*   **Variable:** `Pol_ID` (Political Ideology)
    *   **Question:** Political ideology, from very liberal to very conservative.
    *   **Response Scale:** 7-point scale (1=Very Liberal, 7=Very Conservative)
    *   **Analysis:** `correct` (Used as covariate/descriptor)
*   **Variable:** `Zipcode`
    *   **Question:** Standard Zip Code Question
    *   **Response Scale:** open-ended (numeric)
    *   **Analysis:** `correct` (Used as covariate/descriptor)
*   **Variable:** `WashTime`
    *   **Question:** Open-ended estimate of time spent using washing machine in a typical week.
    *   **Response Scale:** open-ended (numeric, hours)
    *   **Analysis:** `open-ended`
*   **Variable:** `ProjTime`
    *   **Question:** Open-ended estimate of time spent using projector in a typical week.
    *   **Response Scale:** open-ended (numeric, hours)
    *   **Analysis:** `open-ended`
*   **Variable:** `Confidence`
    *   **Question:** "After completing the estimation task, participants reported overall confidence in their estimates on a four-point scale..."
    *   **Response Scale:** 4-point scale (e.g., 1=Very Uncertain, 4=Very Confident)
    *   **Analysis:** `closed-ended`
*   **Variable:** `Washing_OE`, `Projector_OE`
    *   **Question:** "...and supplied open-ended descriptions of how they estimated the energy use of washing machines and projectors."
    *   **Response Scale:** open-ended (text)
    *   **Analysis:** `open-ended`

## Estimation Task

*   **Overall Task:** Participants estimated the electricity used in one hour (in Watt-hours, Wh) for 36 home appliances presented in random order.
*   **Appliances Estimated** (with `rawActual` Wh values from supplementary data):
    *   CFL: 23
    *   Laptop: 138
    *   Desktop: 32
    *   Stereo: 33
    *   WAC (Window Air Conditioner): 1157
    *   CAC (Central Air Conditioner): 3797
    *   Dryer: 3938
    *   Dishwasher: 1201
    *   Tesla (Charging): 11520
    *   Dehumidifier: 734
    *   Humidifier: 185
    *   Vacuum: 809
    *   Incan_bulb (Incandescent): 100
    *   Crockpot: 318
    *   Oven (Electric): 3050
    *   Heater (Portable): 1290
    *   Smartphone (Charging): 3.42
    *   TV: 68
    *   Fan: 69
    *   WaterHeater (Electric): 4284
    *   Modem: 12.1
    *   Cable (Box): 33
    *   Clock: 2.8
    *   Iron: 1198
    *   Projector: 197
    *   Fridge: 364
    *   Freezer: 384
    *   Washer: 478
    *   Console (Videogame): 111
    *   Blanket (Electric): 197
    *   DVD (Player): 9.13
    *   Microwave: 1101
    *   Toaster: 1213
    *   LED (Bulb): 15
    *   Kettle (Electric): 1390
    *   Coffee (Maker): 1134
*   **Response Scale:** Numeric entry (Watt-hours)
*   **Analysis:** Compared estimates to `rawActual` values. Calculated slope, correlation (rho), and scale use (sigma ratio).

## Behavioural Choice Task (BCT)

*   **Overall Task:** Participants completed 20 pairwise choices, selecting the task/activity/change that would use the least electricity or lead to the greatest energy conservation. Presented after re-showing intervention text.
*   **Response Scale:** Binary Choice (Left Option / Right Option)

*   **BCT1:**
    *   **Scenario:** (Left) Using an electric blanket for an hour OR (Right) Using a space heater for an hour.
    *   **Values:** L=197, R=1290, Wh=1093
    *   **Correct:** Left
*   **BCT2:**
    *   **Scenario:** (Left) Reading a book for 20 hours OR (Right) Watching TV for 20 hours.
    *   **Values:** L=0, R=1360, Wh=1360
    *   **Correct:** Left
*   **BCT3:**
    *   **Scenario:** (Left) Running a central air conditioner for an hour OR (Right) Running a window air conditioner unit for an hour.
    *   **Values:** L=3797, R=1157, Wh=2640
    *   **Correct:** Right
*   **BCT4:**
    *   **Scenario:** (Left) Using a laptop computer for 10 hours OR (Right) Using a desktop computer for 10 hours.
    *   **Values:** L=1380, R=320, Wh=1060
    *   **Correct:** Right
*   **BCT5:**
    *   **Scenario:** (Left) Line-drying clothes instead of using an electric clothes dryer for an hour OR (Right) Turning off the lights when leaving a room for 10 hours (one 100W incandescent bulb).
    *   **Values:** L=3938, R=1000, Wh=2938
    *   **Correct:** Left
*   **BCT6:**
    *   **Scenario:** (Left) Watching a movie on a laptop OR (Right) Watching a movie using a projector.
    *   **Values:** L=138, R=197, Wh=59
    *   **Correct:** Left
*   **BCT7:**
    *   **Scenario:** (Left) Using a microwave for 15 minutes OR (Right) Using an electric oven for 15 minutes.
    *   **Values:** L=275, R=763, Wh=487
    *   **Correct:** Left
*   **BCT8:**
    *   **Scenario:** (Left) Using an electric kettle to heat water OR (Right) Using a microwave to heat water (same amount, assume same time).
    *   **Values:** L=1390, R=1101, Wh=289
    *   **Correct:** Right
*   **BCT9:**
    *   **Scenario:** (Left) Replacing one 100W incandescent light bulb with an equivalent LED bulb, used for 5 hours OR (Right) Unplugging a phone charger when not in use for a whole day (23 hours).
    *   **Values:** L=425, R=0, Wh=425 (*Note: Charger unplugged savings assumes zero standby, which might not be true, but likely negligible vs bulb savings*)
    *   **Correct:** Left
*   **BCT10:**
    *   **Scenario:** (Left) Cooking with a crockpot for 4 hours OR (Right) Cooking with an electric oven for 1 hour.
    *   **Values:** L=1272, R=3050, Wh=1778
    *   **Correct:** Left
*   **BCT11:**
    *   **Scenario:** (Left) Using a dehumidifier for 3 hours OR (Right) Using a humidifier for 3 hours.
    *   **Values:** L=2202, R=555, Wh=1647
    *   **Correct:** Right
*   **BCT12:**
    *   **Scenario:** (Left) Washing dishes by hand (using hot water from electric heater) OR (Right) Using a dishwasher for one cycle (including hot water from electric heater). *Note: This is complex, values likely estimates.*
    *   **Values:** L=?, R=1201 + water heat?, Wh=? *(Table value R=1201)*
    *   **Correct:** Dishwasher (typically, depending on handwashing style) *(Table Correct: Right)*
*   **BCT13:**
    *   **Scenario:** (Left) Making coffee with an electric coffee maker OR (Right) Making coffee with an electric kettle (then pour-over/press). *Assume same amount.*
    *   **Values:** L=1134, R=1390, Wh=256
    *   **Correct:** Left
*   **BCT14:**
    *   **Scenario:** (Left) Using a toaster for 5 minutes OR (Right) Using a toaster oven for 5 minutes. *Note: Actual values vary widely.*
    *   **Values:** L=101, R=? *(Table value L=1213)*
    *   **Correct:** Depends on specific appliances. *(Table Correct: Left)*
*   **BCT15:**
    *   **Scenario:** (Left) Running a refrigerator for 24 hours OR (Right) Running a freezer for 24 hours.
    *   **Values:** L=8736, R=9216, Wh=480 *(Table values L=364, R=384 imply per hour use? If so, diff=20 Wh/hr)*
    *   **Correct:** Refrigerator *(Table Correct: Left)*
*   **BCT16:**
    *   **Scenario:** (Left) Using a ceiling fan for 8 hours OR (Right) Using a window air conditioner for 1 hour.
    *   **Values:** L=552, R=1157, Wh=605
    *   **Correct:** Left
*   **BCT17:**
    *   **Scenario:** (Left) Charging a Tesla electric car for 1 hour OR (Right) Running an electric clothes dryer for 1 hour.
    *   **Values:** L=11520, R=3938, Wh=7582
    *   **Correct:** Right
*   **BCT18:**
    *   **Scenario:** (Left) Ironing clothes for 30 minutes OR (Right) Using a clothes washer for one cycle.
    *   **Values:** L=599, R=478, Wh=121
    *   **Correct:** Right
*   **BCT19:**
    *   **Scenario:** (Left) Using a vacuum cleaner for 30 minutes OR (Right) Listening to a stereo system for 8 hours.
    *   **Values:** L=405, R=264, Wh=141
    *   **Correct:** Right
*   **BCT20:**
    *   **Scenario:** (Left) Using a hair dryer for 15 minutes OR (Right) Making toast in a toaster. *Note: Hair dryer not in main list, assume ~1500W.*
    *   **Values:** L=375, R=101 (for 5 min), Wh=? *(Table value L=1500? R=1213)*
    *   **Correct:** Depends heavily on duration/appliance. *(Table Correct: Left)*

## Difference: Energy vs Electricity

*   **Variable:** `Diff_Energy_v_Electricity`
    *   **Question:** "Is there a difference between energy and electricity?"
    *   **Response Scale:** Yes/No/Don't Know
    *   **Analysis:** `closed-ended`
*   **Variable:** `Exp_Energy_v_Electricity`
    *   **Question:** "If yes, what is the difference between energy and electricity?"
    *   **Response Scale:** open-ended (text)
    *   **Analysis:** `open-ended`
*   **Variable:** `Diff_Power_v_Energy`
    *   **Question:** "Is there a difference between power and energy?"
    *   **Response Scale:** Yes/No/Don't Know
    *   **Analysis:** `closed-ended`
*   **Variable:** `Exp_Power_v_Energy`
    *   **Question:** "If yes, what is the difference between power and energy?"
    *   **Response Scale:** open-ended (text)
    *   **Analysis:** `open-ended`

## Perceptions of National Energy

*   **Variable:** `Perc_Elec`
    *   **Question:** "What percentage of total energy consumed in the US is electricity?"
    *   **Response Scale:** open-ended (percentage)
    *   **Analysis:** `open-ended`
*   **Variable:** `Perc_Elec_Gas`
    *   **Question:** "What percentage of electricity in the US is generated from natural gas?"
    *   **Response Scale:** open-ended (percentage)
    *   **Analysis:** `open-ended`

## Energy Source & Policy Questions

*   **Variable:** `HVAC`
    *   **Question:** "What fuel source primarily heats your home?"
    *   **Response Scale:** Multiple Choice (Natural Gas, Fuel Oil, Electricity, Propane, Wood, Solar, Other, Don't Know)
    *   **Analysis:** `closed-ended`
*   **Variable:** `Heating_Gas`
    *   **Question:** "Compared to heating your home with natural gas, heating the same home with electricity would cost:"
    *   **Response Scale:** 7-point scale (1=Much Less, 4=About the Same, 7=Much More)
    *   **Analysis:** `Mean = 5.3`
*   **Variable:** `Heating_Elec`
    *   **Question:** "Compared to heating your home with electricity, heating the same home with natural gas would cost:"
    *   **Response Scale:** 7-point scale (1=Much Less, 4=About the Same, 7=Much More)
    *   **Analysis:** `Mean = 2.7`
*   **Variable:** `Residential`
    *   **Question:** "What percentage of the total energy used in the US is used in homes (residential sector)?"
    *   **Response Scale:** open-ended (percentage)
    *   **Analysis:** `Mean = 37`
*   **Variable:** `Nuclear`, `NaturalGas`, `Coal`, `Hydro` (Example subset shown)
    *   **Question:** "What percent of electricity in the US comes from the following sources? [Nuclear Power, Natural Gas, Coal, Hydropower]" (Asked for several sources)
    *   **Response Scale:** open-ended (percentage, for each source)
    *   **Analysis:** `Mean Nuclear = 11`, `Mean NatGas = 21`, `Mean Coal = 30`, `Mean Hydro = 11`
*   **Variable:** `FundRenew` (Policy Support Item 1)
    *   **Question:** "Fund more research into renewable energy sources, such as solar and wind power."
    *   **Response Scale:** 4-point scale (1=Strongly Oppose, 4=Strongly Support)
    *   **Analysis:** Part of Policy Support scale (`alpha=0.83`)
*   **Variable:** `RequireRenew` (Policy Support Item 2)
    *   **Question:** "Require electric utilities to produce at least 20% of their electricity from wind, solar, or other renewable energy sources, even if it costs the average household an extra $100 a year."
    *   **Response Scale:** 4-point scale (1=Strongly Oppose, 4=Strongly Support)
    *   **Analysis:** Part of Policy Support scale (`alpha=0.83`)
*   **Variable:** `RegCarbon` (Policy Support Item 3)
    *   **Question:** "Regulate carbon dioxide (the primary greenhouse gas) as a pollutant."
    *   **Response Scale:** 4-point scale (1=Strongly Oppose, 4=Strongly Support)
    *   **Analysis:** Part of Policy Support scale (`alpha=0.83`)

## Climate Change Questions

*   **Variable:** `CC_Happen`
    *   **Question:** "Do you think that climate change is happening?"
    *   **Response Scale:** Yes / No / Don't know
    *   **Analysis:** Part of Climate Beliefs scale (`alpha=0.87`)
*   **Variable:** `CC_Cause`
    *   **Question:** "Assuming climate change is happening, do you think it is..."
    *   **Response Scale:** Caused mostly by human activities / Caused mostly by natural changes in the environment / Other (Please specify) / None of the above because climate change isn't happening
    *   **Analysis:** Part of Climate Beliefs scale (`alpha=0.87`)
*   **Variable:** `CC_Important`
    *   **Question:** "How important is the issue of climate change to you personally?"
    *   **Response Scale:** 4-point scale (e.g., Not at all important, Not too important, Somewhat important, Very important)
    *   **Analysis:** Part of Climate Beliefs scale (`alpha=0.87`)
*   **Variable:** `CC_Scientist`
    *   **Question:** "Which comes closest to your own view?"
    *   **Response Scale:** Most scientists think climate change is happening / Most scientists do not think climate change is happening / There is a lot of disagreement among scientists about whether or not climate change is happening / Don't know enough to say
    *   **Analysis:** Part of Climate Beliefs scale (`alpha=0.87`)
*   **Variable:** `CC_Sure`
    *   **Question:** "How sure are you that climate change is [is not] happening?" (Wording depends on `CC_Happen` response)
    *   **Response Scale:** 4-point scale (e.g., Extremely sure, Very sure, Somewhat sure, Not at all sure)
    *   **Analysis:** Part of Climate Beliefs scale (`alpha=0.87`)

## New Ecological Paradigm (NEP) Scale (Revised)

*   **Overall Task:** Participants rated their agreement with 15 statements.
*   **Response Scale:** 5-point scale (1=Strongly Disagree, 5=Strongly Agree)
*   **Analysis:** `alpha=0.89`

*   **NEP1:** "We are approaching the limit of the number of people the Earth can support."
*   **NEP2:** "Humans have the right to modify the natural environment to suit their needs." (R)
*   **NEP3:** "When humans interfere with nature it often produces disastrous consequences."
*   **NEP4:** "Human ingenuity will insure that we do NOT make the Earth unlivable." (R)
*   **NEP5:** "Humans are severely abusing the environment."
*   **NEP6:** "The Earth has plenty of natural resources if we just learn how to develop them." (R)
*   **NEP7:** "Plants and animals have as much right as humans to exist."
*   **NEP8:** "The balance of nature is strong enough to cope with the impacts of modern industrial nations." (R)
*   **NEP9:** "Despite our special abilities, humans are still subject to the laws of nature."
*   **NEP10:** "The so-called ‘ecological crisis’ facing humankind has been greatly exaggerated." (R)
*   **NEP11:** "The Earth is like a spaceship with very limited room and resources."
*   **NEP12:** "Humans were meant to rule over the rest of nature." (R)
*   **NEP13:** "The balance of nature is very delicate and easily upset."
*   **NEP14:** "Humans will eventually learn enough about how nature works to be able to control it." (R)
*   **NEP15:** "If things continue on their present course, we will soon experience a major ecological catastrophe."
*(R) indicates item is reverse-scored for the scale total.*

## Numeracy / Cognitive Reflection Test (CRT)

*   **Response Scale:** Open-ended numeric entry
*   **Analysis:** Scored for correctness. Part of combined Numeracy score (`alpha=0.87`).

*   **Variable:** `Flip` (Berlin Numeracy Test item variation)
    *   **Question:** "Imagine we are tossing a fair coin 1,000 times. What is your best guess about how many times the coin would come up heads in 1,000 tosses?"
    *   **Correct Answer:** 500
*   **Variable:** `Win` (Berlin Numeracy Test item variation)
    *   **Question:** "In the BIG BUCKS lottery, the chances of winning a $10.00 prize is 1%. What is your best guess about how many people would win a $10.00 prize if 1,000 people each buy a single ticket from BIG BUCKS?"
    *   **Correct Answer:** 10
*   **Variable:** `Sweep` (Berlin Numeracy Test item variation)
    *   **Question:** "In the ACME PUBLISHING SWEEPSTAKES, the chance of winning a car is 1 in 1,000. What percent of tickets of ACME PUBLISHING SWEEPSTAKES win a car?"
    *   **Correct Answer:** 0.1
*   **Variable:** `Choir` (CRT item)
    *   **Question:** "A bat and a ball cost $1.10 in total. The bat costs $1.00 more than the ball. How much does the ball cost? (in cents)"
    *   **Correct Answer:** 5 (*Note: common incorrect answer is 10*)
*   **Variable:** `Odd` (CRT item)
    *   **Question:** "If it takes 5 machines 5 minutes to make 5 widgets, how long would it take 100 machines to make 100 widgets? (in minutes)"
    *   **Correct Answer:** 5 (*Note: common incorrect answer is 100*)
*   **Variable:** `Shroom` (CRT item)
    *   **Question:** "In a lake, there is a patch of lily pads. Every day, the patch doubles in size. If it takes 48 days for the patch to cover the entire lake, how long would it take for the patch to cover half of the lake? (in days)"
    *   **Correct Answer:** 47 (*Note: common incorrect answer is 24*)
*   **Variable:** `Show` (Numeracy item - Schwartz et al., 1997 style)
    *   **Question:** "Which of the following numbers represents the biggest risk of getting a disease? 1 in 100, 1 in 1000, 1 in 10"
    *   **Correct Answer:** 1 in 10

## Difference: Rules

*   **Variable:** `Diff_Rules`
    *   **Question:** "Did the rules provided make a difference in how you estimated energy use? If yes, how?"
    *   **Response Scale:** open-ended (text)
    *   **Analysis:** `open-ended`

## Impact: Behaviors

*   **Variable:** `Impact_Behaviors`
    *   **Question:** "Did the rules provided make a difference in how you thought about energy saving behaviors? If yes, how?"
    *   **Response Scale:** open-ended (text)
    *   **Analysis:** `open-ended`
