setwd("C:/Users/dl576/OneDrive/Data Science/Exploratory Data Analysis")
library(sqldf)

select <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
x <- read.csv.sql("household_power_consumption.txt",select,sep=";")

png(file="plot4.png")

par(mfrow=c(2,2))

##First row, first column

plot(x$Global_active_power,  type="l", pch="", col="black", ylab="Global Active Power", xlab="", axes=FALSE)
axis(1, at=1,labels=c("Thu"))
axis(1, at=1440,labels=c("Fri"))
axis(1, at=2880,labels=c("Sat"))
axis(2)
box()

##First row, second column

plot(x$Voltage,  type="l", pch="", col="black", ylab="Voltage", xlab="datetime", axes=FALSE)
axis(1, at=1,labels=c("Thu"))
axis(1, at=1440,labels=c("Fri"))
axis(1, at=2880,labels=c("Sat"))
axis(2)
box()

##Second row, first column

plot(x$Sub_metering_1,  type="n", pch="", col="black", ylab="Energy sub metering", xlab="", axes=FALSE)
lines(x$Sub_metering_1,  type="l", pch="", col="black")
lines(x$Sub_metering_2,  type="l", pch="", col="red")
lines(x$Sub_metering_3,  type="l", pch="", col="blue")
axis(1, at=1,labels=c("Thu"))
axis(1, at=1440,labels=c("Fri"))
axis(1, at=2880,labels=c("Sat"))
axis(2)
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","blue","red"), lwd=1, box.lty=0)
box()

##Second row, second column

plot(x$Global_reactive_power,  type="l", pch="", col="black", ylab="Global_reactive_power", xlab="datetime", axes=FALSE)
axis(1, at=1,labels=c("Thu"))
axis(1, at=1440,labels=c("Fri"))
axis(1, at=2880,labels=c("Sat"))
axis(2)
box()

##DONE!!

dev.off()
