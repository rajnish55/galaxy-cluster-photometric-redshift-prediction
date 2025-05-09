# Photometric Redshift Estimation using CGAN and MDN

This chapter reproduces the methodology from the paper:

**"Determination of galaxy photometric redshifts using Conditional Generative Adversarial Networks (CGANs)"** - _M. Garcia-Fernandez_  
[arXiv:2501.06532](https://arxiv.org/abs/2501.06532)

In this implementation, we use the **Dark Energy Survey Year 1 (DES-Y1)** data from the Stripe-82 region. Unlike the original paper, which utilized SDSS data, this chapter leverages magnitudes measured using **MAG AUTO** in the **g, r, i, and z** bandpass filters.

The dataset is directly taken from the author's [GitHub repository](https://github.com/mgarciafernandez-uem/CGAN-photoz).

---

## Objective

The aim of this chapter is to estimate photometric redshifts using two deep learning models:

- **Conditional Generative Adversarial Networks (CGAN)**
- **Mixture Density Networks (MDN)**

The performance of both models is compared using a range of point-estimation and probability-density quality metrics.

---

## Data

The dataset used comes from the **DES-Y1 Stripe-82** region, with galaxy magnitudes taken from **MAG AUTO** in the **g, r, i, and z** filters. The dataset is sourced directly from the author's [GitHub repository](https://github.com/mgarciafernandez-uem/CGAN-photoz).

---

## Metrics

We evaluate the models using the following metrics:

- **Point-Estimation Quality Metrics**:
  - **Mean Absolute Bias** (|Δz|)
  - **Normalized Median Absolute Deviation** (σNMAD)
  - **Outlier Rate** (η)

- **Probability-Density Quality Metrics**:
  - **Probability Integral Transform** (PIT)
  - **Odds**
  - **Coverage Test** (Credibility Diagram)

---

## Notebooks

This chapter includes the following two notebooks:

1. 📘 [CGAN_and_MDN_Training.ipynb](./CGAN_and_MDN_Training.ipynb)  
   This notebook focuses on training the **CGAN** and **MDN** models for photometric redshift estimation.

2. 📘 [Model_comparision.ipynb](./Model_comparision.ipynb) 
   This notebook evaluates the performance of the trained models using the point-estimation and probability-density quality metrics.

These notebooks demonstrate the process of training and evaluating **CGAN** and **MDN** for photometric redshift estimation, with a comparison between both models.

---

## Observations

- **CGAN** outperforms **MDN** in terms of certain probability-density metrics, demonstrating its effectiveness for photometric redshift estimation.
- Both models are evaluated on point-estimation and probability-density metrics, showing that CGAN is a promising approach in this domain.


