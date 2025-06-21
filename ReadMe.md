Loan Applicant Analysis Using Basic Statistics and R Visualizations

# Loan Approval Data Analysis

## Description  
This project analyzes loan applicant data using R to explore how various financial and behavioral factors impact loan approval outcomes. It combines data visualization and statistical testing to reveal key patterns in applicant creditworthiness.

## Features  
The dataset includes:
- Credit Score  
- Monthly Income  
- Reliability Score  
- Number of Missed or Late Payments  
- Loan Approval Status (`Make.Loan`)

## Research Question  
How do applicant features, specifically credit score, income, reliability, and payment history, influence loan approval decisions?

## Analysis Overview  
- Data Import and Preprocessing: Load and structure CSV data for analysis using R.  
- Visualizations: Generate histograms for income and payment behavior, and a boxplot for reliability.  
- Heatmap Visualization: Create a Pearson correlation heatmap using `corrplot` to highlight relationships among applicant attributes such as income, reliability, missed payments, and credit scores.  
- Correlation Analysis: Quantify inter-feature relationships to identify patterns influencing loan approval outcomes.  
- Statistical Testing: Perform an independent t-test to examine the impact of credit score on loan decisions.  
- Interpretation: Evaluate the results to understand which applicant traits are most predictive of loan approval and how they interact.


