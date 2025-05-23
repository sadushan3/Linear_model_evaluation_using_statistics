# 💻 Coding Hours Prediction Using Linear Regression

This project analyzes a behavioral and performance dataset to predict how many hours an individual spends coding per day. By applying multiple linear regression, we identify which personal habits and work-related variables significantly impact productivity.

---

## 📁 Dataset Overview

The dataset contains daily observations with the following variables:

### 🎯 Target Variable
- **`hours_coding`**: Total hours spent coding on a given day (numeric)

### 🔍 Predictor Variables
- **`coffee_intake_mg`**: Amount of caffeine consumed in mg
- **`distractions`**: Number of distractions/interruptions experienced
- **`sleep_hours`**: Total hours of sleep the previous night
- **`commits`**: Number of Git commits made
- **`bugs_reported`**: Number of bugs encountered or reported
- **`ai_usage_hours`**: Time spent using AI tools (e.g., GitHub Copilot, ChatGPT)
- **`cognitive_load`**: Self-rated mental workload
- **`task_success`**: Performance/success rating of tasks completed

---

## 🎯 Objective

The aim is to:
- Build a regression model that accurately predicts `hours_coding`
- Identify key variables that significantly influence productivity
- Check and validate all assumptions of linear regression

---

## ⚙️ What We Did

1. **Data Preprocessing**
   - Dataset cleaned and split into training (80%) and testing (20%) sets

2. **Model Building**
   - A multiple linear regression model was fit using the training set

3. **Assumption Checking**
   - Checked for:
     - Linearity
     - Independence of residuals (using Durbin-Watson test ✅)
     - Homoscedasticity (via residual plots)
     - Normality (Q-Q plots or histograms)
     - Multicollinearity (optional: VIF analysis)

4. **Evaluation**
   - Key metrics:
     - **R-squared**: `0.85` → strong model fit
     - **Significant predictors**: `coffee_intake_mg`, `commits`, `ai_usage_hours`
     - Residuals showed no autocorrelation → model is statistically sound

---

## 📊 Findings

- ☕ **Coffee intake**, 📈 **commits**, and 🤖 **AI usage** have the **strongest positive impact** on coding hours.
- Other variables like `sleep_hours` or `cognitive_load` were **not statistically significant** in this model.
- The model is reliable and explains about **85%** of the variance in coding time.

---

## 📦 Requirements

- R (version 4.0+)
- R packages:
  - `lmtest`
  - `ggplot2` *(optional for visuals)*

Install missing packages via:
```r
install.packages("lmtest")
