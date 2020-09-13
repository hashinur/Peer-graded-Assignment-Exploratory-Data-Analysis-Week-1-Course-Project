setwd("C:/Users/HP8569_/Desktop/R_Documents/Exploratory Data Analysis/Week 1/")

#Read data from power consumption dataset:

dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Subset power consumption dataset:
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Convert dates and times
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

globalActivePower <- as.numeric(subSetData$Global_active_power)

#Calling basic plot function:
png("Plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()
