
# Load necessary libraries
library(dplyr)
library(stringr)
library(tibble)

# Data from the Canvas (Research Papers)
energy_data_research <- tibble::tribble(
  ~Item_Name,                                                                          ~Item_Type,         ~Energy_Wh,
  # --- Appliance Use (Wh per hour of operation, unless noted) ---
  # Prioritizing Kantenbacher & Attari (2021) and Marghetis et al. (2019) for base appliance list
  "LED light bulb (15W)",                                                              "Appliance_Use",    15,
  "CFL bulb (23W)", # K&A value, Marghetis also 23W, Attari 2010 27W, Camilleri 24W
                                                                                       "Appliance_Use",    23,
  "Incandescent light bulb (100W)",                                                    "Appliance_Use",    100, # Reference
  "Charging a smartphone", # Marghetis value, K&A had 3Wh
                                                                                       "Appliance_Use",    3.42,
  "Alarm clock",                                                                        "Appliance_Use",    2.8,
  "Modem",                                                                             "Appliance_Use",    12.1,
  "DVD player", # Marghetis value, K&A had 9Wh
                                                                                       "Appliance_Use",    9.13,
  "Smart speaker (e.g., Amazon Echo, Google Home)",                                    "Appliance_Use",    27,
  "Laptop computer", # K&A and Marghetis value, Attari 2010 48W, Camilleri 41W
                                                                                       "Appliance_Use",    32,
  "Television Cable box",                                                              "Appliance_Use",    33,
  "Stereo (Marghetis 2019)", # Marghetis value
                                                                                       "Appliance_Use",    33,
  "Stereo (Attari 2010)", # Attari 2010 value, significantly different
                                                                                       "Appliance_Use",    128,
  "Ceiling fan", # Marghetis value, K&A had 69Wh
                                                                                       "Appliance_Use",    68,
  "40\" flat screen television",                                                        "Appliance_Use",    68,
  "Television (Camilleri 2018 general)", # Camilleri value, likely different type/size
                                                                                       "Appliance_Use",    242,
  "Video game console (e.g., Wii, Xbox, Playstation)",                                 "Appliance_Use",    110,
  "Desktop computer", # K&A and Marghetis value, Attari 2010 140W, Camilleri 146W
                                                                                       "Appliance_Use",    138,
  "Humidifier",                                                                         "Appliance_Use",    185,
  "Projector",                                                                          "Appliance_Use",    197,
  "Electric blanket",                                                                  "Appliance_Use",    197,
  "Freezer (Camilleri 2018)",                                                          "Appliance_Use",    240,
  "Refrigerator (K&A 2021 estimate)", # K&A estimation task value
                                                                                       "Appliance_Use",    280,
  "Refrigerator (Camilleri 2018)",                                                     "Appliance_Use",    291,
  "Refrigerator (Marghetis 2019 / K&A 2021 choice task)", # Marghetis & K&A choice value very close
                                                                                       "Appliance_Use",    364, # Using Marghetis 364, K&A choice was 363
  "Slow cooker (crockpot)",                                                            "Appliance_Use",    318,
  "Blender",                                                                            "Appliance_Use",    358,
  "Storage freezer (Marghetis 2019)",                                                  "Appliance_Use",    384,
  "Washing machine",                                                                    "Appliance_Use",    478,
  "Coffee maker (Camilleri 2018)",                                                      "Appliance_Use",    700,
  "Dehumidifier",                                                                       "Appliance_Use",    734,
  "Vacuum cleaner",                                                                     "Appliance_Use",    809,
  "Portable heater (Attari 2010)",                                                     "Appliance_Use",    925,
  "Electric treadmill",                                                                 "Appliance_Use",    967,
  "Room air conditioner (Attari 2010)",                                                "Appliance_Use",    1000,
  "Toaster oven",                                                                       "Appliance_Use",    1017,
  "Microwave oven",                                                                     "Appliance_Use",    1101,
  "Coffee maker (Marghetis 2019)",                                                     "Appliance_Use",    1134,
  "Window air conditioner", # K&A and Marghetis value, Camilleri 1016Wh
                                                                                       "Appliance_Use",    1157,
  "Dishwasher (K&A 2021 / Marghetis 2019)", # K&A and Marghetis value
                                                                                       "Appliance_Use",    1201,
  "Dishwasher (Attari 2010)",                                                          "Appliance_Use",    1800,
  "Toaster",                                                                            "Appliance_Use",    1213,
  "Steam iron / Iron",                                                                 "Appliance_Use",    1198,
  "Portable electric heater / Space heater", # K&A and Marghetis value
                                                                                       "Appliance_Use",    1290,
  "Electric kettle",                                                                   "Appliance_Use",    1390,
  "Electric oven",                                                                      "Appliance_Use",    3050,
  "Central air conditioner (Attari 2010)",                                             "Appliance_Use",    3500,
  "Central air conditioner (Marghetis 2019)", # Marghetis value, Camilleri 3285Wh
                                                                                       "Appliance_Use",    3797,
  "Clothes dryer (electric)", # K&A and Marghetis value, Attari 2010 3400Wh, Camilleri 3615Wh
                                                                                       "Appliance_Use",    3938,
  "Electric water heater", # K&A choice task 4286Wh, Marghetis 4284Wh
                                                                                       "Appliance_Use",    4284,
  "Charging a Tesla Model-S electric car",                                             "Appliance_Use",    11520
)

# Data from EnergyUseCalculator.com (EUC)
appliance_energy_euc <- tibble::tribble(
  ~appliance,                       ~typical_watts,
  "Central Air Conditioner",        5000,
  "Oven",                           5000,
  "Water Heater",                   4000,
  "Vacuum",                         3000, # Likely a typo on the site, or a very powerful industrial vacuum. Typical home vacuums are much lower.
  "Dishwasher",                     2400,
  "Iron",                           2000,
  "Electricity Usage Monitor",      1875, # This is an outlier, likely the max load it can measure, not its own consumption.
  "Clothes Dryer",                  1800,
  "Hair Dryer",                     1800,
  "Space Heater",                   1500,
  "Air Conditioner",                1500, # Generic AC, could be room/window
  "Toaster",                        1500,
  "Clothes Washer",                 1300,
  "Air Fryer",                      1200,
  "Stove Top",                      1000, # Assumed electric
  "Microwave",                      800,
  "Instant Pot (multi-cooker)",     700,
  "Coffee Maker",                   600,
  "Slow Cooker",                    400,
  "Refrigerator",                   400,
  "Desktop Computer",               300,
  "Freezer",                        100,
  "Ceiling Fan",                    100,
  "Game Console",                   90,
  "LED Light Bulb",                 60, # This is high for a single LED, maybe multiple or a very bright one.
  "Incandescent Light Bulb",        60, # Specific wattage, not the 100W reference.
  "Printer",                        50,
  "DVR",                            26,
  "Laptop, Notebook or Netbook",    20,
  "Wi-Fi Router",                   20,
  "CFL Light Bulb",                 15
)

# Function to normalize appliance names for matching
normalize_name <- function(name) {
  name <- tolower(name)
  name <- str_remove_all(name, "\\(.*?\\)|\\d+\\\"") # Remove content in parentheses and inch marks
  name <- str_replace_all(name, "electric ", "")
  name <- str_replace_all(name, "portable ", "")
  name <- str_replace_all(name, "light bulb", "bulb")
  name <- str_replace_all(name, "air conditioner", "ac")
  name <- str_replace_all(name, "clothes washer", "washing machine")
  name <- str_replace_all(name, "game console", "video game console")
  name <- str_replace_all(name, "wi-fi router", "modem") # Approximate match
  name <- str_replace_all(name, "oven", "electric oven") # Assuming EUC 'Oven' is electric
  name <- str_replace_all(name, "stove top", "electric stove top") # Assuming EUC 'Stove Top' is electric
  name <- str_trim(name)
  return(name)
}

research_norm <- energy_data_research %>%
  filter(Item_Type == "Appliance_Use") %>%
  mutate(Normalized_Name = sapply(Item_Name, normalize_name),
         Source = "Research_Papers") %>%
  select(Normalized_Name, Item_Name_Original_Research = Item_Name, Energy_Wh_Research = Energy_Wh, Source)

euc_norm <- appliance_energy_euc %>%
  mutate(Normalized_Name = sapply(appliance, normalize_name),
         Source = "EnergyUseCalculator") %>%
  select(Normalized_Name, Item_Name_Original_EUC = appliance, Energy_Wh_EUC = typical_watts, Source)

# Join the datasets by normalized name
# Using a full_join to see all items and where they match or don't
comparison_data <- full_join(research_norm, euc_norm, by = "Normalized_Name", suffix = c("_Res", "_EUC")) %>%
  select(Normalized_Name, Item_Name_Original_Research, Energy_Wh_Research, Item_Name_Original_EUC, Energy_Wh_EUC) %>%
  arrange(Normalized_Name)

# For a cleaner table, let's try an inner_join to see only direct matches,
# then anti_joins to see what didn't match.
matched_data <- inner_join(research_norm, euc_norm, by = "Normalized_Name", suffix = c("_Res", "_EUC")) %>%
  select(Normalized_Name, 
         Research_Item = Item_Name_Original_Research, Research_Wh = Energy_Wh_Research,
         EUC_Item = Item_Name_Original_EUC, EUC_Wh = Energy_Wh_EUC) %>%
  mutate(Difference_Wh = Research_Wh - EUC_Wh,
         Percent_Difference = ifelse(Research_Wh > 0, (Difference_Wh / Research_Wh) * 100, NA)) %>%
  arrange(Normalized_Name)

research_unmatched <- anti_join(research_norm, euc_norm, by = "Normalized_Name")
euc_unmatched <- anti_join(euc_norm, research_norm, by = "Normalized_Name")


# Display the matched data table (ensure knitr is available if rendering this in RMarkdown)
# For direct console output:
print("Matched Appliances:")
print(knitr::kable(matched_data, format = "pipe", digits = 2, caption = "Comparison of Matched Appliance Energy Estimates (Wh)"))

print("Research Items Not Matched in EUC:")
print(knitr::kable(research_unmatched %>% select(Item_Name_Original_Research, Energy_Wh_Research), format="pipe"))
