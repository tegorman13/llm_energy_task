################################################################################
## 1.  Packages
################################################################################
library(rvest)      # HTML parsing
library(dplyr)      # data wrangling
library(stringr)    # regex helpers
library(purrr)      # functional mapping
library(tibble)     # tibbles

################################################################################
## 2.  Crawl the EnergyUseCalculator index page
################################################################################
index_url  <- "https://energyusecalculator.com/calculate_electrical_usage.htm"
base_url   <- "https://energyusecalculator.com"

links <- read_html(index_url) |>
  html_elements("a") |>
  html_attr("href") |>
  keep(~ str_detect(., "^electricity_")) |>
  unique()

################################################################################
## 3.  Parse each appliance page for its “typical” wattage
################################################################################
get_watts <- function(rel_link) {
  page  <- read_html(url_absolute(rel_link, base_url))
  name  <- page |> html_element("h1") |> html_text(trim = TRUE) |>
             str_remove("^Electricity usage of (an? )?") |>
             str_replace(" -.*", "")                          # tidy up variants
  text  <- page |> html_text2()
  watt  <- str_extract(text, "\\b\\d{2,5}\\s*watts?") |>
           str_extract("\\d{2,5}") |> as.numeric() |> first()
  tibble(appliance = name, typical_watts = watt)
}

appliance_energy <- map_dfr(links, safely(get_watts)) |>
  transmute(
    appliance     = result$appliance,
    typical_watts = result$typical_watts
  ) |>
  filter(!is.na(typical_watts)) |>
  arrange(desc(typical_watts))

################################################################################
## 4.  Inspect & save
################################################################################
print(nrow(appliance_energy))         # how many pairs were captured
head(appliance_energy, 20) 
print(appliance_energy, n=32)              # preview the first 20 rows

## optional: save for later use
# write.csv(appliance_energy, "energy_ground_truth.csv", row.names = FALSE)



# R Tribble of Ground Truth Appliance Energy Use and Savings
# Data extracted from provided research papers (Attari et al., 2010; Camilleri et al., 2018; Kantenbacher & Attari, 2021; Marghetis et al., 2019)
# All Energy_Wh values are in Watt-hours.
# For "Appliance_Use", Energy_Wh is consumption per hour of typical operation, unless specified.
# For "Saving_Action", Energy_Wh is the saving achieved by the action.

energy_data <- tibble::tribble(
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
  "Charging a Tesla Model-S electric car",                                             "Appliance_Use",    11520,

  # --- Energy Saving Actions (Wh saved) ---
  "Setting thermostat (AC) 5F higher for 1hr (summer)",                                "Saving_Action",    115,
  "Setting thermostat (heater) 5F lower for 1hr (winter)",                             "Saving_Action",    546,
  "Changing washer temp (hot to warm/cold) for 1 load",                                "Saving_Action",    4000,
  "Driving more fuel efficient car (30 vs 20mpg) for 1hr at 60mph",                    "Saving_Action",    33700,
  "Tuning up car twice per year",                                                        "Saving_Action",    808800,
  "Cutting highway speed (70 to 60mph) for 60 miles (20mpg car)",                      "Saving_Action",    13480,
  "Line-drying clothes instead of electric dryer (1 load, Attari 2010)",               "Saving_Action",    3400,
  "Choosing electric blanket (197Wh) over space heater (1290Wh) for 1hr",              "Saving_Action",    1093,
  "Reading book instead of watching TV (68Wh/hr) for 20hr",                            "Saving_Action",    1360,
  "Choosing window AC (1157Wh) over central AC (3797Wh) for 1hr",                      "Saving_Action",    2640,
  "Using laptop (32Wh/hr) instead of desktop (138Wh/hr) for 10hr",                     "Saving_Action",    1060,
  "Watching movie on laptop (138Wh total) instead of projector (197Wh total)",         "Saving_Action",    59,
  "Using microwave (275Wh for 15min) instead of oven (763Wh for 15min) for cooking",   "Saving_Action",    487,
  "Using microwave (1101Wh) instead of kettle (1390Wh) to heat water (same task/time)","Saving_Action",    289,
  "Replacing 1 incandescent (100W) with LED (15W), used 5hr/day",                      "Saving_Action",    425,
  "Cooking with crockpot (1272Wh for 4hr) instead of oven (3050Wh for 1hr) for a meal","Saving_Action",    1778,
  "Using humidifier (555Wh for 3hr) instead of dehumidifier (2202Wh for 3hr)",         "Saving_Action",    1647,
  "Using coffee maker (1134Wh) instead of kettle (1390Wh) for coffee (same task/time)","Saving_Action",    256,
  "Running refrigerator (8736Wh for 24hr) instead of freezer (9216Wh for 24hr)",        "Saving_Action",    480,
  "Using ceiling fan (552Wh for 8hr) instead of window AC (1157Wh for 1hr)",           "Saving_Action",    605,
  "Running clothes dryer (3938Wh for 1hr) instead of charging Tesla (11520Wh for 1hr)","Saving_Action",    7582, # i.e. Tesla uses 7582Wh MORE than dryer
  "Using clothes washer (478Wh for 1 cycle) instead of ironing (599Wh for 30min)",     "Saving_Action",    121,
  "Listening to stereo (264Wh for 8hr) instead of vacuuming (405Wh for 30min)",        "Saving_Action",    141
)











# Define the Attari energy estimation task
devices <- c(
  "A compact fluorescent light bulb that is as bright as a 100-Watt incandescent light bulb",
  "A desktop computer", 
  "A laptop computer",
  "A stereo",
  "An electric clothes dryer",
  "A portable heater",
  "A room air-conditioner",
  "A central air conditioner",
  "A dish washer"
)

# Actual energy values (in Wh) based on literature
actual_values <- c(25, 120, 40, 60, 3400, 1500, 1000, 3500, 1800)



attari_energy_task <- tibble::tribble(
  ~device, ~actual_value,
  "A compact fluorescent light bulb that is as bright as a 100-Watt incandescent light bulb", 25,
  "A desktop computer", 120,
  "A laptop computer", 40,
  "A stereo", 60,
  "An electric clothes dryer", 3400,
  "A portable heater", 1500,
  "A room air-conditioner", 1000,
  "A central air conditioner", 3500,
  "A dish washer", 1800
)