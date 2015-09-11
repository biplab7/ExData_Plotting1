setwd("/Users/Rev/Dev/R/Coursera/Exploratory Data analysis/DataSet")

# load data
source('CleanData.R')

plot3 <- function() {
  plot(selectPowerDS$timestamp,selectPowerDS$Sub_metering_1, type="l", ylab="Energy sub metering",xlab="")
  lines(selectPowerDS$timestamp,selectPowerDS$Sub_metering_2,col="red")
  lines(selectPowerDS$timestamp,selectPowerDS$Sub_metering_3,col="blue")
  legend("topright",col=c("black","red","blue"),c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1),lwd=c(1,1))
  dev.copy(png, file="plot3.png", width=480, height=480)
  dev.off()
}
plot3()