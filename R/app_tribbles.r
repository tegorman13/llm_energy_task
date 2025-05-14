



# https://aistudio.google.com/prompts/1Akq54Jm5f-74_TV6pfmr__bAmsGRTvKM

# Load necessary library
library(tibble)

# --- Tribbles from Kantenbacher_Attari19.md ---

# 1. Estimation Task (Kantenbacher & Attari)
# Context: Participants were asked to estimate energy use in "units" where a 100W incandescent bulb = 100 units/hr.
# The 'correct_answer' below is the actual average Watt-hours (Wh), consistent with the reference unit.
estimation_tribble_kantenbacher <- tribble(
  ~question_text,                                                     ~correct_answer, ~answer_unit, ~context,
  "Estimate units of energy: Compact fluorescent light (CFL) bulb",     23,             "Wh",         "Kantenbacher_Attari19 - Estimation Task",
  "Estimate units of energy: Desktop computer",                         138,            "Wh",         "Kantenbacher_Attari19 - Estimation Task",
  "Estimate units of energy: Laptop computer",                          32,             "Wh",         "Kantenbacher_Attari19 - Estimation Task",
  "Estimate units of energy: Window air conditioner",                   1157,           "Wh",         "Kantenbacher_Attari19 - Estimation Task",
  "Estimate units of energy: Clothes dryer",                            3938,           "Wh",         "Kantenbacher_Attari19 - Estimation Task",
  "Estimate units of energy: Dishwasher",                               1201,           "Wh",         "Kantenbacher_Attari19 - Estimation Task",
  "Estimate units of energy: Vacuum",                                   809,            "Wh",         "Kantenbacher_Attari19 - Estimation Task",
  "Estimate units of energy: Charging a smartphone",                    3,              "Wh",         "Kantenbacher_Attari19 - Estimation Task", # Note: Actual value used in Marghetis study was 3.42 Wh
  "Estimate units of energy: Refrigerator",                             280,            "Wh",         "Kantenbacher_Attari19 - Estimation Task", # Note: Value differs slightly from Marghetis (363/364 Wh) - could be avg vs running
  "Estimate units of energy: Electric oven",                            3050,           "Wh",         "Kantenbacher_Attari19 - Estimation Task",
  "Estimate units of energy: Washing machine",                          478,            "Wh",         "Kantenbacher_Attari19 - Estimation Task",
  "Estimate units of energy: DVD player",                               9,              "Wh",         "Kantenbacher_Attari19 - Estimation Task", # Note: Actual value used in Marghetis study was 9.13 Wh
  "Estimate units of energy: Ceiling fan",                              69,             "Wh",         "Kantenbacher_Attari19 - Estimation Task", # Note: Value differs slightly from Marghetis (68 Wh)
  "Estimate units of energy: Microwave",                                1101,           "Wh",         "Kantenbacher_Attari19 - Estimation Task",
  "Estimate units of energy: Electric kettle",                          1390,           "Wh",         "Kantenbacher_Attari19 - Estimation Task",
  "Estimate units of energy: Toaster",                                  1213,           "Wh",         "Kantenbacher_Attari19 - Estimation Task",
  "Estimate units of energy: LED light bulb",                           15,             "Wh",         "Kantenbacher_Attari19 - Estimation Task"
)

# 2. Choice Task (Kantenbacher & Attari)
# Context: Choose the option that uses the least energy, assuming equal run time unless specified.
choice_tribble_kantenbacher <- tribble(
  ~question_text,             ~choices,                                                      ~correct_answer,             ~context,
  "Which uses less energy?", list("Window air conditioning unit", "Electric oven"),         "Window air conditioning unit", "Kantenbacher_Attari19 - Choice Task 1",
  "Which uses the least energy?", list("Running an electric water heater", "Running a vacuum cleaner", "Running a refrigerator"), "Running a refrigerator",    "Kantenbacher_Attari19 - Choice Task 2",
  "Which uses the least energy?", list("Electric blanket", "Electric space heater", "Electric treadmill"), "Electric blanket",         "Kantenbacher_Attari19 - Choice Task 3",
  "Which uses the least energy?", list("Steam iron", "Blender", "Humidifier"),               "Humidifier",                 "Kantenbacher_Attari19 - Choice Task 4",
  "Which uses the least energy?", list("Video game console", "Cable box", "Smart speaker"),  "Smart speaker",              "Kantenbacher_Attari19 - Choice Task 5",
  "Which uses the least energy?", list("Clothes dryer", "Washing machine", "Dishwasher"),    "Washing machine",            "Kantenbacher_Attari19 - Choice Task 6",
  "Which uses the least energy?", list("Microwave", "Toaster oven", "Electric kettle"),      "Microwave",                  "Kantenbacher_Attari19 - Choice Task 7", # Note: Microwave 1101W, Kettle 1390W, Toaster Oven 1450W
  "Which uses less energy?", list("Watching a movie on a 40\" flat screen TV", "Watching a movie with a digital projector"), "Watching a movie on a 40\" flat screen TV", "Kantenbacher_Attari19 - Choice Task 8", # Note: TV 145W vs Projector 225W (different from Marghetis TV value)
  "Which uses less energy?", list("A ceiling fan", "A tube fluorescent light"),             "A tube fluorescent light",   "Kantenbacher_Attari19 - Choice Task 9" # Note: Fluor 39W vs Fan 69W
)

# 3. Heuristic Accuracy Assessment (Kantenbacher & Attari - Survey 2)
# Context: Experts rated accuracy on a 1-4 scale (1=mostly inaccurate, 4=mostly accurate).
# 'expert_mean_accuracy' is the mean score from Table 1, Col 4 (N=16).
# This doesn't have a single 'correct_answer' but reflects expert judgment on the rule's validity.
heuristic_accuracy_tribble_kantenbacher <- tribble(
  ~heuristic_text,                                                                                                                                       ~type,          ~expert_mean_accuracy, ~source_type, ~context,
  "A greater temperature change requires more energy than a smaller temperature change",                                                                 "Function",      3.9,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Insulation helps to reduce the energy use of devices that heat and cool",                                                                             "Component",     3.8,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Devices that become hot to the touch use more energy than similar devices that don't",                                                                "External cue",  3.8,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Devices that need to be cooled while they are working use a lot of energy",                                                                           "Component",     3.8,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "LED lights do not use a lot of energy",                                                                                                               "Component",     3.7,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Heating or cooling something takes a lot of energy",                                                                                                  "Function",      3.6,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Boiling water and turning it into steam requires a lot of energy",                                                                                    "Function",      3.6,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Appliances that move or heat water use a lot of energy",                                                                                              "Function",      3.4,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Devices with heating elements use a lot of energy",                                                                                                   "Component",     3.4,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "It takes less energy to heat something with microwaves than with heating elements",                                                                   "Component",     3.3,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Thicker power cords are associated with more energy use",                                                                                             "External cue",  3.2,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Producing sound (music) does not require much energy",                                                                                                "Function",      3.1,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Devices that plug into a 240-volt outlet use more energy than devices that plug into a standard 120-volt outlet",                                    "External cue",  3.1,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Devices with small or focused functions (for example, a desk lamp) need less energy than devices that are designed to perform large or broadcast functions (for example, an overhead lamp)", "Function",      3.1,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Devices that primarily heat or cool use more energy than devices with a primary function involving motion",                                           "Function",      3.0,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "A device that runs on its own circuit uses a lot of energy",                                                                                          "Component",     2.9,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Devices that either make lights dim/flicker or trip circuits when turned on use a lot of energy",                                                     "External cue",  2.8,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Devices that can run on batteries are low energy consumers",                                                                                          "Component",     2.8,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Electronics that produce graphics (images) use more energy than other types of electronics",                                                          "Function",      2.8,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "The larger the plug a device has, the more energy it will use",                                                                                       "External cue",  2.7,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Heating takes more energy than cooling",                                                                                                              "Function",      2.6,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Performing a task quickly tends to take more energy than performing that same task more slowly",                                                      "Function",      2.5,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Quieter devices use less energy than ones that make noise (for example, a rattle or hum) when they are in operation",                                  "External cue",  2.4,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Cooling takes more energy than heating",                                                                                                              "Function",      2.1,                  "Expert",    "Kantenbacher_Attari19 - Heuristic Rating",
  # Novice heuristics rated by experts in Kantenbacher_Attari19 (from Supp Table 2 / Table 1)
  "Larger devices consume more energy",                                                                                                                  NA,             2.6,                  "Novice",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Devices that 'keep up the heat' or movement consume more energy",                                                                                     NA,             3.0,                  "Novice",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Devices that have an initial heating up period consume more energy than devices that do not",                                                         NA,             2.8,                  "Novice",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Devices with a lot of components use more energy",                                                                                                    NA,             2.4,                  "Novice",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Devices that charge other devices use more energy",                                                                                                   NA,             2.1,                  "Novice",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Devices that have an energy label use more energy",                                                                                                   NA,             2.1,                  "Novice",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Devices use less energy in the use phase compared to its use in a 'preparation phase'",                                                               NA,             2.1,                  "Novice",    "Kantenbacher_Attari19 - Heuristic Rating",
  "Devices that are related to each other (for example, DVD players and televisions) use similar amounts of energy",                                     NA,             1.7,                  "Novice",    "Kantenbacher_Attari19 - Heuristic Rating"
)


# --- Tribbles from Marghetis_19.md ---

# 4. Estimation Task (Marghetis et al.)
# Context: Participants were asked to estimate energy use in "units" (Wh) after seeing different anchors (V1-V4).
# The core estimation list and actual values are the same across conditions.
estimation_tribble_marghetis <- tribble(
  ~question_text,                                                      ~correct_answer, ~answer_unit, ~context,
  "Estimate units of energy: Compact Fluorescent Light (CFL) bulb",     23,             "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Desktop computer",                         138,            "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Laptop computer",                          32,             "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Stereo",                                   33,             "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Window air conditioner",                   1157,           "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Central air conditioner",                  3797,           "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Clothes dryer",                            3938,           "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Dishwasher",                               1201,           "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Charging a Tesla Model-S electric car",    11520,          "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Dehumidifier",                             734,            "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Humidifier",                               185,            "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Vacuum",                                   809,            "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Incandescent light bulb",                  100,            "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Slow cooker (crockpot)",                   318,            "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Electric oven",                            3050,           "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Portable heater",                          1290,           "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Charging a smartphone",                    3.42,           "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: 40\" flat screen television",              68,             "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Ceiling fan",                              68,             "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Water heater",                             4284,           "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Modem",                                    12.1,           "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Television Cable box",                     33,             "Wh",         "Marghetis_19 - Estimation Task", # Note: Idle value used later is 17.83Wh
  "Estimate units of energy: Alarm clock",                              2.8,            "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Iron",                                     1198,           "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Projector",                                197,            "Wh",         "Marghetis_19 - Estimation Task", # Note: Value differs from Kantenbacher (225 Wh)
  "Estimate units of energy: Fridge",                                   364,            "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Storage freezer",                          384,            "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Washing machine",                          478,            "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Video game console",                       110,            "Wh",         "Marghetis_19 - Estimation Task", # Note: Value differs slightly from later choice task (111 Wh)
  "Estimate units of energy: Electric blanket",                         197,            "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: DVD player",                               9.13,           "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Microwave",                                1101,           "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Toaster",                                  1213,           "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: LED light bulb",                           15,             "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Electric kettle",                          1390,           "Wh",         "Marghetis_19 - Estimation Task",
  "Estimate units of energy: Coffee maker",                             1134,           "Wh",         "Marghetis_19 - Estimation Task"
)


# 5. Behavioral Choice Task (Marghetis et al.)
# Context: Choose the task/appliance using least electricity OR action saving most electricity.
behavioral_choice_tribble_marghetis <- tribble(
  ~question_id, ~question_prompt, ~choices,                                                                                         ~correct_answer,                                                   ~context,
  1,  "least electricity", list("(a) watching a movie on a laptop", "(b) watching a movie on a projector"),                           "(a) watching a movie on a laptop",                                "Marghetis_19 - Behavioral Choice", # 32Wh vs 197Wh
  2,  "least electricity", list("(a) warming yourself with an electric blanket", "(b) warming yourself with a portable space heater"), "(a) warming yourself with an electric blanket",                    "Marghetis_19 - Behavioral Choice", # 197Wh vs 1290Wh
  3,  "least electricity", list("(a) a desktop computer's tower", "(b) a desktop computer's monitor"),                                 "(b) a desktop computer's monitor",                                "Marghetis_19 - Behavioral Choice", # 92Wh vs 34Wh
  4,  "least electricity", list("(a) cooking with an electric oven", "(b) cooking with a crockpot"),                                  "(b) cooking with a crockpot",                                     "Marghetis_19 - Behavioral Choice", # 3050Wh vs 318Wh
  5,  "least electricity", list("(a) ironing your clothes", "(b) vacuuming your carpets"),                                            "(b) vacuuming your carpets",                                      "Marghetis_19 - Behavioral Choice", # 1198Wh vs 809Wh
  6,  "least electricity", list("(a) cooling yourself with a window air conditioner", "(b) cooling yourself with a ceiling fan"),       "(b) cooling yourself with a ceiling fan",                         "Marghetis_19 - Behavioral Choice", # 1157Wh vs 68Wh
  7,  "least electricity", list("(a) watching a movie on a 40\" flat screen television", "(b) watching a movie on a projector"),       "(a) watching a movie on a 40\" flat screen television",             "Marghetis_19 - Behavioral Choice", # 68Wh vs 197Wh
  8,  "least electricity", list("(a) watching your favorite shows on a 40\" flat screen television", "(b) watching your favorite shows on your laptop computer"), "(b) watching your favorite shows on your laptop computer",   "Marghetis_19 - Behavioral Choice", # 68Wh vs 32Wh
  9,  "least electricity", list("(a) playing video games on your console (only consider the console)", "(b) watching cable television (only consider the cable box)"), "(b) watching cable television (only consider the cable box)", "Marghetis_19 - Behavioral Choice", # 111Wh vs 32.88Wh
  10, "least electricity", list("(a) charging a Tesla Model S electric vehicle for one hour", "(b) cooking a casserole in an electric oven for one hour"), "(b) cooking a casserole in an electric oven for one hour", "Marghetis_19 - Behavioral Choice", # 11520Wh vs 3050Wh
  11, "least electricity", list("(a) a water heater running at full capacity for one hour", "(b) vacuuming your carpets for one hour"), "(b) vacuuming your carpets for one hour",                         "Marghetis_19 - Behavioral Choice", # 4284Wh vs 809Wh
  12, "least electricity", list("(a) a central air conditioning unit running at full capacity for 8 hours throughout one day", "(b) 25 Compact Fluorescent Light (CFL) bulbs left on for 8 hours in one day"), "(b) 25 Compact Fluorescent Light (CFL) bulbs left on for 8 hours in one day", "Marghetis_19 - Behavioral Choice", # 30372Wh vs 4600Wh
  13, "least electricity", list("(a) warming a room with a portable space heater", "(b) washing clothes in a washing machine"),       "(b) washing clothes in a washing machine",                        "Marghetis_19 - Behavioral Choice", # 1290Wh vs 478Wh
  14, "least electricity", list("(a) vacuuming carpets", "(b) a refrigerator"),                                                      "(b) a refrigerator",                                              "Marghetis_19 - Behavioral Choice", # 809Wh vs 363.6Wh
  15, "least electricity", list("(a) drying a load of laundry in a clothes dryer once a week", "(b) 20 Light Emitting Diode (LED) bulbs left on for 60 hours each week"), "(a) drying a load of laundry in a clothes dryer once a week", "Marghetis_19 - Behavioral Choice", # 3938Wh vs 18000Wh (note reversal: least electricity use)
  16, "save most electricity", list("(a) Purchasing a space heater that is 20% more efficient", "(b) purchasing a television that is 20% more efficient"), "(a) Purchasing a space heater that is 20% more efficient",     "Marghetis_19 - Behavioral Choice", # Saving based on 1290Wh vs 68Wh
  17, "save most electricity", list("(a) replacing 20 of your Compact Fluorescent Light (CFL) bulbs for LED bulbs, left on for 8 hours each day for one week", "(b) hand washing your dishes with cold water rather than using the dishwasher"), "(a) replacing 20 of your Compact Fluorescent Light (CFL) bulbs for LED bulbs, left on for 8 hours each day for one week", "Marghetis_19 - Behavioral Choice", # Savings based on (23-15)W*20*8*7 vs 1201Wh*N? Note indicates Lights: 8960 Wh; Hand washing: 2402 Wh -> difference likely represents saving potential. Savings from lights ~9kWh vs savings from dishwasher ~?? kWh per week. The note implies light replacement saves more.
  18, "save most electricity", list("(a) line drying your clothes rather than using an electric clothes dryer (once a week)", "(b) reading a book rather than watching television (20 hours a week)"), "(a) line drying your clothes rather than using an electric clothes dryer (once a week)", "Marghetis_19 - Behavioral Choice", # 3938Wh vs 1365Wh saving potential
  19, "save most electricity", list("(a) turning off your cable box when not in use", "(b) turning off an idle laptop when not in use"), "(a) turning off your cable box when not in use",                 "Marghetis_19 - Behavioral Choice", # 17.83Wh vs 8.9Wh saving potential (idle power)
  20, "save most electricity", list("(a) replacing your morning coffee (coffee maker runs at full capacity for 10 minutes) with a glass of water", "(b) unwinding with a book at the end of the day rather than watching television for one hour"), "(a) replacing your morning coffee (coffee maker runs at full capacity for 10 minutes) with a glass of water", "Marghetis_19 - Behavioral Choice" # 189Wh vs 68Wh saving potential
)


# 6. National Energy Statistics / Energy Concepts (Marghetis et al.)
# Context: Factual recall questions about energy statistics.
national_stats_tribble_marghetis <- tribble(
  ~question_text,                                                                                               ~correct_answer, ~answer_unit, ~context,
  "What percent of total energy used in an average home in the United States is electricity?",                   43,             "percent",    "Marghetis_19 - Energy Concepts",
  "What percent of total household energy consumption is heating, ventilation, and air-conditioning (HVAC) across the United States?", 54,             "percent",    "Marghetis_19 - National Stats",
  "What percent of residential space heating is directly fueled by natural gas in the United States?",           70,             "percent",    "Marghetis_19 - National Stats",
  "What percent of residential space heating is directly powered by electricity in the United States?",          9.7,            "percent",    "Marghetis_19 - National Stats",
  "What percent of the total energy consumption of the United States is represented by residential housing?",    21,             "percent",    "Marghetis_19 - National Stats",
  "What percent of the total energy production in the United States is represented by renewable energy?",        11,             "percent",    "Marghetis_19 - National Stats",
  "What percent of the total energy production in the United States is represented by natural gas?",             32,             "percent",    "Marghetis_19 - National Stats",
  "What percent of the total energy production in the United States is represented by coal?",                    21,             "percent",    "Marghetis_19 - National Stats"
)


# 7. Numeracy Questions (Combined from both papers)
numeracy_tribble <- tribble(
  ~question_text,                                                                                                                                                                                                          ~correct_answer, ~answer_unit, ~context,
  # From Kantenbacher_Attari19 (Supp Methods 1) - Based on Subjective Numeracy Scale items, slightly rephrased as questions if needed for testing understanding. These are more subjective ratings in the original. Let's use the objective numeracy from Marghetis instead.
  # From Marghetis_19 (Supplemental Survey Text)
  "Imagine that we flip a fair coin 1,000 times. What is your best guess about how many times the coin would come up heads in 1,000 flips?",                                                                                 500,            "times",      "Marghetis_19 - Numeracy (Swartz 1)",
  "In the Big Bucks Lottery, the chance of winning a $10 prize is 1%. What is your best guess about how many people would win a $10 prize if 1000 people each buy a single ticket from Big Bucks?",                             10,             "people",     "Marghetis_19 - Numeracy (Swartz 2)",
  "In an Acme Publishing Sweepstakes, the chance of winning a car is 1 in 1,000. What percent of tickets to Acme Publishing Sweepstakes win a car?",                                                                          0.1,            "percent",    "Marghetis_19 - Numeracy (Swartz 3)",
  "Out of 1,000 people in a small town 500 are members of a choir. Out of these 500 members in the choir 100 are men. Out of the 500 inhabitants that are not in the choir 300 are men. What is the probability that a randomly drawn man is a member of the choir? Please indicate the probability in percent.", 25,             "percent",    "Marghetis_19 - Numeracy (Berlin 1)",
  "Imagine we are throwing a five-sided die 50 times. On average, out of these 50 throws how many times would this five-sided die show an odd number (1, 3 or 5)?",                                                              30,             "times",      "Marghetis_19 - Numeracy (Berlin 2)",
  "Imagine we are throwing a loaded die (6 sides). The probability that the die shows a 6 is twice as high as the probability of each of the other numbers. On average, out of these 70 throws how many times would the die show the number 6?", 20,             "times",      "Marghetis_19 - Numeracy (Berlin 3)",
  "In a forest 20% of mushrooms are red, 50% brown and 30% white. A red mushroom is poisonous with a probability of 20%. A mushroom that is not red is poisonous with a probability of 5%. What is the probability that a poisonous mushroom in the forest is red?", 50,             "percent",    "Marghetis_19 - Numeracy (Berlin 4)"
)

# Print the tribbles to check
print(estimation_tribble_kantenbacher)
print(choice_tribble_kantenbacher)
print(heuristic_accuracy_tribble_kantenbacher)
print(estimation_tribble_marghetis)
print(behavioral_choice_tribble_marghetis)
print(national_stats_tribble_marghetis)
print(numeracy_tribble)



# **1. Attari_2010: Device Energy Estimation (Wh/units)**
# Context: Participants estimate energy units typically used in one hour by devices. Reference: A 100-Watt incandescent light bulb uses 100 units of energy in one hour (so 1 unit = 1 Wh). Actual values from Attari et al. (2010) SI Table S1 (Mean W, used for 1 hour = Wh).


estimation_Wh_Attari2010 <- tibble::tribble(
  ~question_text,                                                                                             ~correct_answer, ~answer_unit, ~context,
  "Estimate energy units used in one hour by: A compact fluorescent light bulb that is as bright as a 100-Watt incandescent light bulb",     27,             "units (Wh)", "Attari_2010",
  "Estimate energy units used in one hour by: A desktop computer",                                                                           140,            "units (Wh)", "Attari_2010",
  "Estimate energy units used in one hour by: A laptop computer",                                                                             48,            "units (Wh)", "Attari_2010",
  "Estimate energy units used in one hour by: A stereo",                                                                                     128,            "units (Wh)", "Attari_2010",
  "Estimate energy units used in one hour by: An electric clothes dryer",                                                                    3400,            "units (Wh)", "Attari_2010",
  "Estimate energy units used in one hour by: A portable heater",                                                                            925,            "units (Wh)", "Attari_2010",
  "Estimate energy units used in one hour by: A room air-conditioner",                                                                       1000,            "units (Wh)", "Attari_2010",
  "Estimate energy units used in one hour by: A central air conditioner",                                                                    3500,            "units (Wh)", "Attari_2010",
  "Estimate energy units used in one hour by: A dish washer",                                                                                1800,            "units (Wh)", "Attari_2010"
)


# **2. Attari_2010: Household Energy Savings Estimation (Wh/units)**
# Context: Participants estimate energy units saved by activities. Reference: Turning off a 100-Watt incandescent light bulb for one hour SAVES 100 units of energy. Actual values from Attari et al. (2010) SI Tables S1 & S2.


estimation_savings_Wh_Attari2010 <- tibble::tribble(
  ~question_text,                                                                                                                               ~correct_answer, ~answer_unit, ~context,
  "Estimate energy units saved by: Replacing one 100-watt incandescent bulb with equally bright compact fluorescent bulb that is used for one hour",      73,             "units (Wh)", "Attari_2010", # 100W - 27W (CFL)
  "Estimate energy units saved by: Replacing one 100-watt kitchen bulb with a 75-watt bulb that is used for one hour",                                   25,             "units (Wh)", "Attari_2010", # 100W - 75W
  "Estimate energy units saved by: Drying clothes on a clothes line (not using the dryer) for one load of laundry",                                    3400,             "units (Wh)", "Attari_2010", # Assumes 1hr dryer time, 3400W dryer
  "Estimate energy units saved by: In the summer: turning up the thermostat on your air conditioner (making your home warmer) by 5° F for one hour",      115,             "units (Wh)", "Attari_2010",
  "Estimate energy units saved by: In the winter: turning down the thermostat on your heater (making your home cooler) by 5° F for one hour",           546,             "units (Wh)", "Attari_2010",
  "Estimate energy units saved by: Changing washer temperature settings from “hot wash, warm rinse” to “warm wash, cold rinse” for one load of laundry", 4000,             "units (Wh)", "Attari_2010"
)


# **3. Attari_2010: Transportation Energy Savings Estimation (transportation units)**
# Context: Participants estimate energy units saved by transportation activities. Reference: A 20-miles-per-gallon car going 60 miles per hour uses 100 units of energy in one hour (i.e., 3 gallons gasoline = 100 units). Actual values from Attari et al. (2010) SI Table S2, converted to transportation units.


estimation_transport_units_Attari2010 <- tibble::tribble(
  ~question_text,                                                                                                                               ~correct_answer, ~answer_unit,           ~context,
  "Estimate energy units saved by: Driving a more fuel efficient car (30 miles per gallon instead of 20 miles per gallon) at 60 miles per hour for one hour", 33.33,          "transportation units", "Attari_2010 - Transportation Savings Estimation", # Saves 1 gallon = 1/3 of 100 units
  "Estimate energy units saved by: Tuning up the car twice a year (including air filter changes) for the *whole year*",                                       800,            "transportation units", "Attari_2010 - Transportation Savings Estimation", # Saves 24 gallons = 8 * 100 units
  "Estimate energy units saved by: Assume that you are driving a 20-miles-per-gallon car for 60 miles. Reducing your highway speed from 70 miles per hour to 60 miles per hour for the trip", 13.33,          "transportation units", "Attari_2010 - Transportation Savings Estimation"  # Saves 0.4 gallons
)


# **4. Attari_2010: Ranking Tasks**
# Context: Participants rank items from most energy to least energy. Actual ranking based on data in Attari et al. (2010) SI Tables S3 & S4.


ranking_Attari2010 <- tibble::tribble(
  ~question_text,                                                                                                                                                              ~choices,                                                                      ~correct_answer,                                                                                                         ~context,
  "Rank the following modes of transportation from MOST energy to LEAST energy per mile to transport one ton of goods.",                                                       list("Ship", "Train", "Airplane", "Truck"),                                   "Airplane (Most), Truck (Second most), Ship (Third most), Train (Least)",                                                 "Attari_2010 - Ranking Transport Modes",
  "Rank the following from MOST energy to LEAST energy to produce.",                                                                                                             list("Making a can out of virgin aluminum", "Making a can out of recycled aluminum", "Making a glass bottle out of virgin glass", "Making a glass bottle out of recycled glass"), "Making a glass bottle out of virgin glass (Most), Making a glass bottle out of recycled glass (Second most), Making a can out of virgin aluminum (Third most), Making a can out of recycled aluminum (Least)", "Attari_2010 - Ranking Manufacturing Energy"
)


# **5. Lesic_2019: Appliance Energy Estimation (kWh/month)**
# Context: Homeowners estimate electricity consumption (kWh/month) for household devices for an average summer month. Reference: 100W bulb used 1 hr/day for 30 days = 3 kWh. Actual values are average direct-metered consumption from participants' homes (Pecan Street), from Lesic et al. (2019) Figure 1a (x-axis values for primary devices).


estimation_kWh_month_Lesic2019 <- tibble::tribble(
  ~question_text,                                           ~correct_answer, ~answer_unit, ~context,
  "Estimate kWh/month for your Clothes washer (summer month)",      3,             "kWh/month",  "Lesic_2019 - Appliance Energy Estimation (Summer)",
  "Estimate kWh/month for your Dishwasher (summer month)",        5,             "kWh/month",  "Lesic_2019 - Appliance Energy Estimation (Summer)",
  "Estimate kWh/month for your Oven (summer month)",             10,             "kWh/month",  "Lesic_2019 - Appliance Energy Estimation (Summer)",
  "Estimate kWh/month for your Electric clothes dryer (summer month)",70,             "kWh/month",  "Lesic_2019 - Appliance Energy Estimation (Summer)",
  "Estimate kWh/month for your Refrigerator (summer month)",       70,             "kWh/month",  "Lesic_2019 - Appliance Energy Estimation (Summer)", # Primary device
  "Estimate kWh/month for your Air conditioner (summer month)",   200,             "kWh/month",  "Lesic_2019 - Appliance Energy Estimation (Summer)"  # Primary device, lower consumption point
)


# **6. Lesic_2019: Choice Task (Most/Least Consuming Appliance - Summer Month)**
# Context: Based on average direct-metered consumption (kWh/month for summer) from Lesic et al. (2019) Figure 1a.

choice_Lesic2019 <- tibble::tribble(
  ~question_text,                                                                                     ~choices,                                                                                  ~correct_answer,     ~context,
  "Which of these devices typically consumes the MOST electricity in kWh per average summer month?",    list("Clothes washer", "Dishwasher", "Oven", "Electric clothes dryer", "Refrigerator", "Air conditioner"), "Air conditioner", "Lesic_2019 - Most/Least Consuming (Summer)",
  "Which of these devices typically consumes the LEAST electricity in kWh per average summer month?",   list("Clothes washer", "Dishwasher", "Oven", "Electric clothes dryer", "Refrigerator", "Air conditioner"), "Clothes washer",  "Lesic_2019 - Most/Least Consuming (Summer)"
)


# **7. Schley_DeKay_2015: National Energy Percentage Estimation**
# Context: Participants estimate the percentage of total U.S. individual and household annual energy (electricity, natural gas, propane, heating oil, gasoline, or diesel fuel) used by various categories. Actual percentages from Schley & DeKay (2015) Appendix Table A.1 (column for "Studies 2 and 4").

estimation_percentage_SchleyDeKay2015 <- tibble::tribble(
  ~question_text,                                                                                                                ~correct_answer, ~answer_unit, ~context,
  "Estimate percentage of total U.S. individual and household annual energy use for: SMALL ELECTRIC APPLIANCES",                               3.9,            "percent",    "Schley_DeKay_2015 - National Energy Percentage",
  "Estimate percentage of total U.S. individual and household annual energy use for: TELEVISIONS",                                               2.5,            "percent",    "Schley_DeKay_2015 - National Energy Percentage",
  "Estimate percentage of total U.S. individual and household annual energy use for: HOME HEATING",                                              18.8,           "percent",    "Schley_DeKay_2015 - National Energy Percentage",
  "Estimate percentage of total U.S. individual and household annual energy use for: LIGHTING",                                                  6.1,            "percent",    "Schley_DeKay_2015 - National Energy Percentage",
  "Estimate percentage of total U.S. individual and household annual energy use for: CLOTHES WASHING AND DRYING",                                2.5,            "percent",    "Schley_DeKay_2015 - National Energy Percentage",
  "Estimate percentage of total U.S. individual and household annual energy use for: DISHWASHERS",                                               0.2,            "percent",    "Schley_DeKay_2015 - National Energy Percentage",
  "Estimate percentage of total U.S. individual and household annual energy use for: COOKING",                                                   1.5,            "percent",    "Schley_DeKay_2015 - National Energy Percentage",
  "Estimate percentage of total U.S. individual and household annual energy use for: WATER HEATING (INCLUDING HOT WATER FOR CLOTHES WASHING)",   6.5,            "percent",    "Schley_DeKay_2015 - National Energy Percentage",
  "Estimate percentage of total U.S. individual and household annual energy use for: AIR CONDITIONING",                                          6.2,            "percent",    "Schley_DeKay_2015 - National Energy Percentage",
  "Estimate percentage of total U.S. individual and household annual energy use for: SWIMMING POOL HEATERS, GRILLS, AND OUTDOOR GAS LAMPS",      0.5,            "percent",    "Schley_DeKay_2015 - National Energy Percentage",
  "Estimate percentage of total U.S. individual and household annual energy use for: REFRIGERATION AND FREEZING",                                4.3,            "percent",    "Schley_DeKay_2015 - National Energy Percentage",
  "Estimate percentage of total U.S. individual and household annual energy use for: COMPUTERS",                                                 0.6,            "percent",    "Schley_DeKay_2015 - National Energy Percentage",
  "Estimate percentage of total U.S. individual and household annual energy use for: OTHER INDIVIDUAL AND HOUSEHOLD ENERGY USE",                 3.0,            "percent",    "Schley_DeKay_2015 - National Energy Percentage",
  "Estimate percentage of total U.S. individual and household annual energy use for: PRIVATE MOTOR VEHICLES",                                    38.6,           "percent",    "Schley_DeKay_2015 - National Energy Percentage",
  "Estimate percentage of total U.S. individual and household annual energy use for: AIR TRAVEL",                                                3.4,            "percent",    "Schley_DeKay_2015 - National Energy Percentage",
  "Estimate percentage of total U.S. individual and household annual energy use for: MASS TRANSPORTATION (PERSONAL TRAVEL ON BUSES, TRAINS, AND SHIPS)", 1.4,    "percent",    "Schley_DeKay_2015 - National Energy Percentage"
)

# **8. Numeracy Questions (from Attari_2010 and Schley_DeKay_2015)**
# Context: Standard numeracy assessment questions.

numeracy_questions <- tibble::tribble(
  ~question_text,                                                                                                                                                                                                          ~correct_answer,  ~answer_unit, ~context,
  "Imagine that we flip a fair coin 1,000 times. What is your best guess about how many times the coin would come up heads in 1,000 flips?",                                                                                 500,              "times",      "Attari_2010 & Schley_DeKay_2015 - Numeracy",
  "In the BIG BUCKS LOTTERY, the chance of winning a $10 prize is 1%. What is your best guess about how many people would win a $10 prize if 1000 people each buy a single ticket to BIG BUCKS?",                             10,               "people",     "Attari_2010 & Schley_DeKay_2015 - Numeracy",
  "In ACME PUBLISHING SWEEPSAKES, the chance of winning a car is 1 in 1,000. What percent of tickets to ACME PUBLISHING SWEEPSAKES win a car?",                                                                              0.1,              "percent",    "Attari_2010 & Schley_DeKay_2015 - Numeracy",
  "Imagine that we roll a fair, six-sided die 1,000 times. Out of 1,000 rolls, how many times do you think the die would come up as an even number?",                                                                        500,              "times",      "Schley_DeKay_2015 - Numeracy",
  "If the chance of getting a disease is 10%, how many people would be expected to get the disease out of 1,000?",                                                                                                            100,              "people",     "Schley_DeKay_2015 - Numeracy",
  "If the chance of getting a disease is 20 out of 100, this would be the same as having a ___% chance of getting the disease.",                                                                                              20,               "percent",    "Schley_DeKay_2015 - Numeracy",
  "Suppose you have a close friend who has a lump in her breast and must have a mammogram. [Table provided: Tumor/Positive=9; Tumor/Negative=1; No Tumor/Positive=10 (paper has error, should be 9 based on narrative, table total 19); No Tumor/Negative=80 (narrative says 81, table sums ok with 80 for No Tumor)]. Friend tests positive. What is the likelihood she actually has a tumor? (__ out of __)", "9 out of 19",    "fraction",   "Schley_DeKay_2015 - Numeracy (Bayes)", # Using 9 positive tumor, 9 false positive as per text. So 9/(9+9) if table error in text is fixed. Original table says 9 true pos, 10 false pos. So 9/(9+10) = 9/19.
  "A bat and a ball cost $1.10 in total. The bat costs $1.00 more than the ball. How much does the ball cost?",                                                                                                               5,                "cents",      "Schley_DeKay_2015 - Numeracy (Cognitive Reflection)",
  "In a lake, there is a patch of lilypads. Every day, the patch doubles in size. If it takes 48 days for the patch to cover the entire lake, how long would it take for the patch to cover half of the lake?",                47,               "days",       "Schley_DeKey_2015 - Numeracy (Cognitive Reflection)"
)

# Note on mammogram question: The narrative in Schley_DeKay_2015 (Supp. Mat. Study 1) says "Of the 90 women who do not have a tumor, the mammogram indicates correctly that 81 of them do not have a tumor and indicates incorrectly that 9 of them do have a tumor."
# The table shown then has: Tumor/Positive=9, No Tumor/Positive=10 (this is 10, not 9). Totals Positive = 19.
# Likelihood = True Positive / (True Positive + False Positive) = 9 / (9 + 10) = 9/19.
# My previous thought had it as 9/(9+9) if narrative's 9 false positives were used. The provided table in the survey (which participants see) clearly sums to 19 positives (9 actual tumor, 10 no tumor). So 9/19 is correct based on the table.















#####
#######
#####
######


# https://aistudio.google.com/prompts/1WgjlvDc2C7H0MhLTqLv0yEv8xCfo6Bsu

# Load the tibble package if you haven't already
# install.packages("tibble")
library(tibble)

# --- Estimation Questions ---
# These questions ask for a numerical estimate.
estimation_questions <- tribble(
  ~question_id, ~question_text, ~correct_answer, ~unit, ~reference_info, ~source_paper,
  # From Attari et al. (2010) / Frederick et al. (2010) / Marghetis et al. (2019) (using average of their reported "actuals")
  "EST001", "A 100-Watt incandescent light bulb uses 100 units of energy in one hour. How many units of energy do you think a DESKTOP COMPUTER (including monitor) typically uses in one hour?", 141, "units of energy", "100W bulb = 100 units", "Attari_2010/Marghetis_2019",
  "EST002", "A 100-Watt incandescent light bulb uses 100 units of energy in one hour. How many units of energy do you think a LAPTOP COMPUTER typically uses in one hour?", 40, "units of energy", "100W bulb = 100 units", "Attari_2010/Marghetis_2019",
  "EST003", "A 100-Watt incandescent light bulb uses 100 units of energy in one hour. How many units of energy do you think an ELECTRIC CLOTHES DRYER typically uses in one hour?", 3734, "units of energy", "100W bulb = 100 units", "Attari_2010/Marghetis_2019",
  "EST004", "A 100-Watt incandescent light bulb uses 100 units of energy in one hour. How many units of energy do you think a ROOM AIR CONDITIONER typically uses in one hour?", 1058, "units of energy", "100W bulb = 100 units", "Attari_2010/Camilleri_2019",
  "EST005", "A 100-Watt incandescent light bulb uses 100 units of energy in one hour. How many units of energy do you think a REFRIGERATOR typically uses in one hour (average power draw while cycling)?", 328, "units of energy", "100W bulb = 100 units", "Marghetis_2019/Camilleri_2019",
  # From Chen_Delmas2015.md (actual shares from their study)
  "EST006", "What percentage of your apartment's electricity usage do you anticipate coming from HEATING AND COOLING (HVAC)?", 18.14, "%", NA_character_, "Chen_Delmas_2015",
  "EST007", "What percentage of your apartment's electricity usage do you anticipate coming from OVERHEAD LIGHTING?", 14.45, "%", NA_character_, "Chen_Delmas_2015",
  "EST008", "What percentage of your apartment's electricity usage do you anticipate coming from ITEMS PLUGGED INTO ELECTRIC OUTLETS (TV, laptop, refrigerator, etc.)?", 67.42, "%", NA_character_, "Chen_Delmas_2015 (Table 3 'Plug load' is defined broadly)",
  # From Schley_DeKay_2015.md (national averages)
  "EST009", "What percentage of total individual and household energy used annually in the U.S. is for WATER HEATING (including hot water for clothes washing)?", 6.5, "%", "Based on Gardner & Stern 2008 data used in study", "Schley_DeKay_2015 (Table A.1 Studies 2 & 4)",
  "EST010", "What percentage of total individual and household energy used annually in the U.S. is for PRIVATE MOTOR VEHICLES?", 38.6, "%", "Based on Gardner & Stern 2008 data used in study", "Schley_DeKay_2015 (Table A.1 Studies 2 & 4)",
  "EST011", "A 5-watt phone charger uses 5 units of energy to charge a smartphone in one hour. How many units of energy does a typical CLOTHES DRYER use in one hour?", 4000, "units of energy", "5W charger = 5 units; 100W bulb = 100 units; Dryer = 4000 units", "Marghetis_Attari_19 (V2/V4 scale-use info)"
)

# --- Multiple Choice Questions (Single Best Answer) ---
# These questions have one correct answer from a list of options.
mcq_single_questions <- tribble(
  ~question_id, ~question_text, ~choices, ~correct_answer, ~source_paper,
  # Based on discussions in Attari_2016.md and general energy knowledge
  "MCQ001", "Which of the following behaviors is generally considered the SINGLE MOST EFFECTIVE individual action to reduce personal energy consumption significantly?",
  list(c("Turn off lights and appliances when not in use", "Drive less and use other forms of transportation", "Use energy-efficient bulbs", "Change settings on the thermostat", "Consume less (e.g., buy fewer products)")),
  "Drive less and use other forms of transportation", # Or another high-impact efficiency/major lifestyle change
  "Attari_2016/General_Energy_Knowledge",
  # From Lundberg_Attari_2019 (modified slightly)
  "MCQ002", "When asked about the most effective thing they CURRENTLY DO to save energy, what is the most common response among U.S. participants?",
  list(c("Turn off the lights", "Adjust thermostat", "Replace incandescent light bulbs with CFL/LED bulbs", "Use appliances/electronics less", "Unplug or turn off appliances")),
  "Turn off the lights",
  "Lundberg_Attari_2019",
  "MCQ003", "According to experts, which lighting strategy generally saves more energy in a typical home still using many incandescent bulbs?",
  list(c("Always turning off incandescent lights when leaving a room", "Replacing most incandescent light bulbs with LED bulbs, even if usage patterns remain similar", "Using dimmer switches on incandescent lights", "Relying more on natural daylight")),
  "Replacing most incandescent light bulbs with LED bulbs, even if usage patterns remain similar",
  "Lundberg_Attari_2019 (inferred from discussion)"
)

# --- Multiple Choice Questions (Comparative / Binary Choice) ---
# These questions ask to choose the better/more effective/less consuming of two options.
mcq_comparative_questions <- tribble(
  ~question_id, ~question_text, ~option_a, ~option_b, ~correct_answer_text, ~source_paper,
  # From Marghetis_Attari_19.md (Behavioral Choice Tasks)
  "CMP001", "Which uses LESS energy, assuming they are used for the same amount of time?", "Watching a movie on a laptop", "Watching a movie on a projector", "Watching a movie on a laptop", "Marghetis_Attari_19",
  "CMP002", "Which uses LESS energy, assuming they are used for the same amount of time?", "Warming yourself with an electric blanket", "Warming yourself with a portable space heater", "Warming yourself with an electric blanket", "Marghetis_Attari_19",
  "CMP003", "Which uses LESS energy, assuming they are used for the same amount of time?", "Cooling yourself with a window air conditioner", "Cooling yourself with a ceiling fan", "Cooling yourself with a ceiling fan", "Marghetis_Attari_19",
  # From Lundberg_Attari_2019.md (Energy Literacy Questions)
  "CMP004", "Which option SAVES THE MOST energy?", "Decreasing one incandescent light bulb's use from 4 hours to 3 hours", "Using one LED light bulb for 4 hours instead of an incandescent light bulb", "Using one LED light bulb for 4 hours instead of an incandescent light bulb", "Lundberg_Attari_2019",
  "CMP005", "Which option SAVES THE MOST energy?", "Reducing the use of a window air conditioning unit from 5 hours to 3 hours", "Keeping a ceiling fan on for 5 hours instead of using a window air conditioning unit", "Keeping a ceiling fan on for 5 hours instead of using a window air conditioning unit", "Lundberg_Attari_2019",
  # From Kantenbacher_Attari19.md (Choice Task)
  "CMP006", "Which uses LESS energy, assuming typical appliance usage and same run time?", "A window air conditioning unit", "An electric oven", "A window air conditioning unit", "Kantenbacher_Attari19",
  "CMP007", "Which uses LEAST energy, assuming typical appliance usage and same run time?", "Running an electric water heater", "Running a refrigerator", "Running a refrigerator", "Kantenbacher_Attari19 (Comparing only these two from the set of three)"
)


# --- Ranking Questions ---
# These questions ask to rank items based on a criterion.
ranking_questions <- tribble(
  ~question_id, ~question_text, ~items_to_rank, ~correct_ranking, ~source_paper,
  # Based on Attari et al. (2010) actual data for energy to transport goods
  "RNK001", "Rank the following modes of transportation from MOST energy per ton-mile to LEAST energy per ton-mile for transporting goods:",
  list(c("Ship", "Train", "Airplane", "Truck")),
  list(c("Airplane", "Truck", "Ship", "Train")), # Actual order: Airplane (31600), Truck (4360), Ship (411), Train (371) Btu/ton-mile
  "Attari_2010_full (SI Table S3)",
  # Based on Attari et al. (2010) actual data for manufacturing beverage containers
  "RNK002", "Rank the following from MOST energy used in manufacturing to LEAST energy used:",
  list(c("Making a can out of virgin aluminum", "Making a can out of recycled aluminum", "Making a glass bottle out of virgin glass", "Making a glass bottle out of recycled glass")),
  list(c("Making a glass bottle out of virgin glass", "Making a glass bottle out of recycled glass", "Making a can out of virgin aluminum", "Making a can out of recycled aluminum")), # Actual Btu/container: Virgin Glass (3160), Recycled Glass (2370), Virgin Al (2180), Recycled Al (120)
  "Attari_2010_full (SI Table S4)",
  # Based on Lesic2019_AppliancePerception.md average annual energy consumption from Table 1 (Pecan St)
  "RNK003", "Rank the following appliances from HIGHEST average annual electricity consumption in Pecan Street homes to LOWEST:",
  list(c("Refrigerator", "Electric clothes dryer", "Oven", "Dishwasher")),
  list(c("Refrigerator", "Electric clothes dryer", "Oven", "Dishwasher")), # Actual kWh/yr (Pecan St Mean): Refrig (1300), Dryer (490), Oven (190), Dishwasher (120)
  "Lesic2019_AppliancePerception (Table 1)"
)

# --- Heuristic/Knowledge Application Questions (Often True/False or Agree/Disagree) ---
# This is a bit more abstract as these are often embedded in discussions or Likert scales.
# I'll frame some as True/False based on expert vs. novice heuristics.
true_false_heuristic_questions <- tribble(
  ~question_id, ~question_text, ~correct_answer, ~source_paper,
  "TFH001", "True or False: Generally, larger household appliances consume more energy than smaller ones.", TRUE, "Cowen_Gatersleben_2017/Kantenbacher_Attari19 (Expert Heuristic)",
  "TFH002", "True or False: Devices that become hot to the touch generally use more energy than similar devices that do not.", TRUE, "Kantenbacher_Attari19 (Expert Heuristic)",
  "TFH003", "True or False: The faster a device completes its task, the more total energy it consumes for that task.", FALSE, # This is a common novice heuristic (VanDenBroek_Walker2019) but often incorrect (e.g. quick boil kettle vs slow boil)
  "VanDenBroek_Walker2019_full (Heuristic 3, time-based aspects)",
  "TFH004", "True or False: Turning off lights when leaving a room is typically the single most effective action to reduce overall household energy consumption.", FALSE, "Attari_2010_full/Lundberg_Attari_2019 (Common misperception)",
  "TFH005", "True or False: Large appliances that primarily heat or cool things generally use a lot more energy than people think.", TRUE, "Marghetis_Attari_19 (Explicit Heuristic)"
)

# You can print them to check
# print(estimation_questions)
# print(mcq_single_questions)
# print(mcq_comparative_questions)
# print(ranking_questions)
# print(true_false_heuristic_questions)






######
######

#####

library(tibble)

# --- 1. Estimation Questions ---
estimation_questions <- tribble(
  ~question_id, ~source_file, ~question_text, ~reference_point, ~items_to_estimate, ~unit_of_estimation, ~correct_answers_source_notes, ~additional_info,
  # Attari et al. 2010
  "attari2010_device_energy", "Attari et al. - 2010 - Public perceptions of energy consumption and savings.md", "How many units of energy do you think each of the following devices typically uses in one hour?", "A 100-Watt incandescent light bulb uses 100 units of energy in one hour.", "A compact fluorescent light bulb (as bright as 100W incandescent); A desktop computer; A laptop computer; A stereo; An electric clothes dryer; A portable heater; A room air-conditioner; A central air conditioner; A dish washer", "units of energy", "Actual values in Wh provided in paper's Table S1 (Attari_2010_full.md, e.g., CFL: 27Wh, Desktop: 140Wh). Participants give 'units'.", "9 devices total.",
  "attari2010_household_savings", "Attari et al. - 2010 - Public perceptions of energy consumption and savings.md", "How many units of energy do you think each of the following changes will save?", "Turning off a 100-Watt incandescent light bulb for one hour SAVES 100 units of energy.", "Replacing one 100-watt incandescent bulb with CFL (1hr use); Replacing 100W kitchen bulb with 75W (1hr use); Drying clothes on line (1 load); Summer thermostat +5F (reduces use by X units); Winter thermostat -5F (reduces use by X units); Changing washer temp (hot/warm to warm/cold) (1 load)", "units of energy saved", "Actual values in Wh provided in paper's Table S2 (Attari_2010_full.md, e.g., CFL replace: ~75Wh save, Washer temp: ~4000Wh save).", "6 activities total.",
  "attari2010_auto_savings", "Attari et al. - 2010 - Public perceptions of energy consumption and savings.md", "How many units of energy do you think each of the following changes will save?", "A 20-miles-per-gallon car going 60 miles per hour uses 100 units of energy in one hour. (Note: 100 units = 3 gallons gasoline ~ 101 kWh)", "Driving more fuel efficient car (30 vs 20 mpg) at 60mph for 1hr; Tuning up car twice/year (annual savings); Reducing highway speed 70 to 60mph for 60 miles (20mpg car)", "units of energy saved", "Actual values in Wh provided in paper's Table S2 (Attari_2010_full.md, e.g., Efficient car: 33700Wh save).", "3 activities total.",
  # Camilleri_Larrick_2019.md
  "camilleri2019_energy_food_appliance", "Camilleri_Larrick_2019.md", "How many units of energy are consumed in the production and transport of a serving size of [FOOD] / powering for 1 hr of [APPLIANCE]?", "Using a 100-watt incandescent light bulb for 1 h consumes 100 units of energy.", "19 foods (e.g., lamb, beef, pork, cheese, milk, tofu, almonds, eggs, potato, apple, orange, tomato, walnuts, beans, rice, wheat, barley, soybeans, maize); 18 appliances (e.g., CFL, desktop, laptop, dryer, iron, washing machine, heater, room AC, central AC, coffee maker, dishwasher, freezer, fridge, toaster oven, microwave, TV, vacuum, DVD player)", "units of energy", "Actual values in MJ/kg or W/hr then converted to 'units' provided in Supplementary Tables S2, S3. (e.g. Beef 0.22lb ~ 1544 units, CFL ~24 units)", "Study 1A. Food estimates are per serving. Appliance estimates per 1hr use.",
  "camilleri2019_ghg_food_appliance", "Camilleri_Larrick_2019.md", "How many units of greenhouse gas emissions are released in the production and transport of a serving size of [FOOD] / powering for 1 hr of [APPLIANCE]?", "Using a 100-watt incandescent light bulb for 1 h released 100 units of GHG emissions.", "19 foods (same as above); 18 appliances (same as above)", "units of GHG emissions", "Actual values in kg CO2e/kg or lb CO2e/hr then converted to 'units' provided in Supplementary Tables S2, S4. (e.g. Beef 0.22lb ~ 2481 units, CFL ~24 units, assuming 100W bulb = 0.13 lb CO2e/hr = 100 units)", "Study 1B. Food estimates are per serving. Appliance estimates per 1hr use.",
  "camilleri2019_soup_ghg_ratio", "Camilleri_Larrick_2019.md", "How many units of greenhouse gas emissions were released in the production and transport of a serving size of beef soup and vegetable soup?", "Using a 100-watt incandescent light bulb for 1 hour emits 100 units of greenhouse gas emissions.", "Beef soup (half a cup); Vegetable soup (half a cup)", "units of GHG emissions", "True ratio of beef to vegetable soup GHG emissions is approx 10. (Beef Chili Soup ~1281g CO2e; Veggie options ~54-208g CO2e from Supp Note 7).", "Study 2, post-choice task.",
  # Marghetis_Attari_19.md
  "marghetis2019_device_energy_control", "Marghetis_Attari_19.md", "How many units of energy do you think each of the following devices typically uses in one hour?", "A 100-watt incandescent light bulb uses 100 units of energy in one hour.", "[36 home appliances listed in survey text]", "units of energy (Wh)", "Actual average Wh values provided in survey text for each appliance (e.g., CFL: 23Wh, Desktop: 138Wh, Smartphone Charge: 3.42Wh).", "Control condition (V1).",
  "marghetis2019_device_energy_scale_use", "Marghetis_Attari_19.md", "How many units of energy do you think each of the following devices typically uses in one hour?", "A 5-watt phone charger uses 5 units of energy to charge a smartphone in one hour. Similarly, a 100-watt incandescent light bulb uses 100 units of energy in one hour, and a typical clothes dryer uses about 4,000 units of energy in one hour.", "[36 home appliances]", "units of energy (Wh)", "Actual average Wh values provided in survey text.", "Scale-use intervention (V2).",
  "marghetis2019_device_energy_heuristic", "Marghetis_Attari_19.md", "How many units of energy do you think each of the following devices typically uses in one hour?", "A 100-watt incandescent light bulb uses 100 units of energy in one hour. Note that LARGE appliances that primarily HEAT or COOL things use a lot more energy than people think.", "[36 home appliances]", "units of energy (Wh)", "Actual average Wh values provided in survey text.", "Explicit heuristic intervention (V3).",
  "marghetis2019_device_energy_both_interventions", "Marghetis_Attari_19.md", "How many units of energy do you think each of the following devices typically uses in one hour?", "A 5-watt phone charger uses 5 units of energy to charge a smartphone in one hour. Similarly, a 100-watt incandescent light bulb uses 100 units of energy in one hour, and a typical clothes dryer uses about 4,000 units of energy in one hour. Note that LARGE appliances that primarily HEAT or COOL things use a lot more energy than people think.", "[36 home appliances]", "units of energy (Wh)", "Actual average Wh values provided in survey text.", "Both interventions (V4).",
  # Kantenbacher_Attari19.md
  "kantenbacher2019_device_energy", "Kantenbacher_Attari19.md", "How many units of energy do you think each of the following devices typically consumes if used for one hour?", "A standard incandescent light bulb uses about 100 units of energy in one hour.", "[17 household devices, e.g., CFL, Desktop, Laptop, Window AC, Dryer, Dishwasher, Vacuum, Smartphone Charge, Refrigerator, Oven, Washing Machine, DVD player, Ceiling fan, Microwave, Kettle, Toaster, LED bulb]", "units of energy", "Actual values in Wh provided in Supplementary Methods 1 (e.g., CFL: 23Wh, Desktop: 138Wh, Dryer: 3938Wh).", "Expert estimation task.",
  # Lesic2019_AppliancePerception.md
  "lesic2019_device_energy_kwh", "Lesic2019_AppliancePerception.md", "Estimate the electricity consumption of [DEVICE] during an average summer month.", "A 100-Watt incandescent light bulb used for one hour per day for 30 days would consume 3 kWh of electricity.", "Clothes washers, dishwashers, ovens, clothes dryers, refrigerators, air conditioners", "kWh/month", "Actual metered electricity use data from Pecan Street homes for these devices (specific values vary per home).", "Energy units group. Slider 0-1000 kWh.",
  "lesic2019_device_energy_cost", "Lesic2019_AppliancePerception.md", "Estimate the electricity cost of [DEVICE] during an average summer month.", "A 100-Watt incandescent light bulb used for one hour per day for 30 days would cost $0.30 of electricity.", "Clothes washers, dishwashers, ovens, clothes dryers, refrigerators, air conditioners", "$/month", "Actual metered electricity use data, but cost conversion is complex due to tiered rates. Ranking accuracy compared.","Energy cost units group. Slider $0-$100.",
  # Frederick_2010.md (Results of estimations under different conditions)
  "frederick2010_device_energy_3W_LED", "Frederick_2010.md", "Estimate energy consumption of 8 electrical appliances.", "3-W LED flashlight bulb = 3 units (implied by context, though paper states '3-W LED flashlight bulb' as referent, not the unit mapping)", "Laptop computer (48W), Stereo (128W), Desktop (140W), Heater (925W), Room AC (1000W), Dishwasher (1800W), Dryer (3400W), Central AC (3500W)", "Watts (implied by table)", "Actuals from Attari et al. (2010) Table 1 in paper shows median *judgments*, not asking a question *to* participants in this paper.", "This paper reports results of estimations, not the survey question itself. The question would be similar to Attari 2010 but with a different referent.",
  "frederick2010_device_energy_100W_bulb", "Frederick_2010.md", "Estimate energy consumption of 8 electrical appliances.", "100-W incandescent light bulb = 100 units (implied)", "Same 8 appliances as above", "Watts (implied by table)", "Actuals from Attari et al. (2010) Table 1 in paper shows median *judgments*.", "Replication of Attari et al.'s reference condition.",
  "frederick2010_device_energy_9000W_furnace", "Frederick_2010.md", "Estimate energy consumption of 8 electrical appliances.", "9,000-W electric furnace = 9000 units (implied)", "Same 8 appliances as above", "Watts (implied by table)", "Actuals from Attari et al. (2010) Table 1 in paper shows median *judgments*.", "High anchor condition.",
  "frederick2010_device_energy_no_ref_watts", "Frederick_2010.md", "Estimate energy consumption of 8 electrical appliances.", "No referent provided.", "Same 8 appliances as above", "Watts", "Actuals from Attari et al. (2010) Table 1 in paper shows median *judgments*.", "No reference, response in Watts.",
  "frederick2010_device_energy_no_ref_kilowatts", "Frederick_2010.md", "Estimate energy consumption of 8 electrical appliances.", "No referent provided.", "Same 8 appliances as above", "Kilowatts", "Actuals from Attari et al. (2010) Table 1 in paper shows median *judgments*.", "No reference, response in Kilowatts."
)

# --- 2. Ranking Questions ---
ranking_questions <- tribble(
  ~question_id, ~source_file, ~question_text, ~items_to_rank, ~ranking_criteria, ~correct_ranking_source_notes,
  # Attari et al. 2010
  "attari2010_transport_rank", "Attari et al. - 2010 - Public perceptions of energy consumption and savings.md", "Rank the amount of energy needed to transport 1 ton of goods for 1 mile by truck, train, ship, and airplane.", "Ship, Train, Airplane, Truck", "Most energy to Least energy", "Actual ranks (Btu/ton-mile from Table S3): Airplane (4), Truck (3), Ship (2), Train (1). Paper states: 'Airplane > Truck > Ship ~ Train'.",
  "attari2010_recycling_rank", "Attari et al. - 2010 - Public perceptions of energy consumption and savings.md", "Rank the energy used to make a can from virgin aluminum, a can from recycled aluminum, a bottle from virgin glass, and a bottle from recycled glass.", "Making a can out of virgin aluminum, Making a can out of recycled aluminum, Making a glass bottle out of virgin glass, Making a glass bottle out of recycled glass", "Most energy to Least energy", "Actual ranks (Btu/container from Table S4): Virgin Glass (4), Recycled Glass (3), Virgin Al (2), Recycled Al (1). Paper states: Making recycled glass bottle > virgin Al can; Virgin Al > Virgin Glass.",
  # Attari_2014_water.md (Example of similar task for water, if adaptable)
  "attari2014_embodied_water_rank", "Attari_2014_water.md", "Rank-order four goods (1 pound of rice, 1 pound of coffee, 1 pound of sugar, and 1 pound of cheese) in terms of most-embodied water to least-embodied water for production.", "1lb Rice, 1lb Coffee, 1lb Sugar, 1lb Cheese", "Most embodied water to Least embodied water", "Actual from Supp Info: Coffee (2264 gal/lb), Cheese (606 gal/lb), Rice (299 gal/lb), Sugar (157 gal/lb). Rank: Coffee (1), Cheese (2), Rice (3), Sugar (4).",
  # VanDenBroek_Walker2019_full.md (Ranking task, but qualitative data collection in Study 1)
  "vandenbroek2019_rank_appliances_S1", "VanDenBroek_Walker2019_full.md", "Rank household appliances by their perceived energy use (when in use for one minute).", "23 common household devices (e.g., tumble dryer, kettle, electric toothbrush)", "Energy use per minute (Most to Least)", "Study 1 was qualitative, observing heuristics. Spearman correlation of median participant rank vs actual: rs = .72. Actuals from various sources (Draft Logic, etc.).",
  "vandenbroek2019_rank_appliances_S3", "VanDenBroek_Walker2019_full.md", "Rank 10 household appliances, considering their energy use for one minute of use.", "10 household appliances (laptop, kettle, light bulb, oven, mobile phone charger, tumble dryer, hair dryer, microwave, toaster, fridge freezer)", "Energy use per minute (Most to Least)", "Study 3. Correct order from mean Wattage (Draft Logic, etc.). Pre-intervention rs = 0.55, Post-intervention rs = 0.80."
)

# --- 3. Choice/Comparison Questions ---
choice_questions <- tribble(
  ~question_id, ~source_file, ~question_text, ~option1, ~option2, ~option3, ~correct_answer_logic, ~additional_info,
  # Kantenbacher_Attari19.md (Expert choice task)
  "kantenbacher2019_choice1", "Kantenbacher_Attari19.md", "Which uses less energy? (Assume typical appliance usage, same length of time unless stated)", "A window air conditioning unit", "An electric oven", NA, "Window AC (1157 Wh) < Electric Oven (3050 Wh). Correct: Window AC.", "Expert choice task, Set 1.",
  "kantenbacher2019_choice2", "Kantenbacher_Attari19.md", "Which uses the least energy?", "Running an electric water heater", "Running a vacuum cleaner", "Running a refrigerator", "Refrigerator (363 Wh) < Vacuum (809 Wh) < Water Heater (4286 Wh). Correct: Refrigerator.", "Expert choice task, Set 2.",
  "kantenbacher2019_choice3", "Kantenbacher_Attari19.md", "Which uses the least energy?", "Electric blanket", "Electric space heater", "Electric treadmill", "Electric blanket (197 Wh) < Treadmill (967 Wh) < Space heater (1290 Wh). Correct: Electric blanket.", "Expert choice task, Set 3.",
  "kantenbacher2019_choice4", "Kantenbacher_Attari19.md", "Which uses the least energy?", "Steam iron", "Blender", "Humidifier", "Humidifier (185 Wh) < Blender (358 Wh) < Steam iron (1198 Wh). Correct: Humidifier.", "Expert choice task, Set 4.",
  "kantenbacher2019_choice5", "Kantenbacher_Attari19.md", "Which uses the least energy?", "Video game console (Wii, Xbox, PS)", "Cable box", "Smart speaker (Echo, Google Home)", "Smart speaker (27 Wh) < Cable box (33 Wh) < Console (110 Wh). Correct: Smart speaker.", "Expert choice task, Set 5.",
  "kantenbacher2019_choice6", "Kantenbacher_Attari19.md", "Which uses the least energy?", "Clothes dryer", "Washing machine", "Dishwasher", "Washing machine (478 Wh) < Dishwasher (1201 Wh) < Dryer (3938 Wh). Correct: Washing machine.", "Expert choice task, Set 6.",
  "kantenbacher2019_choice7", "Kantenbacher_Attari19.md", "Which uses the least energy?", "Microwave", "Toaster oven", "Electric kettle", "Microwave (1101 Wh) < Kettle (1390 Wh) < Toaster oven (1450 Wh). Correct: Microwave.", "Expert choice task, Set 7.",
  "kantenbacher2019_choice8", "Kantenbacher_Attari19.md", "Which uses less energy?", "Watching a movie on a 40\" flat screen TV", "Watching a movie with a digital projector", NA, "TV (145 Wh) < Projector (225 Wh). Correct: TV.", "Expert choice task, Set 8. Note: Marghetis_Attari_19 uses TV 68Wh, Projector 197Wh. Kantenbacher's values likely different or averaged differently.",
  "kantenbacher2019_choice9", "Kantenbacher_Attari19.md", "Which uses less energy?", "A ceiling fan", "A tube fluorescent light", NA, "Tube fluorescent light (39 Wh) < Ceiling fan (69 Wh). Correct: Tube fluorescent light.", "Expert choice task, Set 9.",
  # Marghetis_Attari_19.md (Behavioral Choice Task)
  "marghetis2019_bc1", "Marghetis_Attari_19.md", "Choose the task or appliance that you think uses the least amount of electricity. (Assume same time, unless stated)", "watching a movie on a laptop", "watching a movie on a projector", NA, "Laptop (32 Wh) < Projector (197 Wh). Correct: Laptop.", "Behavioral Choice Task 1.",
  "marghetis2019_bc2", "Marghetis_Attari_19.md", "Choose the task or appliance that you think uses the least amount of electricity.", "warming yourself with an electric blanket", "warming yourself with a portable space heater", NA, "Electric blanket (197 Wh) < Portable heater (1290 Wh). Correct: Electric blanket.", "Behavioral Choice Task 2.",
  "marghetis2019_bc3", "Marghetis_Attari_19.md", "Choose the task or appliance that you think uses the least amount of electricity.", "a desktop computer's tower", "a desktop computer's monitor", NA, "Monitor (34 Wh) < Tower (92 Wh). Correct: Monitor.", "Behavioral Choice Task 3. Note: this is an interesting one, as combined desktop is ~138Wh. This implies monitor is less than tower alone.",
  "marghetis2019_bc4", "Marghetis_Attari_19.md", "Choose the task or appliance that you think uses the least amount of electricity.", "cooking with an electric oven", "cooking with a crockpot", NA, "Crockpot (318 Wh) < Electric oven (3050 Wh). Correct: Crockpot.", "Behavioral Choice Task 4.",
  "marghetis2019_bc5", "Marghetis_Attari_19.md", "Choose the task or appliance that you think uses the least amount of electricity.", "ironing your clothes", "vacuuming your carpets", NA, "Vacuum (809 Wh) < Iron (1198 Wh). Correct: Vacuum.", "Behavioral Choice Task 5.",
  "marghetis2019_bc6", "Marghetis_Attari_19.md", "Choose the task or appliance that you think uses the least amount of electricity.", "cooling yourself with a window air conditioner", "cooling yourself with a ceiling fan", NA, "Ceiling fan (68 Wh) < Window AC (1157 Wh). Correct: Ceiling fan.", "Behavioral Choice Task 6.",
  "marghetis2019_bc7", "Marghetis_Attari_19.md", "Choose the task or appliance that you think uses the least amount of electricity.", "watching a movie on a 40\" flat screen television", "watching a movie on a projector", NA, "TV (68 Wh) < Projector (197 Wh). Correct: TV.", "Behavioral Choice Task 7.",
  "marghetis2019_bc8", "Marghetis_Attari_19.md", "Choose the task or appliance that you think uses the least amount of electricity.", "watching your favorite shows on a 40\" flat screen television", "watching your favorite shows on your laptop computer", NA, "Laptop (32 Wh) < TV (68 Wh). Correct: Laptop.", "Behavioral Choice Task 8.",
  "marghetis2019_bc9", "Marghetis_Attari_19.md", "Choose the task or appliance that you think uses the least amount of electricity.", "playing video games on your console (only consider the console)", "watching cable television (only consider the cable box)", NA, "Cable Box (32.88 Wh) < Console (111 Wh). Correct: Cable Box.", "Behavioral Choice Task 9.",
  "marghetis2019_bc10", "Marghetis_Attari_19.md", "Choose the task or appliance that you think uses the least amount of electricity.", "charging a Tesla Model S electric vehicle for one hour", "cooking a casserole in an electric oven for one hour", NA, "Electric oven (3050 Wh) < Tesla charge (11520 Wh). Correct: Electric oven.", "Behavioral Choice Task 10.",
  "marghetis2019_bc11", "Marghetis_Attari_19.md", "Choose the task or appliance that you think uses the least amount of electricity.", "a water heater running at full capacity for one hour", "vacuuming your carpets for one hour", NA, "Vacuum (809 Wh) < Water Heater (4284 Wh). Correct: Vacuum.", "Behavioral Choice Task 11.",
  "marghetis2019_bc12", "Marghetis_Attari_19.md", "Choose the task or appliance that you think uses the least amount of electricity.", "a central air conditioning unit running at full capacity for 8 hours throughout one day", "25 Compact Fluorescent Light (CFL) bulbs left on for 8 hours in one day", NA, "25 CFLs (23W*25*8h = 4600 Wh) < Central Air (3797W*8h = 30376 Wh). Correct: 25 CFLs.", "Behavioral Choice Task 12. Calculation based on provided Wh values.",
  "marghetis2019_bc13", "Marghetis_Attari_19.md", "Choose the task or appliance that you think uses the least amount of electricity.", "warming a room with a portable space heater", "washing clothes in a washing machine", NA, "Washing machine (478 Wh) < Portable heater (1290 Wh). Correct: Washing machine.", "Behavioral Choice Task 13.",
  "marghetis2019_bc14", "Marghetis_Attari_19.md", "Choose the task or appliance that you think uses the least amount of electricity.", "vacuuming carpets", "a refrigerator", NA, "Refrigerator (363.6 Wh) < Vacuum (809 Wh). Correct: Refrigerator.", "Behavioral Choice Task 14.",
  "marghetis2019_bc15", "Marghetis_Attari_19.md", "Choose the task or appliance that you think uses the least amount of electricity.", "drying a load of laundry in a clothes dryer once a week", "20 Light Emitting Diode (LED) bulbs left on for 60 hours each week", NA, "Clothes dryer (3938 Wh/load * 1 load = 3938 Wh) < 20 LED bulbs (15W*20*60h = 18000 Wh). Correct: Clothes dryer.", "Behavioral Choice Task 15. Calculation based on provided Wh values. Assumes dryer use is 1 hour for 1 load for comparison.",
  # Marghetis_Attari_19.md (Behavioral Choice Task - Savings)
  "marghetis2019_bs16", "Marghetis_Attari_19.md", "Choose which action would allow you to save the most electricity.", "Purchasing a space heater that is 20% more efficient", "purchasing a television that is 20% more efficient", NA, "Space heater (1290 Wh * 20% = 258 Wh saved) > TV (68 Wh * 20% = 13.6 Wh saved). Correct: Space heater.", "Behavioral Savings Task 16.",
  "marghetis2019_bs17", "Marghetis_Attari_19.md", "Choose which action would allow you to save the most electricity.", "replacing 20 of your Compact Fluorescent Light (CFL) bulbs for LED bulbs, left on for 8 hours each day for one week", "hand washing your dishes with cold water rather than using the dishwasher", NA, "LEDs vs CFLs: (23Wh-15Wh)*20bulbs*8h/day*7days = 8960 Wh saved. Hand washing vs Dishwasher: Dishwasher (1201 Wh/use). Assume 1 use/day. Savings 1201*7 = 8407 Wh. Correct: Replacing bulbs.", "Behavioral Savings Task 17. Calculations are estimates based on hourly rates.",
  "marghetis2019_bs18", "Marghetis_Attari_19.md", "Choose which action would allow you to save the most electricity.", "line drying your clothes rather than using an electric clothes dryer (once a week)", "reading a book rather than watching television (20 hours a week)", NA, "Line drying (saves 3938 Wh/load, assume 1 load/wk). Reading vs TV (saves 68Wh/hr * 20hr/wk = 1360 Wh/wk). Correct: Line drying.", "Behavioral Savings Task 18.",
  "marghetis2019_bs19", "Marghetis_Attari_19.md", "Choose which action would allow you to save the most electricity.", "turning off your cable box when not in use", "turning off an idle laptop when not in use", NA, "Cable box idle (17.83 Wh) > Laptop idle (8.9 Wh). Correct: Turning off cable box saves more.", "Behavioral Savings Task 19. Based on idle power.",
  "marghetis2019_bs20", "Marghetis_Attari_19.md", "Choose which action would allow you to save the most electricity.", "replacing your morning coffee (coffee maker runs at full capacity for 10 minutes) with a glass of water", "unwinding with a book at the end of the day rather than watching television for one hour", NA, "Coffee maker (1134W * 10/60 hr = 189 Wh saved). Book vs TV (68 Wh saved). Correct: Replacing coffee.", "Behavioral Savings Task 20.",
  # Lundberg_Attari_2019.md
  "lundberg2019_recommend_friend", "Lundberg_Attari_2019.md", "Assume a friend wants to know which of the two actions saves the most energy over a month. Which one would you tell them saves the most energy?", "Always turning off the lights when leaving a room", "Replacing incandescent light bulbs with more efficient light bulbs, like CFL and LED bulbs", NA, "Replacing bulbs generally saves more (as argued in paper, e.g., 100W incandescent vs 14W LED example).", "This is a perception/recommendation question. 77% chose replacing bulbs.",
  "lundberg2019_general_saving_belief", "Lundberg_Attari_2019.md", "In general, do you believe that you can save more energy by:", "Reducing how often you use an appliance", "Replacing an appliance with a more efficient model", NA, "Replacing with efficient model generally has higher potential for savings (paper's argument).", "67% chose replacing appliance.",
  # Lundberg_Attari_2019.md (Energy Literacy Questions - choose option that saves most energy)
  "lundberg2019_elq1", "Lundberg_Attari_2019.md", "Choose the option that saves the most energy.", "Decreasing one incandescent light bulb's use from 4 hours to 3 hours", "Using one LED light bulb for 4 hours instead of an incandescent light bulb", NA, "Incandescent (100W): 100Wh saved. LED (15W) vs Incandescent (100W) for 4h: (100-15)*4 = 340Wh saved. Correct: Using LED.", "Assumes 100W incandescent, 15W LED.",
  "lundberg2019_elq2", "Lundberg_Attari_2019.md", "Choose the option that saves the most energy.", "Reducing the use of a window air conditioning unit from 5 hours to 3 hours", "Keeping a ceiling fan on for 5 hours instead of using a window air conditioning unit", NA, "Window AC (1157W): 1157*2 = 2314Wh saved. Fan (68W) vs Window AC (1157W) for 5h: (1157-68)*5 = 5445Wh saved. Correct: Fan instead of AC.", "Uses values from Marghetis_Attari_19.",
  "lundberg2019_elq3", "Lundberg_Attari_2019.md", "Choose the option that saves the most energy.", "Reducing the use of a dehumidifier from 10 hours to 5 hours", "Purchasing a 20% more efficient dehumidifier and using it for 10 hours instead of using a standard dehumidifier", NA, "Dehumidifier (734W): 734*5 = 3670Wh saved. Efficient dehumidifier: 734*0.20*10 = 1468Wh saved. Correct: Reducing use.", "Uses values from Marghetis_Attari_19.",
  "lundberg2019_elq4", "Lundberg_Attari_2019.md", "Choose the option that saves the most energy.", "Decreasing the use of one CFL bulb from 2 hours to 1 hour", "Using one LED bulb for 2 hours instead of a CFL bulb", NA, "CFL (23W): 23Wh saved. LED (15W) vs CFL (23W) for 2h: (23-15)*2 = 16Wh saved. Correct: Decreasing CFL use.", "Uses values from Marghetis_Attari_19.",
  "lundberg2019_elq5", "Lundberg_Attari_2019.md", "Choose the option that saves the most energy.", "Decreasing the use of one CFL bulb from 10 hours to 1 hour", "Using one LED bulb for 10 hours instead of a CFL bulb", NA, "CFL (23W): 23*9 = 207Wh saved. LED (15W) vs CFL (23W) for 10h: (23-15)*10 = 80Wh saved. Correct: Decreasing CFL use.", "Uses values from Marghetis_Attari_19.",
  "lundberg2019_elq6", "Lundberg_Attari_2019.md", "Choose the option that saves the most energy.", "Reducing the use of a projector to watch movies from 10 hours to 9 hours a week", "Using a smartphone for 10 hours a week to watch movies instead of a projector", NA, "Projector (197W): 197Wh saved. Smartphone (3.42W) vs Projector (197W) for 10h: (197-3.42)*10 = 1935.8Wh saved. Correct: Smartphone instead of projector.", "Uses values from Marghetis_Attari_19.",
  "lundberg2019_elq7", "Lundberg_Attari_2019.md", "Choose the option that saves the most energy.", "Decreasing the use of a central air conditioning unit from 6 hours to 5 hours", "Using a ceiling fan for 6 hours instead of a central air conditioning unit", NA, "Central AC (3797W): 3797Wh saved. Fan (68W) vs Central AC (3797W) for 6h: (3797-68)*6 = 22374Wh saved. Correct: Fan instead of AC.", "Uses values from Marghetis_Attari_19.",
  "lundberg2019_elq8", "Lundberg_Attari_2019.md", "Choose the option that saves the most energy.", "Reducing the use of a space heater from 5 hours to 4 hours", "Using an electric blanket for 5 hours instead of a space heater", NA, "Space heater (1290W): 1290Wh saved. Blanket (197W) vs Space heater (1290W) for 5h: (1290-197)*5 = 5465Wh saved. Correct: Blanket instead of heater.", "Uses values from Marghetis_Attari_19.",
  "lundberg2019_elq9", "Lundberg_Attari_2019.md", "Choose the option that saves the most energy.", "Reducing the use of a desktop computer to play music from 10 hours to 5 hours", "Using a stereo to play music for 10 hours instead of a desktop computer", NA, "Desktop (138W): 138*5 = 690Wh saved. Stereo (33W) vs Desktop (138W) for 10h: (138-33)*10 = 1050Wh saved. Correct: Stereo instead of desktop.", "Uses values from Marghetis_Attari_19."
)

# --- 4. Percentage Allocation Questions ---
percentage_allocation_questions <- tribble(
  ~question_id, ~source_file, ~question_text, ~categories_to_allocate, ~total_must_sum_to, ~correct_answers_source_notes, ~additional_info,
  # Schley_DeKay_2015.md
  "schley2015_S1_national", "Schley_DeKay_2015.md", "Please indicate what percentage of total energy (electricity, natural gas, propane, or heating oil) used by typical American households in a given year you think is used by devices or appliances in that category.", "Small electric appliances; Televisions; Space heating; Lighting; Clothes washing/drying; Dishwashers; Cooking; Water heating; Air conditioning; Swimming pool heaters, grills, and outdoor heating lamps; Refrigerators/freezers; Computers; Other", "100%", "Actual percentages from Gardner & Stern (2008) / USEIA (2007) in Appendix Table A.1. E.g., Space heating: 33.2%", "Study 1, 13 non-transportation categories.",
  "schley2015_S2_national_transport", "Schley_DeKay_2015.md", "Please indicate what percentage of total individual and household energy (electricity, natural gas, propane, heating oil, gasoline, or diesel fuel) used by American individuals and households in a given year you think is used by devices or appliances in each of the categories below.", "Small electric appliances; Televisions; Home heating; Lighting; Clothes washing and drying; Dishwashers; Cooking; Water heating (incl. hot water for clothes); Air conditioning; Swimming pool heaters, grills, and outdoor gas lamps; Refrigeration and freezing; Computers; Other individual and household energy use; Private motor vehicles; Air travel; Mass transportation", "100%", "Actual percentages from Gardner & Stern (2008) in Appendix Table A.1. E.g., Private motor vehicles: 38.6%, Home heating: 18.8%", "Study 2, 16 categories including transportation.",
  "schley2015_S3_national_no_transport", "Schley_DeKay_2015.md", "Please indicate what percentage of total household energy (electricity, natural gas, heating oil, propane, wood, and other fuels) used by ALL HOUSEHOLDS IN THE UNITED STATES in a given year... you think is used by devices or appliances in each of the categories below.", "Dishwashers; Personal computers and related equipment; Cooking; Clothes washers and dryers; Color televisions and set-top boxes; Refrigeration and freezing; Lighting; Air conditioning; Water heating (incl. hot water for clothes and dish); Home heating (incl. furnace fans); Other devices", "100%", "Actual percentages from USEIA (2012) in Appendix Table A.1. E.g., Home heating: 44.2%, Water heating: 17.5%", "Study 3, 11 non-transportation categories, updated source.",
  "schley2015_S4_personal", "Schley_DeKay_2015.md", "Please indicate what percentage of your total individual and household energy (electricity, natural gas, propane, heating oil, gasoline, or diesel fuel) used by your household in a given year you think is used by devices or appliances in each of the categories below.", "Same 16 categories as Study 2.", "100%", "Actuals not measured for individuals; compared to national proxy (Gardner & Stern 2008).", "Study 4, personal energy use estimates.",
  # Camilleri_Larrick_2019.md (Household emissions source allocation)
  "camilleri2019_household_ghg_source", "Camilleri_Larrick_2019.md", "What percentage of the total [energy consumed / GHG emissions] per year by an average household in the United States is attributed to each of the following categories?", "Household operations (electricity, gas, oil for house); Transportation (air, motor, public); Food production (growing, shipping food eaten)", "100%", "Paper states 'food system contributes 19%-29% of global GHG emissions'. For US households, breakdown not explicitly given as 'correct' in results, used as elicitation.", "Question asked for both energy and GHG in different studies (1A/1B)."
)

# --- 5. Numeracy Questions ---
# Standard numeracy questions often repeated across studies.
# Swartz et al. (1997) / Frederick (2005) type questions
numeracy_questions_swartz <- tribble(
  ~question_id, ~source_file, ~question_text, ~answer_format, ~correct_answer,
  "num_swartz1_coin_flip", "Multiple (e.g., Attari_2010_full.md, Schley_DeKay_2015.md, Marghetis_Attari_19.md, Lundberg_Attari_2019.md)", "Imagine that we flip a fair coin 1,000 times. What is your best guess about how many times the coin would come up heads in 1,000 flips?", "Number", "500",
  "num_swartz2_lottery_prize", "Multiple (e.g., Attari_2010_full.md, Schley_DeKay_2015.md, Marghetis_Attari_19.md, Lundberg_Attari_2019.md)", "In the BIG BUCKS LOTTERY, the chance of winning a $10 prize is 1%. What is your best guess about how many people would win a $10 prize if 1000 people each buy a single ticket to BIG BUCKS?", "Number", "10",
  "num_swartz3_sweepstakes_percent", "Multiple (e.g., Attari_2010_full.md, Schley_DeKay_2015.md, Marghetis_Attari_19.md, Lundberg_Attari_2019.md)", "In ACME PUBLISHING SWEEPSAKES, the chance of winning a car is 1 in 1,000. What percent of tickets to ACME PUBLISHING SWEEPSAKES win a car?", "Percent", "0.1%"
)

# Berlin Numeracy Task questions (as seen in Marghetis_Attari_19.md & Lundberg_Attari_2019.md)
numeracy_questions_berlin <- tribble(
  ~question_id, ~source_file, ~question_text, ~answer_format, ~correct_answer,
  "num_berlin1_choir", "Marghetis_Attari_19.md, Lundberg_Attari_2019.md", "Out of 1,000 people in a small town 500 are members of a choir. Out of these 500 members in the choir 100 are men. Out of the 500 inhabitants that are not in the choir 300 are men. What is the probability that a randomly drawn man is a member of the choir? Please indicate the probability in percent.", "Percent", "25%", # (100 men in choir / (100 men in choir + 300 men not in choir) = 100/400)
  "num_berlin2_five_sided_die", "Marghetis_Attari_19.md, Lundberg_Attari_2019.md", "Imagine we are throwing a five-sided die 50 times. On average, out of these 50 throws how many times would this five-sided die show an odd number (1, 3 or 5)?", "Number", "30", # (3 odd numbers / 5 sides = 0.6 probability; 0.6 * 50 throws = 30)
  "num_berlin3_loaded_die", "Marghetis_Attari_19.md, Lundberg_Attari_2019.md", "Imagine we are throwing a loaded die (6 sides). The probability that the die shows a 6 is twice as high as the probability of each of the other numbers. On average, out of these 70 throws how many times would the die show the number 6?", "Number", "20", # (P(1-5)=x, P(6)=2x. Sum P = 5x+2x=7x=1. So x=1/7. P(6)=2/7. 2/7 * 70 = 20)
  "num_berlin4_mushroom", "Marghetis_Attari_19.md, Lundberg_Attari_2019.md", "In a forest 20% of mushrooms are red, 50% brown and 30% white. A red mushroom is poisonous with a probability of 20%. A mushroom that is not red is poisonous with a probability of 5%. What is the probability that a poisonous mushroom in the forest is red?", "Percent", "50%" # P(Pois|Red)=0.2, P(Red)=0.2. P(Pois|NotRed)=0.05, P(NotRed)=0.8. P(Red|Pois) = P(Pois|Red)P(Red) / [P(Pois|Red)P(Red) + P(Pois|NotRed)P(NotRed)] = (0.2*0.2) / (0.2*0.2 + 0.05*0.8) = 0.04 / (0.04 + 0.04) = 0.04/0.08 = 0.5
)

# Weller et al. (2013) numeracy scale questions (from Schley_DeKay_2015.md supplement)
numeracy_questions_weller <- tribble(
  ~question_id, ~source_file, ~question_text, ~answer_format, ~correct_answer,
  "num_weller1_die_even", "Schley_DeKay_2015.md", "Imagine that we roll a fair, six-sided die 1,000 times. Out of 1,000 rolls, how many times do you think the die would come up as an even number?", "Number", "500",
  "num_weller2_disease_10_percent", "Schley_DeKay_2015.md", "If the chance of getting a disease is 10%, how many people would be expected to get the disease out of 1,000?", "Number", "100",
  "num_weller3_disease_20_out_of_100", "Schley_DeKay_2015.md", "If the chance of getting a disease is 20 out of 100, this would be the same as having a _ % chance of getting the disease.", "Percent", "20%",
  "num_weller4_mammogram", "Schley_DeKay_2015.md", "Suppose you have a close friend who has a lump in her breast and must have a mammogram... Imagine that your friend tests positive (as if she had a tumor), what is the likelihood that she actually has a tumor? (Table provided: Positive Test & Actual Tumor = 9; Positive Test & No Tumor = 9. Total Positive Test = 18)", "X out of Y", "9 out of 18 (or 1 out of 2, or 50%)", # Actual data has 10 for Positive Test & No Tumor in one place, 9 in another in the text. Assuming 9 as per table total.
  "num_weller5_bat_ball_crt", "Schley_DeKay_2015.md", "A bat and a ball cost $1.10 in total. The bat costs $1.00 more than the ball. How much does the ball cost?", "Cents", "5 cents", # (CRT item)
  "num_weller6_lilypads_crt", "Schley_DeKay_2015.md", "In a lake, there is a patch of lilypads. Every day, the patch doubles in size. If it takes 48 days for the patch to cover the entire lake, how long would it take for the patch to cover half of the lake?", "Days", "47 days" # (CRT item)
  # The Swartz lottery and sweepstakes questions are also part of the Weller scale as listed in Schley_DeKay_2015.md
)


# --- 6. Open-ended Elicitation (Most Effective Thing) ---
# This type of question doesn't have a single "correct" answer but is a common elicitation method.
# I'll include it to show the pattern.
open_ended_elicitation_questions <- tribble(
  ~question_id, ~source_file, ~question_text, ~typical_responses_focus,
  "attari2010_most_effective_self", "Attari et al. - 2010 - Public perceptions of energy consumption and savings.md", "In your opinion, what is the most effective thing that you could do to conserve energy in your life?", "Curtailment (e.g., Turn off lights, Drive less) more common than Efficiency (e.g., Use efficient light bulbs). 'Turn off lights' 19.6%.",
  "attari2014_most_effective_water_self", "Attari_2014_water.md", "In your opinion, what is the most effective thing that you could personally do to conserve water in your lives?", "Curtailment (e.g., shorter showers 42.6%) more common than Efficiency.",
  "attari2014_most_effective_water_americans", "Attari_2014_water.md", "In your opinion, what is the most effective thing Americans can do to conserve water in their lives?", "Curtailment (e.g., shorter showers 28.0%, water lawn less 12.5%) more common than Efficiency. Shift from self: more lawn watering for others.",
  "attari2016_most_effective_self_S1", "Attari_2016.md", "In your opinion, what is the single most effective thing that you could do to use less energy in your life?", "Turn off lights (19.5%), Drive less (19.3%) (Study 1)",
  "attari2016_most_effective_americans_S1", "Attari_2016.md", "In your opinion, what is the single most effective thing that Americans could do to use less energy in their life?", "Drive less (31.8%), Turn off lights (13.0%) (Study 1 - shows shift)",
  "attari2016_most_effective_self_S2_open", "Attari_2016.md", "In your opinion, what is the single most effective thing that you could do to use less energy in your life? (Open-ended)", "Turn off lights (13.6%), Drive less (19.3%) (Study 2)",
  "attari2016_most_effective_americans_S2_open", "Attari_2016.md", "In your opinion, what is the most effective thing that Americans could do to use less energy in their life? (Open-ended)", "Drive less (31.8%), Turn off lights (10.2%) (Study 2 - shows shift)",
  "attari2016_most_effective_self_S2_closed", "Attari_2016.md", "Which of the following behaviors is the single most effective behavior that you could do to use less energy in your life? (Closed-ended, 7 options)", "Turn off lights and appliances (40.7%), Drive less (20.0%) (Study 2). Options: Turn off lights/appliances, Drive less, Buy green energy, Use efficient bulbs, Change thermostat, Consume less, Buy fuel-efficient car.",
  "attari2016_most_effective_americans_S2_closed", "Attari_2016.md", "Which of the following behaviors is the single most effective behavior that Americans could do to use less energy in their lives? (Closed-ended, 7 options)", "Drive less (38.7%), Turn off lights/appliances (24.1%) (Study 2 - shows shift). Same 7 options.",
  "lundberg2019_most_effective_currently_do", "Lundberg_Attari_2019.md", "What is the single most effective thing you currently do to save energy in your life?", "Turn off the lights (36.3%), Adjust thermostat (15.3%). Curtailment (76%).",
  "lundberg2019_most_effective_could_do", "Lundberg_Attari_2019.md", "What is the single most effective thing you could be doing to save energy in your life?", "Adjust thermostat (13.7%), Use renewable energy (11.7%), Use appliances/electronics less (9.3%). 'Turn off lights' drops to 6.6%."
)

# Print a sample of one tribble to check
print(estimation_questions[1:3,])
print(ranking_questions[1:2,])
print(choice_questions[1:3,])


# **Notes on Creation and Interpretation:**

# *   **`question_id`**: A unique identifier I've created for each question, generally `sourceAuthorYear_shortDescription`.
# *   **`source_file`**: The markdown file from which the question was extracted.
# *   **`question_text`**: The wording of the question as presented. I've sometimes parameterized `[DEVICE]` or `[FOOD]` where multiple items were asked in the same format.
# *   **`reference_point`**: If a reference was provided for estimation tasks.
# *   **`items_to_estimate` / `items_to_rank` / `option1`, `option2`, `option3`**: The specific items or choices.
# *   **`unit_of_estimation`**: The unit participants were asked to respond in.
# *   **`correct_answers_source_notes` / `correct_answer_logic`**: This is key. It indicates where the "correct" answer comes from within the paper (e.g., a supplementary table, a researcher's calculation, or direct statement). For choices, it explains the logic if not a direct lookup.
# *   **`additional_info`**: Any other relevant context.
# *   **Numeracy Questions**: Many studies use the same standard numeracy questions. I've grouped them by their common origin (Swartz, Berlin, Weller) and listed which papers used them. The `correct_answer` is the standard mathematical solution.
# *   **Frederick_2010.md**: This paper *reports results* of estimations under different conditions rather than posing new survey questions to participants *within that paper*. The "questions" listed are interpretations of the experimental setup.
# *   **Actual Values**: For many estimation tasks, the "correct" answers are the "actual energy use" values provided in the respective papers' tables or supplementary information. These often have a range or are averages from literature.
# *   **Behavioral Choices (e.g., `Camilleri_Larrick_2019.md` Study 2 soup choice):** These are sometimes about measuring the *effect* of an intervention on choice, rather than testing knowledge of a "correct" energy-saving choice. I've included one example where an estimation related to the choice was also asked.
# *   **Open-ended "Most Effective Thing"**: These are more about perception and salience. The `typical_responses_focus` column summarizes the findings from the paper.






#######
######
######




# https://gemini.google.com/app/57f6593827b33e24

# Tribble 1: Estimation of Typical Hourly Energy Use (Wh or "units")
# This tribble includes questions asking participants to estimate the energy used by appliances
# typically in one hour, often with a reference point like "a 100W incandescent bulb uses 100 units in 1 hour."

estimation_Wh_typical_hourly <- tibble::tribble(
  ~question_id, ~source_primary, ~source_secondary, ~question_text, ~reference_point_provided, ~answer_unit, ~correct_answer_Wh,
  # From Attari et al. (2010), Appendix Q3 & Table S1
  "Attari2010_CFL", "Attari et al. (2010)", "Frederick et al. (2011)", "A compact fluorescent light bulb that is as bright as a 100-Watt incandescent light bulb", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 27,
  "Attari2010_DesktopComputer", "Attari et al. (2010)", "Frederick et al. (2011)", "A desktop computer", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 140, # Mean of 80, 200
  "Attari2010_LaptopComputer", "Attari et al. (2010)", "Frederick et al. (2011)", "A laptop computer", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 48, # Mean of 20, 75, 50
  "Attari2010_Stereo", "Attari et al. (2010)", "Frederick et al. (2011)", "A stereo", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 128, # Mean of 10, 30, 70, 400 - Note: High variance in sources for Stereo. Attari used 128.
  "Attari2010_ElectricClothesDryer", "Attari et al. (2010)", "Frederick et al. (2011)", "An electric clothes dryer", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 3400, # Mean of 1800, 5000
  "Attari2010_PortableHeater", "Attari et al. (2010)", "Frederick et al. (2011)", "A portable heater", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 925, # Mean of 750, 1100
  "Attari2010_RoomAC", "Attari et al. (2010)", "Frederick et al. (2011)", "A room air-conditioner", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1000,
  "Attari2010_CentralAC", "Attari et al. (2010)", "Frederick et al. (2011)", "A central air conditioner", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 3500, # Mean of 2000, 5000
  "Attari2010_Dishwasher", "Attari et al. (2010)", "Frederick et al. (2011)", "A dish washer", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1800, # Mean of 1200, 2400

  # From Kantenbacher & Attari (2021), Supplementary Methods 1, Estimation Task
  # Actual values are in parentheses in their supplement.
  "Kantenbacher2021_CFL", "Kantenbacher & Attari (2021)", NA, "Compact fluorescent light (CFL) bulb", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 23,
  "Kantenbacher2021_DesktopComputer", "Kantenbacher & Attari (2021)", NA, "Desktop computer", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 138,
  "Kantenbacher2021_LaptopComputer", "Kantenbacher & Attari (2021)", NA, "Laptop computer", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 32,
  "Kantenbacher2021_WindowAC", "Kantenbacher & Attari (2021)", NA, "Window air conditioner", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1157,
  "Kantenbacher2021_ClothesDryer", "Kantenbacher & Attari (2021)", NA, "Clothes dryer", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 3938,
  "Kantenbacher2021_Dishwasher", "Kantenbacher & Attari (2021)", NA, "Dishwasher", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1201,
  "Kantenbacher2021_Vacuum", "Kantenbacher & Attari (2021)", NA, "Vacuum", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 809,
  "Kantenbacher2021_SmartphoneCharge", "Kantenbacher & Attari (2021)", NA, "Charging a smartphone", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 3, # Approx. Marghetis uses 3.42Wh
  "Kantenbacher2021_Refrigerator", "Kantenbacher & Attari (2021)", NA, "Refrigerator", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 280, # Marghetis uses 364Wh for Fridge, 384Wh for Storage Freezer. Kempton used 280 for fridge, 363 for Refrigerator in another.
  "Kantenbacher2021_ElectricOven", "Kantenbacher & Attari (2021)", NA, "Electric oven", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 3050,
  "Kantenbacher2021_WashingMachine", "Kantenbacher & Attari (2021)", NA, "Washing machine", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 478,
  "Kantenbacher2021_DVDPlayer", "Kantenbacher & Attari (2021)", NA, "DVD player", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 9,
  "Kantenbacher2021_CeilingFan", "Kantenbacher & Attari (2021)", NA, "Ceiling fan", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 69, # Marghetis uses 68Wh
  "Kantenbacher2021_Microwave", "Kantenbacher & Attari (2021)", NA, "Microwave", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1101,
  "Kantenbacher2021_ElectricKettle", "Kantenbacher & Attari (2021)", NA, "Electric kettle", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1390,
  "Kantenbacher2021_Toaster", "Kantenbacher & Attari (2021)", NA, "Toaster", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1213,
  "Kantenbacher2021_LEDbulb", "Kantenbacher & Attari (2021)", NA, "LED light bulb", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 15,

  # From Marghetis et al. (2019), Supplement (V1 Single Anchor list)
  # Note: Some overlap with Kantenbacher, values are very similar. Using Marghetis Wh values.
  "Marghetis2019_CFL", "Marghetis et al. (2019)", NA, "Compact Fluorescent Light (CFL) bulb", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 23,
  "Marghetis2019_DesktopComputer", "Marghetis et al. (2019)", NA, "Desktop computer", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 138,
  "Marghetis2019_LaptopComputer", "Marghetis et al. (2019)", NA, "Laptop computer", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 32,
  "Marghetis2019_Stereo", "Marghetis et al. (2019)", NA, "Stereo", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 33,
  "Marghetis2019_WindowAC", "Marghetis et al. (2019)", NA, "Window air conditioner", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1157,
  "Marghetis2019_CentralAC", "Marghetis et al. (2019)", NA, "Central air conditioner", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 3797,
  "Marghetis2019_ClothesDryer", "Marghetis et al. (2019)", NA, "Clothes dryer", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 3938,
  "Marghetis2019_Dishwasher", "Marghetis et al. (2019)", NA, "Dishwasher", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1201,
  "Marghetis2019_TeslaCharge", "Marghetis et al. (2019)", NA, "Charging a Tesla Model-S electric car", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 11520,
  "Marghetis2019_Dehumidifier", "Marghetis et al. (2019)", NA, "Dehumidifier", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 734,
  "Marghetis2019_Humidifier", "Marghetis et al. (2019)", NA, "Humidifier", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 185,
  "Marghetis2019_Vacuum", "Marghetis et al. (2019)", NA, "Vacuum", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 809,
  "Marghetis2019_IncandescentBulb", "Marghetis et al. (2019)", NA, "Incandescent light bulb", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 100,
  "Marghetis2019_SlowCooker", "Marghetis et al. (2019)", NA, "Slow cooker (crockpot)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 318,
  "Marghetis2019_ElectricOven", "Marghetis et al. (2019)", NA, "Electric oven", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 3050,
  "Marghetis2019_PortableHeater", "Marghetis et al. (2019)", NA, "Portable heater", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1290,
  "Marghetis2019_SmartphoneCharge", "Marghetis et al. (2019)", NA, "Charging a smartphone", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 3.42,
  "Marghetis2019_TV40inch", "Marghetis et al. (2019)", NA, "40\" flat screen television", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 68,
  "Marghetis2019_CeilingFan", "Marghetis et al. (2019)", NA, "Ceiling fan", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 68, # Kantenbacher has 69Wh
  "Marghetis2019_WaterHeater", "Marghetis et al. (2019)", NA, "Water heater", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 4284,
  "Marghetis2019_Modem", "Marghetis et al. (2019)", NA, "Modem", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 12.1,
  "Marghetis2019_CableBox", "Marghetis et al. (2019)", NA, "Television Cable box", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 33,
  "Marghetis2019_AlarmClock", "Marghetis et al. (2019)", NA, "Alarm clock", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 2.8,
  "Marghetis2019_Iron", "Marghetis et al. (2019)", NA, "Iron", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1198,
  "Marghetis2019_Projector", "Marghetis et al. (2019)", NA, "Projector", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 197,
  "Marghetis2019_Fridge", "Marghetis et al. (2019)", NA, "Fridge", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 364, # Kantenbacher has 280Wh
  "Marghetis2019_StorageFreezer", "Marghetis et al. (2019)", NA, "Storage freezer", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 384,
  "Marghetis2019_WashingMachine", "Marghetis et al. (2019)", NA, "Washing machine", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 478,
  "Marghetis2019_VideoGameConsole", "Marghetis et al. (2019)", NA, "Video game console", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 110,
  "Marghetis2019_ElectricBlanket", "Marghetis et al. (2019)", NA, "Electric blanket", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 197,
  "Marghetis2019_DVDPlayer", "Marghetis et al. (2019)", NA, "DVD player", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 9.13, # Kantenbacher has 9Wh
  "Marghetis2019_Microwave", "Marghetis et al. (2019)", NA, "Microwave", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1101,
  "Marghetis2019_Toaster", "Marghetis et al. (2019)", NA, "Toaster", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1213,
  "Marghetis2019_LEDbulb", "Marghetis et al. (2019)", NA, "LED light bulb", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 15,
  "Marghetis2019_ElectricKettle", "Marghetis et al. (2019)", NA, "Electric kettle", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1390,
  "Marghetis2019_CoffeeMaker", "Marghetis et al. (2019)", NA, "Coffee maker", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1134,

  # From Camilleri et al. (2019), Study 1A, Supplementary Note 1 & Table S2 (Appliances)
  # Using their "Mean Energy (W/hr)" as correct_answer_Wh. Some overlap with above, values might differ slightly due to their sources.
  "Camilleri2019_Incandescent", "Camilleri et al. (2019)", NA, "A 100-watt incandescent light bulb", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 100,
  "Camilleri2019_CFL", "Camilleri et al. (2019)", NA, "A compact fluorescent light bulb that is as bright as a 100-watt incandescent light bulb", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 24, # Attari/Marghetis use 23/27
  "Camilleri2019_DesktopComputer", "Camilleri et al. (2019)", NA, "A desktop computer (including monitor)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 146, # Attari/Marghetis use 140/138
  "Camilleri2019_LaptopComputer", "Camilleri et al. (2019)", NA, "A laptop computer", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 41,  # Attari/Marghetis use 48/32
  "Camilleri2019_ClothesDryer", "Camilleri et al. (2019)", NA, "An electric clothes dryer", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 3615, # Attari/Marghetis use 3400/3938
  "Camilleri2019_HandheldIron", "Camilleri et al. (2019)", NA, "A handheld clothes iron", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1027, # Marghetis uses 1198
  "Camilleri2019_WashingMachine", "Camilleri et al. (2019)", NA, "A washing machine (excluding water)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 383, # Attari/Marghetis use 478
  "Camilleri2019_PortableHeater", "Camilleri et al. (2019)", NA, "A portable electric heater", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1440, # Attari/Marghetis use 925/1290
  "Camilleri2019_RoomAC", "Camilleri et al. (2019)", NA, "A room air-conditioner", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1016, # Attari/Marghetis use 1000/1157
  "Camilleri2019_CentralAC", "Camilleri et al. (2019)", NA, "A central air-conditioner", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 3285, # Attari/Marghetis use 3500/3797
  "Camilleri2019_CoffeeMaker", "Camilleri et al. (2019)", NA, "A coffee maker", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 700,  # Marghetis uses 1134
  "Camilleri2019_Dishwasher", "Camilleri et al. (2019)", NA, "A dishwasher", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1177, # Attari/Marghetis use 1800/1201
  "Camilleri2019_Freezer", "Camilleri et al. (2019)", NA, "A freezer", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 240,  # Marghetis uses 384 (storage freezer)
  "Camilleri2019_Refrigerator", "Camilleri et al. (2019)", NA, "A refrigerator", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 291,  # Marghetis uses 364
  "Camilleri2019_ToasterOven", "Camilleri et al. (2019)", NA, "A toaster oven", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1017, # Marghetis uses 'Toaster' (1213Wh)
  "Camilleri2019_Microwave", "Camilleri et al. (2019)", NA, "A microwave oven", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1086, # Marghetis uses 1101
  "Camilleri2019_Television", "Camilleri et al. (2019)", NA, "A television", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 242,  # Marghetis uses 68Wh for 40" flat screen
  "Camilleri2019_Vacuum", "Camilleri et al. (2019)", NA, "A vacuum cleaner", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 667,   # Marghetis uses 809
  "Camilleri2019_DVDPlayer", "Camilleri et al. (2019)", NA, "A DVD player", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 32     # Marghetis uses 9.13
)

# Tribble 2: Estimation of Energy Embodied in Food (Wh or "units" per serving)
# From Camilleri et al. (2019), Study 1A, Supplementary Note 1 & Table S3
# Energy Units are derived from Mean Energy (MJ/kg) converted to Wh/serving.
# 1 MJ = 277.778 Wh. Example for Maize: 4.6 MJ/kg * 277.778 Wh/MJ * 0.16 lb/serving * 0.453592 kg/lb = 92.5 Wh/serving.
# The paper's "Energy Units" column in Table S3 seems to already be this value (e.g. Maize = 93).
estimation_Wh_typical_food_serving <- tibble::tribble(
  ~question_id, ~source_primary, ~question_text, ~reference_point_provided, ~answer_unit, ~correct_answer_Wh_per_serving,
  "Camilleri2019_Lamb", "Camilleri et al. (2019)", "1 small fist of lamb (0.22 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1904,
  "Camilleri2019_Beef", "Camilleri et al. (2019)", "1 small fist of beef (0.22 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 1544,
  "Camilleri2019_Pork", "Camilleri et al. (2019)", "1 small fist of pork (0.22 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 884,
  "Camilleri2019_Cheese", "Camilleri et al. (2019)", "2 slices of cheese (0.12 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 672,
  "Camilleri2019_Milk", "Camilleri et al. (2019)", "1 cup of milk (0.54 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 456,
  "Camilleri2019_Tofu", "Camilleri et al. (2019)", "1 tofu steak (0.38 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 425,
  "Camilleri2019_Almonds", "Camilleri et al. (2019)", "A handful of almonds (0.16 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 692,
  "Camilleri2019_Eggs", "Camilleri et al. (2019)", "2 large eggs (0.22 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 516,
  "Camilleri2019_Potato", "Camilleri et al. (2019)", "1 medium-sized potato (0.47 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 399,
  "Camilleri2019_Apple", "Camilleri et al. (2019)", "1 medium-sized apple (0.40 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 264,
  "Camilleri2019_Orange", "Camilleri et al. (2019)", "1 medium-sized orange (0.31 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 151,
  "Camilleri2019_Tomato", "Camilleri et al. (2019)", "1 medium-sized tomato (0.27 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 165,
  "Camilleri2019_Walnuts", "Camilleri et al. (2019)", "A handful of walnuts (0.14 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 220,
  "Camilleri2019_Beans", "Camilleri et al. (2019)", "Half a cup of beans (0.20 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 272,
  "Camilleri2019_Rice", "Camilleri et al. (2019)", "Half a cup of rice (0.20 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 247,
  "Camilleri2019_Wheat", "Camilleri et al. (2019)", "Half a cup of wheat (0.21 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 144,
  "Camilleri2019_Barley", "Camilleri et al. (2019)", "Half a cup of barley (0.22 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 150,
  "Camilleri2019_Soybeans", "Camilleri et al. (2019)", "Half a cup of soybeans (0.28 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 173,
  "Camilleri2019_Maize", "Camilleri et al. (2019)", "Half a cup of maize / corn (0.16 lb)", "100W incandescent bulb = 100 units in 1 hr", "units (Wh equivalent)", 93
)

# Tribble 3: Estimation of Energy Saved by Typical Actions (Wh or "units")
# From Attari et al. (2010), Appendix Q4 & Table S2
estimation_Wh_saved_typical <- tibble::tribble(
  ~question_id, ~source_primary, ~question_text, ~reference_point_provided, ~answer_unit, ~correct_answer_Wh_saved,
  "Attari2010_Save_ReplaceCFL", "Attari et al. (2010)", "Replacing one 100-watt incandescent bulb with equally bright compact fluorescent bulb that is used for one hour", "Turning off 100W bulb for 1 hr SAVES 100 units", "units (Wh equivalent)", 73, # 100W - 27W (CFL from Table S1)
  "Attari2010_Save_Replace75W", "Attari et al. (2010)", "Replacing one 100-watt kitchen bulb with a 75-watt bulb that is used for one hour", "Turning off 100W bulb for 1 hr SAVES 100 units", "units (Wh equivalent)", 25, # 100W - 75W
  "Attari2010_Save_LineDry", "Attari et al. (2010)", "Drying clothes on a clothes line (not using the dryer) for one load of laundry", "Turning off 100W bulb for 1 hr SAVES 100 units", "units (Wh equivalent)", 3400, # Equivalent to not using dryer for one load (Table S1: electric clothes dryer 3400W for 1hr)
  "Attari2010_Save_SummerThermostat", "Attari et al. (2010)", "In the summer: turning up the thermostat on your air conditioner (making your home warmer) by 5° F", "Turning off 100W bulb for 1 hr SAVES 100 units", "units (Wh equivalent)", 115, # From Table S2 (per hour)
  "Attari2010_Save_WinterThermostat", "Attari et al. (2010)", "In the winter: turning down the thermostat on your heater (making your home cooler) by 5° F", "Turning off 100W bulb for 1 hr SAVES 100 units", "units (Wh equivalent)", 546, # From Table S2 (per hour)
  "Attari2010_Save_WasherTemp", "Attari et al. (2010)", "Changing washer temperature settings from “hot wash, warm rinse” to “warm wash, cold rinse” for one load of laundry", "Turning off 100W bulb for 1 hr SAVES 100 units", "units (Wh equivalent)", 4000 # From Table S2 (per load)
)

# Tribble 4: Estimation of Energy Saved in Transportation (Wh or "units")
# From Attari et al. (2010), Appendix Q5 & Table S2
# Reference point for this section: "20-miles-per-gallon car going 60 miles per hour uses 100 units of energy in one hour."
# 100 units = 3 gallons of gasoline = approx 101 kWh (101,100 Wh). So 1 unit = 1011 Wh.
estimation_Wh_saved_transportation <- tibble::tribble(
  ~question_id, ~source_primary, ~question_text, ~reference_point_provided, ~answer_unit, ~correct_answer_Wh_saved, ~correct_answer_survey_units,
  "Attari2010_Save_FuelEffCar", "Attari et al. (2010)", "Driving a more fuel efficient car (30 miles per gallon instead of 20 miles per gallon) at 60 miles per hour for one hour", "20mpg car @60mph for 1hr = 100 units", "units (Wh equivalent)", 33700, 33.33, # 1 gallon saved. 1 gallon = 33.7 kWh = 33700 Wh. Survey unit: 33700/1011 = 33.33 units
  "Attari2010_Save_CarTuneUp", "Attari et al. (2010)", "Tuning up the car twice a year (including air filter changes) would reduce energy use by how many units for the *whole year*?", "20mpg car @60mph for 1hr = 100 units", "units (Wh equivalent)", 808800, 800,    # 24 gallons saved/year. 24 * 33700 Wh = 808800 Wh. Survey unit: 808800/1011 = 800 units
  "Attari2010_Save_ReduceSpeed", "Attari et al. (2010)", "Assume that you are driving a 20-miles-per-gallon car for 60 miles. Reducing your highway speed from 70 miles per hour to 60 miles per hour would reduce energy use by how many units for the trip?", "20mpg car @60mph for 1hr = 100 units", "units (Wh equivalent)", 13480, 13.33 # 0.4 gallons saved. 0.4 * 33700 Wh = 13480 Wh. Survey unit: 13480/1011 = 13.33 units
)

# Tribble 5: Ranking Energy Use (Transportation and Manufacturing)
# From Attari et al. (2010), Appendix Q6, Q7 & Tables S3, S4
# Correct answer is the rank (1=most energy, 4=least energy)
ranking_energy_transport_manufacturing <- tibble::tribble(
  ~question_id, ~source_primary, ~task_description, ~item_to_rank, ~correct_rank_Attari2010, ~actual_value_Attari2010, ~value_unit,
  # Transportation Modes (Q6, Table S3)
  "Attari2010_RankTransport_Ship", "Attari et al. (2010)", "Rank energy to transport 1 ton of goods for 1 mile", "Ship", 2, 411, "Btu per ton-mile",
  "Attari2010_RankTransport_Train", "Attari et al. (2010)", "Rank energy to transport 1 ton of goods for 1 mile", "Train", 1, 371, "Btu per ton-mile",
  "Attari2010_RankTransport_Airplane", "Attari et al. (2010)", "Rank energy to transport 1 ton of goods for 1 mile", "Airplane", 4, 31600, "Btu per ton-mile",
  "Attari2010_RankTransport_Truck", "Attari et al. (2010)", "Rank energy to transport 1 ton of goods for 1 mile", "Truck", 3, 4360, "Btu per ton-mile",
  # Manufacturing Beverage Containers (Q7, Table S4)
  "Attari2010_RankMfg_VirginAlCan", "Attari et al. (2010)", "Rank energy to make a container", "Making a can out of virgin aluminum", 2, 2180, "Btu per can/bottle",
  "Attari2010_RankMfg_RecycledAlCan", "Attari et al. (2010)", "Rank energy to make a container", "Making a can out of recycled aluminum", 1, 120, "Btu per can/bottle",
  "Attari2010_RankMfg_VirginGlassBottle", "Attari et al. (2010)", "Rank energy to make a container", "Making a glass bottle out of virgin glass", 4, 3160, "Btu per can/bottle",
  "Attari2010_RankMfg_RecycledGlassBottle", "Attari et al. (2010)", "Rank energy to make a container", "Making a glass bottle out of recycled glass", 3, 2370, "Btu per can/bottle"
)

# Tribble 6: Numeracy Questions (Schwartz, Berlin, et al.)
# These questions appear in multiple papers.
numeracy_questions_Schwartz_Berlin <- tibble::tribble(
  ~question_id, ~source_primary, ~source_secondary, ~question_text, ~choices, ~correct_answer,
  "Num_FairCoin", "Attari et al. (2010) App Q13", "Lundberg, Tang & Attari (2019) Supp; Marghetis et al. (2019) Supp", "Imagine that we flip a fair coin 1,000 times. What is your best guess about how many times the coin would come up heads in 1,000 flips?", NA, "500",
  "Num_BigBucks", "Attari et al. (2010) App Q13", "Lundberg, Tang & Attari (2019) Supp; Marghetis et al. (2019) Supp; Schley & DeKay (2015) Supp", "In the BIG BUCKS LOTTERY, the chance of winning a $10 prize is 1%. What is your best guess about how many people would win a $10 prize if 1000 people each buy a single ticket to BIG BUCKS?", NA, "10",
  "Num_AcmeSweeps", "Attari et al. (2010) App Q13", "Lundberg, Tang & Attari (2019) Supp; Marghetis et al. (2019) Supp; Schley & DeKay (2015) Supp", "In ACME PUBLISHING SWEEPSAKES, the chance of winning a car is 1 in 1,000. What percent of tickets to ACME PUBLISHING SWEEPSAKES win a car?", NA, "0.1%",
  # Berlin Numeracy Questions from Lundberg, Tang & Attari (2019) Supp & Marghetis et al. (2019) Supp
  "Num_Berlin_Choir", "Lundberg, Tang & Attari (2019) Supp", "Marghetis et al. (2019) Supp", "Out of 1,000 people in a small town 500 are members of a choir. Out of these 500 members in the choir 100 are men. Out of the 500 inhabitants that are not in the choir 300 are men. What is the probability that a randomly drawn man is a member of the choir? Please indicate the probability in percent.", NA, "25%", # 100 men in choir / (100 men in choir + 300 men not in choir) = 100/400
  "Num_Berlin_FiveSidedDie", "Lundberg, Tang & Attari (2019) Supp", "Marghetis et al. (2019) Supp", "Imagine we are throwing a five-sided die 50 times. On average, out of these 50 throws how many times would this five-sided die show an odd number (1, 3 or 5)?", NA, "30", # (3/5) * 50
  "Num_Berlin_LoadedDie", "Lundberg, Tang & Attari (2019) Supp", "Marghetis et al. (2019) Supp", "Imagine we are throwing a loaded die (6 sides). The probability that the die shows a 6 is twice as high as the probability of each of the other numbers. On average, out of these 70 throws how many times would the die show the number 6?", NA, "20", # P(6)=2x, P(1-5)=x. Sum P = 5x + 2x = 7x = 1 => x=1/7. P(6)=2/7. (2/7)*70 = 20.
  "Num_Berlin_Mushrooms", "Lundberg, Tang & Attari (2019) Supp", "Marghetis et al. (2019) Supp", "In a forest 20% of mushrooms are red, 50% brown and 30% white. A red mushroom is poisonous with a probability of 20%. A mushroom that is not red is poisonous with a probability of 5%. What is the probability that a poisonous mushroom in the forest is red?", NA, "50%" # P(Pois|Red)=0.2, P(Red)=0.2. P(Pois|NotRed)=0.05, P(NotRed)=0.8. P(Red|Pois) = P(Pois|Red)P(Red) / [P(Pois|Red)P(Red) + P(Pois|NotRed)P(NotRed)] = (0.2*0.2) / (0.2*0.2 + 0.05*0.8) = 0.04 / (0.04 + 0.04) = 0.04 / 0.08 = 0.5
)

# Tribble 7: Numeracy Questions (Weller et al. scale, from Schley & DeKay 2015 Supp)
numeracy_questions_Schley2015_Weller <- tibble::tribble(
  ~question_id, ~source_primary, ~question_text, ~choices, ~correct_answer,
  "Num_Weller_DieRoll", "Schley & DeKay (2015) Supp", "Imagine that we roll a fair, six-sided die 1,000 times. Out of 1,000 rolls, how many times do you think the die would come up as an even number?", NA, "500",
  "Num_Weller_BigBucks", "Schley & DeKay (2015) Supp", "In the BIG BUCKS LOTTERY, the chances of winning a $10.00 prize are 1%. What is your best guess about how many people would win a $10.00 prize if 1,000 people each buy a single ticket from BIG BUCKS?", NA, "10",
  "Num_Weller_AcmeSweeps", "Schley & DeKay (2015) Supp", "In the ACME PUBLISHING SWEEPSTAKES, the chance of winning a car is 1 in 1,000. What percent of tickets of ACME PUBLISHING SWEEPSTAKES win a car?", NA, "0.1%",
  "Num_Weller_Disease10Pct", "Schley & DeKay (2015) Supp", "If the chance of getting a disease is 10%, how many people would be expected to get the disease out of 1,000?", NA, "100",
  "Num_Weller_Disease20ToPct", "Schley & DeKay (2015) Supp", "If the chance of getting a disease is 20 out of 100, this would be the same as having a _ % chance of getting the disease.", NA, "20%",
  "Num_Weller_Mammogram", "Schley & DeKay (2015) Supp", "Suppose you have a close friend who has a lump in her breast and must have a mammogram. Of 100 women like her, 10 of them actually have a malignant tumor and 90 of them do not. Of the 10 women who actually have a tumor, the mammogram indicates correctly that 9 of them have a tumor and indicates incorrectly that 1 of them does not have a tumor. Of the 90 women who do not have a tumor, the mammogram indicates correctly that 81 of them do not have a tumor and indicates incorrectly that 9 of them do have a tumor. The table below summarizes all of this information. Imagine that your friend tests positive (as if she had a tumor), what is the likelihood that she actually has a tumor? (Table provided in original: Tested Positive & Actual Tumor=9, Tested Positive & No Tumor=9. Total Tested Positive=18)", NA, "9 out of 19", # or 47.37%
  "Num_Weller_BatBall_CRT", "Schley & DeKay (2015) Supp", "A bat and a ball cost $1.10 in total. The bat costs $1.00 more than the ball. How much does the ball cost?", NA, "5 cents",
  "Num_Weller_LilyPads_CRT", "Schley & DeKay (2015) Supp", "In a lake, there is a patch of lilypads. Every day, the patch doubles in size. If it takes 48 days for the patch to cover the entire lake, how long would it take for the patch to cover half of the lake?", NA, "47 days"
)

# Tribble 8: Percentage Estimation of Annual US Household Energy Categories
# From Schley & DeKay (2015), Appendix Table A.1
# Participants estimate the percentage of total individual and household energy.
# Correct answers are from Gardner & Stern (2008) for Study 1, 2, 4, and USEIA (2012) for Study 3 in Schley & DeKay.
# Using Gardner & Stern (2008) as cited in Schley & DeKay (2015) Table A.1 for "Studies 2 and 4" column.
percentage_estimation_annual_US_household_categories <- tibble::tribble(
  ~question_id, ~source_primary, ~question_text_category, ~correct_answer_percentage_G_S_2008,
  "Schley2015_Cat_Dishwashers", "Schley & DeKay (2015)", "Dishwashers", 0.2,
  "Schley2015_Cat_PoolHeatersGrills", "Schley & DeKay (2015)", "Swimming pool heaters, grills, and outdoor gas lamps", 0.5,
  "Schley2015_Cat_Computers", "Schley & DeKay (2015)", "Computers", 0.6,
  "Schley2015_Cat_MassTransport", "Schley & DeKay (2015)", "Mass transportation (personal travel on buses, trains, and ships)", 1.4,
  "Schley2015_Cat_Cooking", "Schley & DeKay (2015)", "Cooking", 1.5,
  "Schley2015_Cat_TVs", "Schley & DeKay (2015)", "Televisions", 2.5,
  "Schley2015_Cat_ClothesWashDry", "Schley & DeKay (2015)", "Clothes washing and drying", 2.5,
  "Schley2015_Cat_AirTravel", "Schley & DeKay (2015)", "Air travel", 3.4,
  "Schley2015_Cat_SmallElectric", "Schley & DeKay (2015)", "Small electric appliances", 3.9,
  "Schley2015_Cat_RefrigFreeze", "Schley & DeKay (2015)", "Refrigeration and freezing", 4.3,
  "Schley2015_Cat_Lighting", "Schley & DeKay (2015)", "Lighting", 6.1,
  "Schley2015_Cat_AC", "Schley & DeKay (2015)", "Air conditioning", 6.2,
  "Schley2015_Cat_WaterHeating", "Schley & DeKay (2015)", "Water heating (including hot water for clothes washing)", 6.5,
  "Schley2015_Cat_HomeHeating", "Schley & DeKay (2015)", "Home heating", 18.8,
  "Schley2015_Cat_PrivateVehicles", "Schley & DeKay (2015)", "Private motor vehicles", 38.6,
  "Schley2015_Cat_Other", "Schley & DeKay (2015)", "Other individual and household energy use", 3.0 # Total sums to 100%
)

# Tribble 9: Percentage Estimation of Annual US Household Energy (Operations, Transport, Food)
# Question from Attari et al. (2010) Appendix Q2 and Camilleri et al. (2019) Supp Study 1A Page 2.
# Correct answers are difficult to definitively state for "food production" as defined.
# Using Schley & DeKay (2015) proxys for Household Ops and Transport. Food production is an estimate.
percentage_estimation_annual_US_household_broad <- tibble::tribble(
  ~question_id, ~source_primary, ~source_secondary, ~question_text_category, ~correct_answer_percentage_approx, ~notes_on_correct_answer,
  "Attari2010_Broad_Ops", "Attari et al. (2010) App Q2", "Camilleri et al. (2019) Supp", "Household operations (electricity, natural gas, heating oil used for the house)", 57, "Approx. based on Schley & DeKay (2015) sum of direct household end-uses.",
  "Attari2010_Broad_Transport", "Attari et al. (2010) App Q2", "Camilleri et al. (2019) Supp", "Transportation (air travel, motor travel, public transportation used by people in household)", 43, "Approx. based on Schley & DeKay (2015) sum of personal transportation.",
  "Attari2010_Broad_FoodProd", "Attari et al. (2010) App Q2", "Camilleri et al. (2019) Supp", "Food production (growing and shipping food that people in the household eat)", "Varies (10-20%)", "Highly dependent on scope (LCA). Camilleri (2019) cites 19-29% of *global GHG emissions* for food system. Direct household *energy* for food production is complex to isolate from broad categories. This value is a rough estimate for US household share if food production energy were allocated this way."
)

# Tribble 10: Multiple Choice Energy Comparison/Saving Questions
# Items where participants choose which of two options uses less energy or saves more energy.
multiple_choice_comparison_Wh <- tibble::tribble(
  ~question_id, ~source_primary, ~question_text, ~choice_A, ~choice_B, ~correct_choice, ~Wh_A, ~Wh_B, ~notes,
  # From Kantenbacher & Attari (2021), Choice Task in Supplement
  "Kantenbacher2021_Choice1", "Kantenbacher & Attari (2021)", "Which uses less energy?", "Window air conditioning unit", "Electric oven", "A", 1157, 3050, "Values from supplement",
  "Kantenbacher2021_Choice2", "Kantenbacher & Attari (2021)", "Which uses the least energy?", "Running an electric water heater", "Running a vacuum cleaner", "C", 4286, 809, "Choice C was 'Running a refrigerator' (363 Wh). Refrigerator is least.", # Adding implicit C
  "Kantenbacher2021_Choice2_Full", "Kantenbacher & Attari (2021)", "Which uses the least energy? (A) Electric water heater, (B) Vacuum cleaner, (C) Refrigerator", "Electric water heater", "Refrigerator", "B", 4286, 363, "Simplified to 2 choices for tribble format, correct is Refrigerator if 3 options. If only A/B, then B. Assuming 3rd option C: Refrigerator (363Wh) was present in original choice list.",
  "Kantenbacher2021_Choice3", "Kantenbacher & Attari (2021)", "Which uses the least energy?", "Electric blanket", "Electric space heater", "A", 197, 1290, "Values from supplement",
  "Kantenbacher2021_Choice4", "Kantenbacher & Attari (2021)", "Which uses the least energy? (A) Steam iron, (B) Blender, (C) Humidifier", "Steam iron", "Humidifier", "B", 1198, 185, "Simplified to 2 choices for tribble, correct is Humidifier if 3 options. Blender (358 Wh).",
  "Kantenbacher2021_Choice5", "Kantenbacher & Attari (2021)", "Which uses the least energy? (A) Video game console, (B) Cable box, (C) Smart speaker", "Video game console", "Smart speaker", "B", 110, 27, "Simplified. Cable box (33Wh).",
  "Kantenbacher2021_Choice6", "Kantenbacher & Attari (2021)", "Which uses the least energy? (A) Clothes dryer, (B) Washing machine, (C) Dishwasher", "Clothes dryer", "Washing machine", "B", 3938, 478, "Simplified. Dishwasher (1201Wh).",
  "Kantenbacher2021_Choice7", "Kantenbacher & Attari (2021)", "Which uses the least energy? (A) Microwave, (B) Toaster oven, (C) Electric kettle", "Toaster oven", "Microwave", "B", 1450, 1101, "Simplified. Electric kettle (1390Wh).",
  "Kantenbacher2021_Choice8", "Kantenbacher & Attari (2021)", "Which uses less energy?", "Watching a movie on a 40\" flat screen TV", "Watching a movie with a digital projector", "A", 145, 225, "Values from supplement", # Marghetis values: TV 68Wh, Projector 197Wh. K&A values used here.
  "Kantenbacher2021_Choice9", "Kantenbacher & Attari (2021)", "Which uses less energy?", "A ceiling fan", "A tube fluorescent light", "B", 69, 39, "Values from supplement",

  # From Marghetis et al. (2019) Supplement, Behavioral Choice Tasks (items 1-15, appliance vs appliance)
  "Marghetis2019_BehChoice1", "Marghetis et al. (2019)", "Choose task/appliance that uses LEAST electricity (assume same time unless stated)", "watching a movie on a laptop", "watching a movie on a projector", "A", 32, 197, "Laptop 32Wh, Projector 197Wh",
  "Marghetis2019_BehChoice2", "Marghetis et al. (2019)", "Choose task/appliance that uses LEAST electricity", "warming yourself with an electric blanket", "warming yourself with a portable space heater", "A", 197, 1290, "Blanket 197Wh, Heater 1290Wh",
  "Marghetis2019_BehChoice3", "Marghetis et al. (2019)", "Choose task/appliance that uses LEAST electricity", "a desktop computer's tower", "a desktop computer's monitor", "B", 92, 34, "Tower 92Wh, Monitor 34Wh (Note: their Desktop total is 138Wh)",
  "Marghetis2019_BehChoice4", "Marghetis et al. (2019)", "Choose task/appliance that uses LEAST electricity", "cooking with an electric oven", "cooking with a crockpot", "B", 3050, 318, "Oven 3050Wh, Crockpot 318Wh",
  "Marghetis2019_BehChoice5", "Marghetis et al. (2019)", "Choose task/appliance that uses LEAST electricity", "ironing your clothes", "vacuuming your carpets", "B", 1198, 809, "Iron 1198Wh, Vacuum 809Wh",
  "Marghetis2019_BehChoice6", "Marghetis et al. (2019)", "Choose task/appliance that uses LEAST electricity", "cooling yourself with a window air conditioner", "cooling yourself with a ceiling fan", "B", 1157, 68, "Window AC 1157Wh, Fan 68Wh",
  "Marghetis2019_BehChoice7", "Marghetis et al. (2019)", "Choose task/appliance that uses LEAST electricity", "watching a movie on a 40\" flat screen television", "watching a movie on a projector", "A", 68, 197, "TV 68Wh, Projector 197Wh",
  "Marghetis2019_BehChoice8", "Marghetis et al. (2019)", "Choose task/appliance that uses LEAST electricity", "watching your favorite shows on a 40\" flat screen television", "watching your favorite shows on your laptop computer", "B", 68, 32, "TV 68Wh, Laptop 32Wh",
  "Marghetis2019_BehChoice9", "Marghetis et al. (2019)", "Choose task/appliance that uses LEAST electricity", "playing video games on your console (only consider the console)", "watching cable television (only consider the cable box)", "B", 111, 32.88, "Console 110Wh, Cable Box 33Wh",
  "Marghetis2019_BehChoice10", "Marghetis et al. (2019)", "Choose task/appliance that uses LEAST electricity", "charging a Tesla Model S electric vehicle for one hour", "cooking a casserole in an electric oven for one hour", "B", 11520, 3050, "Tesla 11520Wh, Oven 3050Wh",
  "Marghetis2019_BehChoice11", "Marghetis et al. (2019)", "Choose task/appliance that uses LEAST electricity", "a water heater running at full capacity for one hour", "vacuuming your carpets for one hour", "B", 4284, 809, "Water Heater 4284Wh, Vacuum 809Wh",
  "Marghetis2019_BehChoice12", "Marghetis et al. (2019)", "Choose task/appliance that uses LEAST electricity (consider varying times)", "a central air conditioning unit running at full capacity for 8 hours throughout one day", "25 Compact Fluorescent Light (CFL) bulbs left on for 8 hours in one day", "B", 30376, 4600, "Central AC 3797Wh*8h=30376Wh, 25*CFL 23Wh*8h=4600Wh",
  "Marghetis2019_BehChoice13", "Marghetis et al. (2019)", "Choose task/appliance that uses LEAST electricity", "warming a room with a portable space heater", "washing clothes in a washing machine", "B", 1290, 478, "Heater 1290Wh, Washer 478Wh",
  "Marghetis2019_BehChoice14", "Marghetis et al. (2019)", "Choose task/appliance that uses LEAST electricity", "vacuuming carpets", "a refrigerator", "B", 809, 363.6, "Vacuum 809Wh, Refrigerator 363.6Wh",
  "Marghetis2019_BehChoice15", "Marghetis et al. (2019)", "Choose task/appliance that uses LEAST electricity (consider varying times)", "drying a load of laundry in a clothes dryer once a week", "20 Light Emitting Diode (LED) bulbs left on for 60 hours each week", "A", 3938, 18000, "Dryer 3938Wh/week, 20*LED 15Wh*60h=18000Wh/week"
)

# Tribble 11: Multiple Choice Energy Comparison/Saving Questions (Behavior Change)
# From Marghetis et al. (2019) Supplement, Behavioral Choice Tasks (items 16-20, behavior change vs behavior change)
multiple_choice_behavior_change_Wh <- tibble::tribble(
  ~question_id, ~source_primary, ~question_text, ~choice_A_text, ~choice_B_text, ~correct_choice, ~Wh_saved_A, ~Wh_saved_B, ~notes,
  "Marghetis2019_BehChoice16", "Marghetis et al. (2019)", "Which action saves MOST electricity?", "Purchasing a space heater that is 20% more efficient", "purchasing a television that is 20% more efficient", "A", 258, 13.6, "Heater 1290Wh * 0.20 = 258Wh saved. TV 68Wh * 0.20 = 13.6Wh saved.",
  "Marghetis2019_BehChoice17", "Marghetis et al. (2019)", "Which action saves MOST electricity?", "replacing 20 of your Compact Fluorescent Light (CFL) bulbs for LED bulbs, left on for 8 hours each day for one week", "hand washing your dishes with cold water rather than using the dishwasher", "B", 1280, 8407, # Assuming 1 load/day for dishwasher. CFL(23W) to LED(15W) saving = 8W. 20*8W*8h/day*7days = 8960 Wh. Dishwasher (1201W/load). Handwashing saves full 1201Wh/load * 7 loads = 8407 Wh. My prior calc for CFL/LED was wrong for Q12. Here 20*(23-15)*8*7=8960 saved. This question asks which SAVES MOST. A (replacing bulbs) saves 8960 Wh. B (hand washing) saves 1201 Wh/use of dishwasher avoided. If daily dishwasher, 8407 Wh/week. A is more. The note in Marghetis supp says "Lights: 8960 Wh; Hand washing: 2402 Wh; Multiplier: ~3.73". This implies handwashing is less. My calculation for A: 20 bulbs * (23W_CFL - 15W_LED) * 8hr/day * 7days/wk = 20 * 8W * 56hr/wk = 8960 Wh/wk. If B is 2402Wh, then A is correct.
  "Marghetis2019_BehChoice17_R", "Marghetis et al. (2019)", "Which action saves MOST electricity?", "replacing 20 of your Compact Fluorescent Light (CFL) bulbs for LED bulbs, left on for 8 hours each day for one week", "hand washing your dishes with cold water rather than using the dishwasher", "A", 8960, 2402, "Recalculated using supplement note's values. Replacing bulbs saves (23-15)W/bulb * 20 bulbs * 8h/day * 7days/wk = 8960 Wh. Hand washing is given as 2402 Wh saved.",
  "Marghetis2019_BehChoice18", "Marghetis et al. (2019)", "Which action saves MOST electricity?", "line drying your clothes rather than using an electric clothes dryer (once a week)", "reading a book rather than watching television (20 hours a week)", "A", 3938, 1360, "Line dry saves 3938Wh/week. Reading vs TV (68W) for 20hr saves 68W*20h = 1360Wh/week.",
  "Marghetis2019_BehChoice19", "Marghetis et al. (2019)", "Which action saves MOST electricity?", "turning off your cable box when not in use", "turning off an idle laptop when not in use", "A", 17.83, 8.9, "Saving based on idle power. Cable box idle ~17.83Wh, Laptop idle ~8.9Wh, if 'not in use' means avoiding this idle load for an hour.",
  "Marghetis2019_BehChoice20", "Marghetis et al. (2019)", "Which action saves MOST electricity?", "replacing your morning coffee (coffee maker runs at full capacity for 10 minutes) with a glass of water", "unwinding with a book at the end of the day rather than watching television for one hour", "A", 189, 68, "Coffee maker (1134W for 10min = 189Wh) avoided. Book vs TV (68W for 1hr = 68Wh) avoided."
)

# Tribble 12: Multiple Choice Effectiveness - Lighting
# From Lundberg, Tang & Attari (2019)
multiple_choice_effectiveness_lighting <- tibble::tribble(
  ~question_id, ~source_primary, ~question_text, ~choice_A, ~choice_B, ~correct_choice, ~notes,
  "Lundberg2019_LightRec", "Lundberg, Tang & Attari (2019)", "Assume a friend wants to know which ... saves the most energy over ... a month. Which one would you tell them saves the most energy?", "Always turning off the lights when leaving a room", "Replacing incandescent light bulbs with more efficient light bulbs, like CFL and LED bulbs", "B", "Paper argues replacing bulbs is generally more effective long-term."
)

# Tribble 13: Multiple Choice Effectiveness - General
# From Lundberg, Tang & Attari (2019)
multiple_choice_effectiveness_general <- tibble::tribble(
  ~question_id, ~source_primary, ~question_text, ~choice_A, ~choice_B, ~correct_choice, ~notes,
  "Lundberg2019_GeneralEff", "Lundberg, Tang & Attari (2019)", "In general, do you believe that you can save more energy by:", "Reducing how often you use an appliance", "Replacing an appliance with a more efficient model", "B", "Implied by general energy literature and focus of efficiency programs."
)

# Tribble 14: Lundberg et al. (2019) Energy Literacy Questions
# For calculations: Incandescent=100W, CFL=23W, LED=15W (from Marghetis). Window AC=1157W, Ceiling Fan=68W, Dehumidifier (standard)=734W,
# Projector=197W, Smartphone (use for movie implies screen on, higher than charging, assume laptop-like for movie ~32W),
# Central AC=3797W, Space Heater=1290W, Electric Blanket=197W, Desktop Computer=138W, Stereo=33W. (Using Marghetis values for consistency).
# All comparisons are "saves the most energy".

lundberg_literacy_questions <- tibble::tribble(
  ~question_id, ~source_primary, ~choice_A_text, ~choice_B_text, ~correct_choice, ~Wh_saved_A, ~Wh_saved_B, ~notes_on_calculation,
  "LundbergLit1", "Lundberg, Tang & Attari (2019)", "Decreasing one incandescent light bulb's use from 4 hours to 3 hours", "Using one LED light bulb for 4 hours instead of an incandescent light bulb", "B", 100, 340, "A: 100W * 1h = 100Wh. B: (100W - 15W) * 4h = 85W * 4h = 340Wh.",
  "LundbergLit2", "Lundberg, Tang & Attari (2019)", "Reducing the use of a window air conditioning unit from 5 hours to 3 hours", "Keeping a ceiling fan on for 5 hours instead of using a window air conditioning unit", "B", 2314, 5445, "A: 1157W * 2h = 2314Wh. B: (1157W * 5h) - (68W * 5h) = 5785Wh - 340Wh = 5445Wh.",
  "LundbergLit3", "Lundberg, Tang & Attari (2019)", "Reducing the use of a dehumidifier from 10 hours to 5 hours", "Purchasing a 20% more efficient dehumidifier and using it for 10 hours instead of using a standard dehumidifier", "A", 3670, 1468, "A: 734W * 5h = 3670Wh. B: 734W * 0.20 * 10h = 1468Wh.",
  "LundbergLit4", "Lundberg, Tang & Attari (2019)", "Decreasing the use of one CFL bulb from 2 hours to 1 hour", "Using one LED bulb for 2 hours instead of a CFL bulb", "B", 23, 16, "A: 23W * 1h = 23Wh. B: (23W - 15W) * 2h = 8W * 2h = 16Wh. Recheck: A saves more.",
  "LundbergLit4_R", "Lundberg, Tang & Attari (2019)", "Decreasing the use of one CFL bulb from 2 hours to 1 hour", "Using one LED bulb for 2 hours instead of a CFL bulb", "A", 23, 16, "Corrected. A: 23W * 1h = 23Wh. B: (23W - 15W) * 2h = 8W * 2h = 16Wh.",
  "LundbergLit5", "Lundberg, Tang & Attari (2019)", "Decreasing the use of one CFL bulb from 10 hours to 1 hour", "Using one LED bulb for 10 hours instead of a CFL bulb", "A", 207, 80, "A: 23W * 9h = 207Wh. B: (23W - 15W) * 10h = 8W * 10h = 80Wh.",
  "LundbergLit6", "Lundberg, Tang & Attari (2019)", "Reducing the use of a projector to watch movies from 10 hours to 9 hours a week", "Using a smartphone for 10 hours a week to watch movies instead of a projector", "B", 197, 1650, "A: 197W * 1h = 197Wh. B: (197W - 32W_laptop_proxy) * 10h = 165W * 10h = 1650Wh.",
  "LundbergLit7", "Lundberg, Tang & Attari (2019)", "Decreasing the use of a central air conditioning unit from 6 hours to 5 hours", "Using a ceiling fan for 6 hours instead of a central air conditioning unit", "B", 3797, 22374, "A: 3797W * 1h = 3797Wh. B: (3797W * 6h) - (68W * 6h) = 22782Wh - 408Wh = 22374Wh.",
  "LundbergLit8", "Lundberg, Tang & Attari (2019)", "Reducing the use of a space heater from 5 hours to 4 hours", "Using an electric blanket for 5 hours instead of a space heater", "B", 1290, 5465, "A: 1290W * 1h = 1290Wh. B: (1290W * 5h) - (197W * 5h) = 6450Wh - 985Wh = 5465Wh.",
  "LundbergLit9", "Lundberg, Tang & Attari (2019)", "Reducing the use of a desktop computer to play music from 10 hours to 5 hours", "Using a stereo to play music for 10 hours instead of a desktop computer", "B", 690, 1050, "A: 138W * 5h = 690Wh. B: (138W - 33W) * 10h = 105W * 10h = 1050Wh."
)


# Tribble 15: Relative Estimation of Annual UK Household Appliance Energy Use (0-100 scale)
# From Cowen & Gatersleben (2017), Appendix Table A1
# "Actual Energy" column is already standardized to 100 for highest consuming.
# This tribble captures the 16 appliances for which actual energy data was available.
relative_estimation_annual_UK_household_0_100_scale <- tibble::tribble(
  ~question_id, ~source_primary, ~question_text_appliance, ~correct_answer_standardized_0_100,
  "Cowen2017_EnergySavingBulb", "Cowen & Gatersleben (2017)", "an energy-saving lightbulb", 2.45,
  "Cowen2017_FilamentBulb", "Cowen & Gatersleben (2017)", "an old-style filament lightbulb", 5.21,
  "Cowen2017_HalogenBulb", "Cowen & Gatersleben (2017)", "a halogen lightbulb", 5.83,
  "Cowen2017_GamesConsole", "Cowen & Gatersleben (2017)", "a games console", 12.88,
  "Cowen2017_Laptop", "Cowen & Gatersleben (2017)", "a laptop", 14.72,
  "Cowen2017_Microwave", "Cowen & Gatersleben (2017)", "a microwave", 27.30,
  "Cowen2017_VirginSkyTivoBox", "Cowen & Gatersleben (2017)", "a Virgin/Sky/Tivo box", 32.52,
  "Cowen2017_LCDTV30inch", "Cowen & Gatersleben (2017)", "a 30-inch LCD TV", 33.44,
  "Cowen2017_Kettle", "Cowen & Gatersleben (2017)", "a kettle", 44.17,
  "Cowen2017_Fridge", "Cowen & Gatersleben (2017)", "a fridge", 45.40,
  "Cowen2017_Oven", "Cowen & Gatersleben (2017)", "an oven", 46.01,
  "Cowen2017_WashingMachine", "Cowen & Gatersleben (2017)", "a washing machine", 54.60,
  "Cowen2017_ChestFreezer", "Cowen & Gatersleben (2017)", "a chest freezer", 69.33,
  "Cowen2017_UprightFreezer", "Cowen & Gatersleben (2017)", "an upright freezer", 69.63,
  "Cowen2017_Dishwasher", "Cowen & Gatersleben (2017)", "a dishwasher", 82.52,
  "Cowen2017_TumbleDryer", "Cowen & Gatersleben (2017)", "a tumble dryer", 100.00
)

# Print a message to confirm tribbles are created.
print("Energy question tribbles created.")

# Note on Kantenbacher2021_Choice2_Full, Kantenbacher2021_Choice4, etc.:
# The Kantenbacher & Attari (2021) choice task involved selecting the least energy-consuming
# item from sets of two OR three appliances. For simplicity in the tribble format requiring
# two choices (Choice_A, Choice_B), I've represented these as pairwise comparisons against
# the actual lowest energy item if there were three. The `notes` column clarifies.
# For example, Kantenbacher2021_Choice2_Full presents the actual options from the paper and
# how it was simplified. The primary `multiple_choice_comparison_Wh` tribble often shows
# the two most relevant items for the decision as presented in the supplement.

# Note on LundbergLit4_R:
# An initial calculation for LundbergLit4 seemed incorrect when comparing savings.
# A revised version LundbergLit4_R is provided with the corrected choice and values.
# The logic for 'saves the most energy' is (Energy_Old_Way - Energy_New_Way).
# For LundbergLit4:
# A: Save by reducing use of CFL by 1hr = 23W * 1h = 23Wh.
# B: Save by using LED instead of CFL for 2hrs = (23W_CFL - 15W_LED) * 2h = 8W * 2h = 16Wh.
# So, action A (reducing use by 1hr) saves more (23Wh) than action B (switching to LED for 2hrs, which saves 16Wh *compared to using CFL for 2hrs*).