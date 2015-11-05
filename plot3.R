setwd("C:/Users/dl576/OneDrive/Data Science/Exploratory Data Analysis")
library(sqldf)

select <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
x <- read.csv.sql("household_power_consumption.txt",select,sep=";")

png(file="plot3.png")
plot(x$Sub_metering_1,  type="n", pch="", col="black", ylab="Energy sub metering", xlab="", axes=FALSE)
lines(x$Sub_metering_1,  type="l", pch="", col="black")
lines(x$Sub_metering_2,  type="l", pch="", col="red")
lines(x$Sub_metering_3,  type="l", pch="", col="blue")
axis(1, at=1,labels=c("Thu"))
axis(1, at=1440,labels=c("Fri"))
axis(1, at=2880,labels=c("Sat"))
axis(2)
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","blue","red"), lwd=1)
box()
dev.off()
