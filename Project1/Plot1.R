#Read the data
power <- read.table("data/household_power_consumption.txt",skip=1,sep=";")
#Rename the columns
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
#Subset data
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#Plot Number 1:
##Make a histogram
hist(as.numeric(as.character(subpower$Global_active_power)),col="green",main="Global Active Power",xlab="Global Active Power(kilowatts)")
##Annotate the graph
title(main="Global Active Power")
##Save as PNG
dev.copy(png, filename="plot1.png")
dev.off()








