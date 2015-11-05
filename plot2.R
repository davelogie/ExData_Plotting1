setwd("C:/Users/dl576/OneDrive/Data Science/Exploratory Data Analysis")
library(sqldf)

select <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
x <- read.csv.sql("household_power_consumption.txt",select,sep=";")

png(file="plot2.png")
plot(x$Global_active_power,  type="l", pch="", col="black", ylab="Global Active Power (kilowatts)", xlab="", axes=FALSE)
axis(1, at=1,labels=c("Thu"))
axis(1, at=1440,labels=c("Fri"))
axis(1, at=2880,labels=c("Sat"))
axis(2)
box()
dev.off()
