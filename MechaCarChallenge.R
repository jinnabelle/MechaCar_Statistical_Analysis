library(dplyr) # Step 1: load dplyr package
mechacar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #import and read mechacar_mpg.csv
mechacar_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_table)
summary(mechacar_lm) # Use summary() function to determine the p-value and r-squared value


