library(dplyr) # Step 1: load dplyr package
mechacar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #import and read mechacar_mpg.csv
mechacar_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_table)
summary(mechacar_lm) # Use summary() function to determine the p-value and r-squared value

suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #import and read suspension_coil.csv
total_summary <- suspension_table %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create total_summary dataframe to get mean, median, variance and stdev of PSI
lot_summary <-suspension_table %>% group_by(Manufacturing_Lot)%>%  summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create total_summary dataframe and use groupby to get mean, median, variance and stdev of PSI
