# Photometric Redshift Estimation Using Machine Learning and Deep Learning

This project focuses on estimating galaxy photometric redshifts using machine learning and deep learning techniques. 
The report is divided into three chapters, each implementing different methodologies to predict and evaluate photometric redshifts of galaxies from various datasets,
with a particular focus on the SDSS and DES-Y1 datasets.

## Table of Contents

- [Photometric Redshift Estimation Using Machine Learning and Deep Learning](#photometric-redshift-estimation-using-machine-learning-and-deep-learning)
  - [Table of Contents](#table-of-contents)
  - [1: Feature Importance for Machine Learning Redshifts using Random Forest with AdaBoost](#1-feature-importance-for-machine-learning-redshifts-using-random-forest-with-adaboost)
    - [Key Files:](#key-files)
    - [Metrics Used:](#metrics-used)
  - [2: Stacking with SOM, Decision Trees, AdaBoost, and XGBoost](#2-stacking-with-som-decision-trees-adaboost-and-xgboost)
    - [Key Files:](#key-files-1)
    - [Metrics Used:](#metrics-used-1)
  - [3: Conditional Generative Adversarial Networks (CGAN) for Photometric Redshift Estimation](#3-conditional-generative-adversarial-networks-cgan-for-photometric-redshift-estimation)
    - [Key Files:](#key-files-2)
    - [Metrics Used:](#metrics-used-2)

---

## 1: Feature Importance for Machine Learning Redshifts using Random Forest with AdaBoost

In this chapter, the focus is on analyzing the feature importance for machine learning-based photometric redshift estimation. We explore different models and evaluate their performance based on various metrics.

The dataset used in this chapter is extracted from SQL queries on the **CasJobs** database. The paper **"Feature Importance for Machine Learning Redshifts Applied to SDSS Galaxies"** by Ben Hoyle et al. (https://arxiv.org/abs/1410.4696) served as a reference. While the paper uses SDSS DR10 data, this work is based on SDSS DR18 data.

### Key Files:
- [**Feature_Importance.ipynb**](./1-random_forest-adaboost/Feature_Importance.ipynb): Analyzes which features are most important for predicting photometric redshift.
- [**Comparision.ipynb**](./1-random_forest-adaboost/Comparision.ipynb): Compares spectroscopic and photometric redshifts.
- **SQL Query**: [Download the SQL query file here](./1-random_forest-adaboost/README.md).

### Metrics Used:
- Mean Absolute Bias (|Δz|)
- Normalized Median Absolute Deviation (σNMAD)
- Outlier Rate (η)

---

## 2: Stacking with SOM, Decision Trees, AdaBoost, and XGBoost

In this chapter, we implement stacking with weak and strong learners to predict photometric redshifts. We explore stacking configurations using **Self-Organizing Maps (SOM)**, **Decision Trees (DT)**, **AdaBoost**, and **XGBoost**, aiming to improve prediction accuracy and robustness.

The reference paper for this chapter is **"Stacking for Machine Learning Redshifts Applied to SDSS Galaxies"** by Roman Zitlau et al. (https://arxiv.org/abs/1602.06294), which uses SDSS DR10 data. This work, however, is based on SDSS DR18 data.

### Key Files:
- [**Stacking.ipynb**](./2-stacking-with-som-decision-trees-adaboost-and-xgboost/Stacking.ipynb): Implements stacking of different learners and compares the results.
- - **SQL Query**: [Download the SQL query file here](./2-stacking-with-som-decision-trees-adaboost-and-xgboost/README.md).

### Metrics Used:
- Median Absolute Value (|Δz50|)
- 68% Spread (σ68)
- Outlier Fraction (out0.15)

---

## 3: Conditional Generative Adversarial Networks (CGAN) for Photometric Redshift Estimation

In this chapter, we explore the use of **Conditional Generative Adversarial Networks (CGANs)** for photometric redshift estimation. We compare CGAN performance with **Mixture Density Networks (MDNs)**, focusing on evaluating the models using point-estimation and probability-density metrics.

The dataset used in this chapter is from the **Dark Energy Survey Year 1 (DES-Y1) Stripe-82 region**, with galaxy magnitudes taken from **MAG AUTO** in the **g, r, i, and z filters**. The data is sourced directly from the author's [GitHub repository](https://github.com/mgarciafernandez-uem/CGAN-photoz). 

### Key Files:
- [**CGAN_and_MDN_Training.ipynb**](./3-CGAN-and-MDN/CGAN_and_MDN_Training.ipynb): Trains the CGAN and MDN models for photometric redshift estimation.
- [**Model_comparision.ipynb**](./3-CGAN-and-MDN/Model_comparision.ipynb): Evaluates the models and compares the results.

### Metrics Used:
- Mean Absolute Bias (|Δz|)
- Normalized Median Absolute Deviation (σNMAD)
- Outlier Rate (η)
- Probability Integral Transform (PIT)
- Odds
- Coverage Test (Credibility Diagram)
