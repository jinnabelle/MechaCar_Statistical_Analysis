library(dplyr) # Step 1: load dplyr package
mechacar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #import and read mechacar_mpg.csv
mechacar_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_table)
summary(mechacar_lm) # Use summary() function to determine the p-value and r-squared value

suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #import and read suspension_coil.csv
total_summary <- suspension_table %>% summarize(Mean=mean(PSI),Median=median(PSI), Var=var(PSI), Std_Dev=sd(PSI), Num_Coil=n(), .groups = 'keep') 
lot_summary <- suspension_table  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI), Num_Coil=n(), .groups = 'keep')#create lot_summary dataframe and use groupby to get mean, median, variance and stdev of PSI

t.test(suspension_table$PSI,mu=1500)
lot1_test <- subset(suspension_table, Manufacturing_Lot=="Lot1")
lot2_test <- subset(suspension_table, Manufacturing_Lot=="Lot2")
lot3_test <- subset(suspension_table, Manufacturing_Lot=="Lot3")
t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
