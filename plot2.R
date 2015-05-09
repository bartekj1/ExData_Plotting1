setwd("E:\\Coursera\\Coursera1\\ExData_Plotting1")
download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","source.zip")
unzip("source.zip", "household_power_consumption.txt")

Sys.setlocale("LC_TIME", "C")

data1 <- data[66637:69517,]
data1$Date1 <- as.Date(as.character(as.vector(data1$Date)), format="%d/%m/%Y")
data1$Timestamp <- as.POSIXct(paste(data1$Date, data1$Time), format="%d/%m/%Y %H:%M:%S")

plot(data1$Timestamp,data1$Global_active_power,type="l",main="",xlab="",ylab="Global Active Power (kilowatts)")

dev.copy(png,filename="plot2.png")
dev.off()