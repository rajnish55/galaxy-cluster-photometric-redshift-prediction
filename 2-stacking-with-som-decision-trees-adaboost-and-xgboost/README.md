# Stacked Ensemble Learning for Photometric Redshift Estimation

This chapter reproduces the key ideas from the paper:

**"Stacking for machine learning redshifts applied to SDSS galaxies"** - _Roman Zitlau, Ben Hoyle, et al._  
[arXiv:1602.06294](https://arxiv.org/abs/1602.06294)

While the original study used SDSS DR10 data, this implementation uses **SDSS DR18**, and all data was collected using a custom SQL query via [CasJobs](https://skyserver.sdss.org/CasJobs/).

📄 [SQL query file](./sdss_stacking_query.sql)

---

## Objective

The goal is to improve photometric redshift predictions using **stacking** with both weak and strong learners:

- **Weak learners**: Self-Organizing Maps (SOMs), Decision Trees (DT)
- **Strong learners**: AdaBoost, XGBoost

Stacking is applied in multiple layers, and performance is compared to non-stacked configurations.

---

## Notebook

All experiments are contained in:  
📘 [Stacking.ipynb](./Stacking.ipynb) 

This notebook reproduces the main experimental setup of the paper, exploring model complexity, overfitting behavior, and the benefits of stacking under different configurations.

---

## Evaluation Metrics

The performance of each configuration is assessed using:

- **Median Absolute Error** (|Δz₅₀|): Median of absolute redshift errors.
- **σ₆₈ Spread**: Range containing 68% of errors around the median.
- **Outlier Fraction** (out₀.₁₅): Proportion of predictions where |Δz| > 0.15.


