setwd("E:\\Coursera\\Coursera1\\ExData_Plotting1")
download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","source.zip")
unzip("source.zip", "household_power_consumption.txt")

data1 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
data1$Date1 <- as.Date(as.character(as.vector(data1$Date)), format="%d/%m/%Y")

hist(data1$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")

dev.copy(png,filename="plot1.png")
dev.off()