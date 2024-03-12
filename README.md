# Dataset Exploration and Regression Analysis

## Overview

This R script conducts exploratory data analysis (EDA) and regression analysis on a dataset containing real estate information. It includes visualization of the dataset, correlation tests, and a multiple linear regression (MLR) model to predict the number of bedrooms based on various features.

## Usage

# Data Import
data <- read.csv("data.csv")

# Data Visualization
The script visualizes the dataset using ggplot2 and plotly libraries. It includes scatter plots to explore relationships between variables, histograms and boxplots to visualize variable distributions, and a pie chart to show the distribution of a categorical variable.

# Correlation Tests
The script conducts Pearson correlation tests between different variables to assess linear relationships. It calculates correlation coefficients and p-values.

# Multiple Linear Regression (MLR)
The script builds an MLR model to predict the number of bedrooms based on predictors such as price, sqft_living, and sqft_lot. It splits the dataset into training and testing sets, fits the model using training data, and evaluates its performance using Mean Square Error (MSE).

# Visualization of Regression Model
The script visualizes the fitted MLR model using diagnostic plots to assess model assumptions and performance.

## Dataset Explanation

The dataset contains real estate information with the following columns:

- `date`: Date of the transaction
- `price`: Price of the property
- `bedrooms`: Number of bedrooms
- `bathrooms`: Number of bathrooms
- `sqft_living`: Square footage of living space
- `sqft_lot`: Square footage of the lot
- `floors`: Number of floors
- `waterfront`: Whether the property has a waterfront view
- `view`: Number of views
- `condition`: Condition of the property
- `sqft_above`: Square footage above ground
- `sqft_basement`: Square footage of the basement
- `yr_built`: Year the property was built
- `yr_renovated`: Year of renovation
- `street`: Street address
- `city`: City
- `statezip`: State and ZIP code
- `country`: Country

Feel free to customize the script and adapt it to your specific needs. If you encounter any issues or have questions, please refer to the documentation of the R packages used or reach out for assistance.

