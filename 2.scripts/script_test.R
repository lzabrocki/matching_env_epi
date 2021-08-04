#-----------------------------------------------------

# CHECKING THE DATA USED BY M-A

#-----------------------------------------------------

# load packages
library(here)
library(tidyverse)

# load data
data <- read.csv(here::here("1.data", "withoutcomes.csv")) %>%
  rename(
    "date" = "ï..date",
    "yoll_1" = "YOLL1",
    "yoll_2" = "YOLL2",
    "yoll_3" = "YOLL3",
    "humidity_relative" = "humrel",
    "temperature_average" = "meantemp",
    "temperature_maximum" = "maxtemp",
    "temperature_minimum" = "mintemp",
    "yoll" = "YLL",
    "heat_wave" = "HW",
    "heat_wave_lag_1" = "HW_lag1",
    "heat_wave_lag_2" = "HW_lag2",
    "heat_wave_lag_3" = "HW_lag3",
    "o3_lag_1" = "o3_lag1",
    "o3_lag_2" = "o3_lag2",
    "o3_lag_3" = "o3_lag3",
    "heat_wave_lag_0_2" = "HW_lag0_2",
    "no2_lag_1" = "no2_lag1",
    "no2_lag_2" = "no2_lag2",
    "no2_lag_3" = "no2_lag3"
  ) %>%
  mutate(date = lubridate::mdy(date)) %>%
  select(
    date,
    week,
    month,
    year,
    total_death,
    yoll,
    yoll_1,
    yoll_2,
    yoll_3,
    temperature_average,
    temperature_minimum,
    temperature_maximum,
    humidity_relative,
    o3,
    o3_lag_1,
    o3_lag_2,
    o3_lag_3,
    no2,
    no2_lag_1,
    no2_lag_2,
    no2_lag_3,
    heat_wave,
    heat_wave_lag_1,
    heat_wave_lag_2,
    heat_wave_lag_3
  )
         
# there are 1457 observations
nrow(data)

# checking the proportion of missing values by variables
data %>%
  mutate_all(~ as.character(.)) %>%
  pivot_longer(cols = everything(),
               names_to = "variable",
               values_to = "value") %>%
  group_by(variable) %>%
  summarise(proportion_missing = sum(is.na(value)) / n() * 100) %>%
  print(n = Inf)


# filter observations for which total_death is below 65
a <- data %>%
  filter(total_death>65)



# checking summary statistics for yoll displayed in the paper
data %>% 
  summarise(min = min(yoll),
            average = mean(yoll),
            max = mean(yoll))


