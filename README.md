# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
In this deliverable, I determine what impacts the prototype's car MPG by doing a linear regression analysis, as well as determine how effective is the linear model with predicting the MPG of the prototype cars.

![MechaCar Linear Regression](https://github.com/jinnabelle/MechaCar_Statistical_Analysis/blob/main/summar(mechacar_lm).png)<br>


1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? <br>
The Vehicle Length and Ground Clearance provided a non-random amount of variance to the MPG values of the dataset. In other words, the length of the vehicle and the ground clearance of the vehicle impacts the prototype's miles per gallon performance. <br>
2. Is the slope of the linear model considered to be zero? Why or why not? <br>
The p-value of this linear regression analysis is 5.35 x 10-11, which is much smaller than the assumed significance level of 0.05%. This gives us sufficient evidence to reject the null, which ultimately means that the slope of this linear model is not zero. <br>
3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? <br>
The r-squared value is 0.7149, which means that 71% of Miles per Gallon predictions will be determined using this model. With that, I would say that this linear model predicts MPG of MechaCar prototypes effectively. <br>


## Summary Statistics on Suspension Coils

In this deliverable, I took a look at the Suspension_Coil dataset, which contains the weight capacities of multiple suspension coils of the Prototype car. In this exercise, I determine if the manufacturing of the car is consistent across processing lots. This is done so by looking at the suspension coil’s PSI continuous variable across all manufacturing lots, as well as across each lot. <br>

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?<br>
Below you will find the summaries of the suspension coil's PSI across all the lots (image 1) and by each lot (image 2). 

Image 1<br>
![Total Summary](https://github.com/jinnabelle/MechaCar_Statistical_Analysis/blob/main/total_summary.png)

Image 2<br>
![Summary by Lot](https://github.com/jinnabelle/MechaCar_Statistical_Analysis/blob/main/lot_summary.png)
<br>
In total, the current manufacturing data meets the design sepcification. As a whole, the PSI varies by 62 which is within the 100 pounds per square inch limit. However, by lot, you will have seen that Lot 3 shows a variance that exceeds the limit at 170, 70 pounds higher than the limit. Further investigation for Lot 3 is highly recommended to see where the variance is coming from and how it's coming to be. 


## T-Tests on Suspension Coils

Summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.<br>

![T-test All](https://github.com/jinnabelle/MechaCar_Statistical_Analysis/blob/main/test_suspension_table.png)<br>
When looking at across all of the lots, the mean is 1498.78 and the p-value returns as 0.06, which is higher than our assumed significance level of 0.05. This means that there is not enough evidence to support rejecting the null. <br>

By individual lots -- <br>

Lot 1 has a mean of 1500 and p-value of 1, which ultimately means we cannot reject the null hypothesis, which means that the population mean and sample mean are statistically similar.<br>
Lot 2 with 1500.2 mean and a p-Value of 0.61, which again means that we cannot reject the null and that the population mean and sample mean are statistically similar. <br>
Finally, following the same trend as above, Lot 3 performed differently from the rest of the lot with a mean of 1496.14 and p-Value of 0.04. This p-value is lower than our assumed significance level of 0.04 which means to reject the null hypothesis, meaning that the sample mean and population means at not statistically similar.<br>

![T-Test Lot 1 and Lot 2](https://github.com/jinnabelle/MechaCar_Statistical_Analysis/blob/main/lot1%20and%20lot2.png)<br>
![T-Test Lot 3](https://github.com/jinnabelle/MechaCar_Statistical_Analysis/blob/main/lot3.png)


## Study Design: MechaCar vs Competition

1. Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating <br>
This statistical study compares MechaCar and it's competition based on value. In our society, consumers are now thinking of the value of the things they own, and so in this study we will be comparing MecharCar's value to it's competition. To do so, we will compare cost, fuel efficiency and maintenance cost. <br>

2. What metric or metrics are you going to test?<br>
Average closing cost (average $$ consumer pays for the car), MPG and average maintenance cost per year<br>

3. What is the null hypothesis or alternative hypothesis?<br>
The Null Hypothesis is that MechaCar has more value than it's competitor based on the KPIs comparing the two. And the Alternative Hypothesis is that MechaCar is not valuable compared to it's competition.<br>

4. What statistical test would you use to test the hypothesis? And why? <br>
I would use the two-sample t-test because it compares two samples against each other. <br>

5. What data is needed to run the statistical test<br>
Datasets that represent the two groups will be needed (one for MechaCar and one for the competition). Ideally, the datasets will have model, make and year, as well as the metrics needed to run the test (average closing cost, MPG and average maintenance cost per year).
