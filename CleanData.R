#Set working Directory

setwd("/Users/Rev/Dev/R/Coursera/Exploratory Data analysis/DataSet")

# required packages
library(data.table)
library(lubridate)

#Load dataset
DataSetFname<-"household_power_consumption.txt"
if (!file.exists(DataSetFname)) {
  file.url<-'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
  download.file(file.url,destfile='source data/power_consumption.zip')
  unzip('power_consumption.zip',exdir='source data',overwrite=TRUE)
}

powerDS <- read.table(DataSetFname, header=T, sep=";",na.strings='?')
powerDS$Date<-as.Date(powerDS$Date,format="%d/%m/%Y")
selectPowerDS<-powerDS[(powerDS$Date=="2007-02-01" | powerDS$Date=="2007-02-02"),]
#selectPowerDS$Global_active_power<-as.numeric(as.character(selectPowerDS$Global_active_power))
selectPowerDS<-transform(selectPowerDS, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
#selectPowerDS$Sub_metering_1<-as.numeric(as.character(selectPowerDS$Sub_metering_1))
#selectPowerDS$Sub_metering_2<-as.numeric(as.character(selectPowerDS$Sub_metering_2))
#selectPowerDS$Sub_metering_3<-as.numeric(as.character(selectPowerDS$Sub_metering_3))



