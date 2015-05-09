setwd("E:\\Coursera\\Coursera1\\ExData_Plotting1")
download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","source.zip")
unzip("source.zip", "household_power_consumption.txt")

Sys.setlocale("LC_TIME", "C")

data1 <- data[66637:69517,]
data1$Date1 <- as.Date(as.character(as.vector(data1$Date)), format="%d/%m/%Y")
data1$Timestamp <- as.POSIXct(paste(data1$Date, data1$Time), format="%d/%m/%Y %H:%M:%S")

png(filename="plot4.png")

par(mfrow=c(2,2))

plot(data1$Timestamp,data1$Global_active_power,type="l",main="",xlab="",ylab="Global Active Power")
plot(data1$Timestamp,data1$Voltage,type="l",main="",xlab="datetime",ylab="Voltage")
with(data1,plot(Timestamp,Sub_metering_1,type="n",ylab="Energy sub metering",main="",xlab=""))
with(data1,lines(Timestamp,Sub_metering_1,type="l",ylab="Energy sub metering",main="",xlab=""))
with(data1,lines(Timestamp,Sub_metering_2,type="l",ylab="Energy sub metering",main="",xlab="",col="red"))
with(data1,lines(Timestamp,Sub_metering_3,type="l",ylab="Energy sub metering",main="",xlab="",col="blue"))
legend("topright",lwd=1,bty="n",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(data1$Timestamp,data1$Global_reactive_power,type="l",main="",xlab="datetime",ylab="Global_reactive_power")

dev.off()

