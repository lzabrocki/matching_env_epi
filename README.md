# Matching Tutorial for Environmental Epidemiology

This repo contains all R codes to reproduce the results found in our matching tutorial for environmental epidemiologists:

* The folder `1.data` contains the raw and simulated datasets.
* The folder `2.scripts` contains all the scripts used in the analysis:
  * In `1_script_simulating_data.Rmd`, we simulate potential outcomes from the raw dataset.
  * In `2_script_outcome_regression_analysis.Rmd`, we implement an outcome regression analysis.
  * In `3_script_eda_covariates_balance.Rmd`, we explore the balance of covariates before matching.
  * In `4_propensity_score_matching.Rmd`, we implement two propensity score matching procedures (without and with a calliper).
  * In `5_coarsened_exact_matching.Rmd`, we implement a coarsened exact matching procedure.
  * In `6_constrained_pair_matching.Rmd`, we implement a recent matching algorithm designed for time series data.
  * In `7_summary_results.Rmd`, we display the table of all results.
* `3.outputs` contains the data and graphs created in our analysis.

**Important note:** to properly display the scripts, you must download the .html file and then open it with your internet browser.


