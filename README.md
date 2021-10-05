# MechaCar_Statistical_Analysis
Module 15 Challenge Statistics and R

## Overview of Project
This project provides analysis of producution data on AutosRUs' latest prototype MechaCar. The MechaCar has production problems. 
This analysis will help the manufacturing team identify issues. 


## Linear Regression to Predict MPG - Deliverable 1 

alt text (Deliverable_1LinearRegression.jpg)

Which variables/coefficients provided a non-random amount of variance to the miles per gallon (mpg) values in the dataset?
The vehicle length and vehicle ground clearance provide non-random amount of variance to the mpg values. 
The vehicle length and vehicle clearance have a significant impact mpg on the MechaCar prototypes.

Is the slope of the linear model considered to be zero? Why or why not?
The p-value: 5.35e-11 is smaller than the significance level of 0.05%. This indicates that the slope of the linear model is not zero. 
There is sufficient evidence to reject the null hypothesis

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The linear model has an r-squared value of 0.7149 (71 percent). So, 71 percent of mpg predictions are determined by this model. 
The linear module does predict the mpg of the MechaCar prototypes effectively.


## Summary Statistics on Suspension Coils - Deliverable 2

alt text (Deliverable_2_totalsummary.jpg)
alt text (Deliverable_2_lotsummary.jpg)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI). 
Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The entire suspension coil production lot variance is 62.29 PSI. This well within the 100 PSI variance requirement.

Lots 1 and 2 are within the 100 PSI variance requirement. Lot 1 is 0.98. Lot 2 is 7.47. Lot 3 has the larger variance at 170.29 and is well outside the 100 PSI variance. Lot 3 causes the overall lot variance to skew higher.


## T-Tests on Suspension Coils - Deliverable 3

alt text (Deliverable_3_one_sample t-est.jpg)
The t-test results of the suspension coils across all lots shows they are not statistically different from the population mean of 1500 pounds per inch (PSI). 
The p-value of 0.0603 is not low enough to reject the null hypothesis. 


alt text (Deliverable_3_lots
In Lot 1, the p-value of 1 is not not low enough to reject the null hypothesis. The Lot 1 is not statistically different from the population mean.

In Lot 2, the p-value of .06072 is not low enough to reject the null hypothesis. The Lot 2 is not statistically different from the the population mean.

Lot 3, p-value aof 0.04l68 is low enough to reject the null hypothesis. However, Lot 3 is slightly statistically different from the population mean.
Lot 3 should be discard or go through a thorough review.

## Study Design: MechaCar vs Competition - Deliverable 4 (20 pt)

A statitical study for how the MechaCar performs against the competition should include these metrics:
* city and highway fuel efficiency
* horsepower
* maintenance cost
* safety rating.

These are metrics that most consumers are interesting in knowing. 

What is the null hypothesis or alternative hypothesis?
Each performance metric is statistically similar between the MechaCar prototype and a vehicle from the competitions

What statistical test would you use to test the hypothesis? And why?
A one-way analysis of variance (ANOVA) test is used to test the hypothesis. This test compares the mean of a continuous numerical variables across several groups.

What data is needed to run the statistical test?
The data needed is the MechaCar data and the competition, gathered into a single data frame with a column for each datapoint that will then create the metric.
