setwd("C:/Users/dl576/OneDrive/Data Science/Exploratory Data Analysis")
library(sqldf)

select <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
x <- read.csv.sql("household_power_consumption.txt",select,sep=";")

png(file="plot1.png")
hist(x$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()
