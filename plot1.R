setwd("/Users/Rev/Dev/R/Coursera/Exploratory Data analysis/DataSet")

# load data
source('CleanData.R')

plot1 <- function() {
  hist(selectPowerDS$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
  dev.copy(png, file="plot1.png", width=480, height=480)
  dev.off()
}
plot1()

