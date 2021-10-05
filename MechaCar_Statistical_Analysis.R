# Deliverable 1 Linear model that predicts mpg of protoypes

# Step. 3 load dplyr library
library(dplyr)
library(tidyverse)

# Step 4. import csv file as dataframe
car_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(car_mpg)
?lm()

# Step 5. linear regression - pass all six variables (columns) and add to dataframe above as the data parameter
car_mpg_lm <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, car_mpg) 

# Step 6. Determine the p-value and the r-square value in the linear regression model
summary(car_mpg_lm)

# Deliverable 2

# Step 2 import csv file as a table
car_coil <- read.csv(file="Suspension_Coil.csv", check.names = F, stringsAsFactors = F)
head(car_coil)

# Step 3 create a total_summary dataframe using summarize function - mean, median, variance and standard deviation
total_summary <- car_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Step 4 create a lot_summary dataframe using group_by() and summarize() function: group by manufacturing lot - mean, median, variance, and standard deviation
lot_summary <- car_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Deliverable 3 
# Step 1 use t.test() to determine if PSI across all manufacturing lots is different from population mean of 1500 PSI
t.test(car_coil$PSI, mu=1500)

# Step 2 write 3 more using t.test and subset to determine if PSI for each lot is statistically different from population mean of 1,500 PSI.
?t.test()
?subset

t.test(subset(car_coil, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(car_coil, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(car_coil, Manufacturing_Lot == "Lot3")$PSI, mu=1500)

