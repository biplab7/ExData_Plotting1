setwd("/Users/Rev/Dev/R/Coursera/Exploratory Data analysis/DataSet")

# load data
source('CleanData.R')

plot2 <- function() {
  plot(selectPowerDS$timestamp,selectPowerDS$Global_active_power, type="l", ylab="Global Active Power (kilowatts)",xlab="")
  dev.copy(png, file="plot2.png", width=480, height=480)
  dev.off()
}
plot2()