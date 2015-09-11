setwd("/Users/Rev/Dev/R/Coursera/Exploratory Data analysis/DataSet")

# load data
source('CleanData.R')

par(mfrow=c(2,2))
#1st plot
plot(selectPowerDS$timestamp,selectPowerDS$Global_active_power,xlab="",ylab="Global Active Power",type="l")

#2nd plot
plot(selectPowerDS$timestamp,selectPowerDS$Voltage,xlab="datetime",ylab="Voltage",type="l")

#3rd plot
plot3 <- function() {
  plot(selectPowerDS$timestamp,selectPowerDS$Sub_metering_1, type="l", ylab="Energy sub metering",xlab="")
  lines(selectPowerDS$timestamp,selectPowerDS$Sub_metering_2,col="red")
  lines(selectPowerDS$timestamp,selectPowerDS$Sub_metering_3,col="blue")
  legend("topright",col=c("black","red","blue"),c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1),lwd=c(1,1),bty="n",cex=.5)
}
plot3()

#4th plot
plot(selectPowerDS$timestamp,selectPowerDS$Global_reactive_power,ylab="Global_reactive_power",xlab="timestamp",type="l")

dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
