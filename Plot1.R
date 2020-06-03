library(data.table)
power <- read.table("household_power_consumption.txt", skip=1, sep=";")
head(power)
##Plot1
names(power) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", 
"Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
subpower <- subset(power, power$Date=="1/2/2007" | power$Date=="2/2/2007")
##Reading, naming & subsetting of data is over

##Basic Plot function
hist(as.numeric(as.character(subpower$Global_active_power)), col = "red", 
main = "Global Active Power", xlab = "Global Active Power(kilowatts)")

##Annotating graph
title(main="Global Active Power")