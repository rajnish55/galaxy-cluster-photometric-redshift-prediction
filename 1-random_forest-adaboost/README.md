# Photometric Redshift Estimation using Random Forest with AdaBoost

This chapter reproduces part of the methodology from the paper:

**"Feature importance for machine learning redshifts applied to SDSS galaxies"**  - _Ben Hoyle, et al._  
[arXiv:1410.4696](https://arxiv.org/abs/1410.4696)

The original work used SDSS DR10 data. In this implementation, the dataset is updated to **SDSS DR18**. Data was obtained using a custom SQL query via [CasJobs](https://skyserver.sdss.org/CasJobs/).

---

## Objective

The goal is to estimate galaxy photometric redshifts from SDSS photometric parameters using a Random Forest model boosted with AdaBoost. This chapter serves as a classical machine learning baseline for comparison with the deep learning models implemented in later chapters.

---

## Data Acquisition

The dataset was constructed from SDSS DR18 using the following SQL query:  
📄 [SQL query file](./sdss_dr18_query.sql)

This query selects photometric parameters and spectroscopic redshifts for galaxies.

---

## Model Summary

- **Model:** Random Forest Regressor
- **Boosting:** AdaBoost (`AdaBoostRegressor`)
- **Features Used:** SDSS magnitudes (u, g, r, i, z), model magnitudes, RA, Dec, and color indices
- **Target:** Spectroscopic redshift (`specz`)

---

## Notebooks

- 📘 `feature_importance.ipynb`: Analyzes the relative importance of features in estimating photometric redshifts.
- 📘 `comparison.ipynb`: Compares predicted photometric redshifts with spectroscopic redshifts and evaluates model performance using various metrics.

---

## Evaluation

The model is evaluated using:
- Mean Squared Error (MSE)
- Scatter plots of predicted vs. true redshifts
- Residual analysis

These assessments help validate the reliability of photometric redshift estimation using classical machine learning methods.

