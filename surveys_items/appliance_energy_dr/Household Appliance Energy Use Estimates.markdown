# Comprehensive Energy Use Estimates for Common Household Appliances in the United States

This document provides a meticulously sourced list of average annual energy use estimates for common household appliances in the U.S., intended as a ground truth dataset for researchers in energy behavior, particularly for evaluating AI models’ energy-related knowledge. The data focuses on electric appliances, using kilowatt-hours per year (kWh/year) as the primary unit to align with studies like Attari et al. (2010), which emphasize energy over time. Where applicable, notes on gas-powered appliances are included, but electricity is prioritized due to its dominance in appliance energy consumption data.

## Methodology
The estimates are primarily drawn from the U.S. Energy Information Administration’s Residential Energy Consumption Survey (RECS) for 2015 and 2020, which provide national averages based on household surveys. For appliances not covered in RECS or requiring usage-based estimates (e.g., toasters, hair dryers), data is sourced from utility charts, such as Silicon Valley Power’s Appliance Energy Use Chart, with calculations based on typical usage patterns. Where older data (e.g., 2001 RECS for water heaters) is used, adjustments account for efficiency improvements. All sources are verifiable, and variability due to appliance model, efficiency, and usage is noted.

## Energy Use Estimates
The following table lists common household appliances, their estimated annual energy consumption, and the sources used. The estimates reflect average U.S. household usage, acknowledging that actual consumption may vary.

| **Appliance**                | **Average Annual Energy Use (kWh/year)** | **Source**                                                                 |
|------------------------------|-----------------------------------------|---------------------------------------------------------------------------|
| Refrigerator                 | 685                                     | 2015 RECS ([EIA RECS 2015](https://www.eia.gov/consumption/residential/data/2015/)) |
| Freezer                      | 440                                     | 2015 RECS ([EIA RECS 2015](https://www.eia.gov/consumption/residential/data/2015/)) |
| Washing Machine              | 100                                     | 2015 RECS ([EIA RECS 2015](https://www.eia.gov/consumption/residential/data/2015/)) |
| Clothes Dryer                | 590                                     | 2015 RECS ([EIA RECS 2015](https://www.eia.gov/consumption/residential/data/2015/)) |
| Dishwasher                   | 215                                     | 2015 RECS ([EIA RECS 2015](https://www.eia.gov/consumption/residential/data/2015/)) |
| Oven/Range (electric)        | 305                                     | 2015 RECS ([EIA RECS 2015](https://www.eia.gov/consumption/residential/data/2015/)) |
| Microwave                    | 130                                     | 2015 RECS ([EIA RECS 2015](https://www.eia.gov/consumption/residential/data/2015/)) |
| Television                   | 235                                     | 2015 RECS ([EIA RECS 2015](https://www.eia.gov/consumption/residential/data/2015/)) |
| Computer                     | 200                                     | 2015 RECS ([EIA RECS 2015](https://www.eia.gov/consumption/residential/data/2015/)) |
| Central Air Conditioner       | 1,400                                   | 2020 RECS ([EIA RECS 2020](https://www.eia.gov/consumption/residential/data/2020/)) |
| Electric Water Heater        | 2,500                                   | Adjusted from 2001 RECS ([EIA RECS 2001](https://www.eia.gov/consumption/residential/data/2001/)) |
| Lighting                     | 900                                     | 2015 RECS ([EIA RECS 2015](https://www.eia.gov/consumption/residential/data/2015/)) |
| Toaster                      | 4                                       | Estimated, Silicon Valley Power ([Silicon Valley Power](https://www.siliconvalleypower.com/residents/save-energy/appliance-energy-use-chart)) |
| Coffee Maker                 | 44                                      | Estimated, Silicon Valley Power ([Silicon Valley Power](https://www.siliconvalleypower.com/residents/save-energy/appliance-energy-use-chart)) |
| Vacuum Cleaner               | 39                                      | Estimated, Silicon Valley Power ([Silicon Valley Power](https://www.siliconvalleypower.com/residents/save-energy/appliance-energy-use-chart)) |
| Hair Dryer                   | 137                                     | Estimated, Silicon Valley Power ([Silicon Valley Power](https://www.siliconvalleypower.com/residents/save-energy/appliance-energy-use-chart)) |

### Notes on Specific Appliances
- **Refrigerator**: The 685 kWh/year estimate is an average across various sizes and efficiencies. Older models (pre-2000) may use up to 1,000 kWh/year, while ENERGY STAR models can use as little as 400 kWh/year.
- **Central Air Conditioner**: The 1,400 kWh/year estimate varies significantly by climate, with higher consumption in warmer regions like the South.
- **Electric Water Heater**: The 2,500 kWh/year estimate is adjusted from 2001 RECS (2,552 kWh/year) to account for efficiency improvements. Gas water heaters, common in many households, use approximately 250 therms/year, equivalent to about 7,325 kWh in energy content.
- **Lighting**: The 900 kWh/year estimate reflects a mix of incandescent, CFL, and LED bulbs. Widespread LED adoption since 2015 likely reduces this figure in newer data.
- **Small Appliances**: Estimates for toasters, coffee makers, vacuum cleaners, and hair dryers assume typical usage (e.g., daily coffee brewing, weekly vacuuming). Actual use varies by household.

## Contextual Considerations
- **Efficiency Trends**: Appliance energy use has decreased over time due to standards like the National Appliance Energy Conservation Act of 1987 and ENERGY STAR certifications. For example, refrigerators used about 1,462 kWh/year in 2001 but only 685 kWh/year in 2015, reflecting technological advancements.
- **Regional Variations**: Energy use for appliances like air conditioners and heaters varies by region. Households in the South use more electricity for cooling, while those in the Northeast and Midwest consume more for heating.
- **Usage Patterns**: The estimates assume average household usage. For instance, a dishwasher’s 215 kWh/year assumes regular use, but infrequent use reduces consumption.
- **Gas vs. Electric**: Some appliances (e.g., ovens, water heaters) may use natural gas. Where gas is used, energy consumption is typically reported in therms, but for consistency, this list focuses on electric appliances unless noted.

## Comparison to Attari et al. (2010)
The study by Attari et al. (2010) ([Public Perceptions](https://www.pnas.org/doi/10.1073/pnas.1001509107)) examined public perceptions of energy consumption across household, transportation, and recycling activities. While the specific appliances studied are not fully detailed here, they likely included major appliances like refrigerators and dryers, using kWh/year or similar units. This dataset aligns with their approach by providing energy use in kWh/year, facilitating comparisons of perceived versus actual consumption.

## Limitations
- **Data Age**: Some estimates (e.g., water heaters) rely on 2001 RECS data, adjusted for efficiency improvements, as 2020 RECS lacks detailed appliance-level data.
- **Variability**: Actual energy use depends on appliance model, household size, and usage habits. For example, a large family may use a washing machine more frequently, increasing its annual kWh.
- **Gas Appliances**: The list focuses on electric appliances, but gas-powered ovens and water heaters are common. Future datasets could include therms or Btu for gas appliances.
- **Small Appliances**: Estimates for toasters and similar devices are based on assumed usage, which may not reflect all households.

## Recommendations for Use
This dataset is suitable for researchers evaluating AI models’ understanding of household energy consumption. To enhance accuracy:
- Cross-reference with ENERGY STAR data for efficient models ([ENERGY STAR Products](https://www.energystar.gov/products)).
- Adjust for regional differences using RECS regional data.
- Consider updating estimates with 2020 RECS microdata when available for finer granularity.

This list provides a robust, verifiable foundation for energy behavior research, ensuring clarity and specificity for comparative studies.

## Key Citations
- [EIA 2015 Residential Energy Consumption Survey](https://www.eia.gov/consumption/residential/data/2015/)
- [EIA 2020 Residential Energy Consumption Survey](https://www.eia.gov/consumption/residential/data/2020/)
- [EIA 2001 Residential Energy Consumption Survey](https://www.eia.gov/consumption/residential/data/2001/)
- [Silicon Valley Power Appliance Energy Use Chart](https://www.siliconvalleypower.com/residents/save-energy/appliance-energy-use-chart)
- [Public Perceptions of Energy Consumption and Savings](https://www.pnas.org/doi/10.1073/pnas.1001509107)
- [ENERGY STAR Certified Products](https://www.energystar.gov/products)