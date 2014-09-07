plot4 <- function() {
 	png(filename="plot4.png", width=480, height=480)
	mydata = read.table(file="household_power_consumption.txt", sep=";", header=TRUE, dec=".") # load data
	mydata = mydata [mydata$Date %in% c("1/2/2007","2/2/2007"), ] # filter data
	par(mfrow=c(2,2))

	x3 <- strptime(paste(mydata$Date, mydata$Time), format='%d/%m/%Y %H:%M:%S')
	y6 <- mydata$Global_active_power
	plot(x3, as.numeric(as.character(y6)), type="l", xlab="", ylab="Global Active Power")

	x <- strptime(paste(mydata$Date, mydata$Time), format='%d/%m/%Y %H:%M:%S')
	y <- mydata$Voltage
	plot(x, as.numeric(as.character(y)), type="l", xlab="datetime", ylab="Voltage")

	x2 <- strptime(paste(mydata$Date, mydata$Time), format='%d/%m/%Y %H:%M:%S')
	y3 <- mydata$Sub_metering_1
      y4 <- mydata$Sub_metering_2 
      y5 <- mydata$Sub_metering_3
	plot(x2, as.numeric(as.character(y3)), type="n", xlab="", ylab="Energy sub metering")
	lines(x2, as.numeric(as.character(y3)), type="l")
	lines(x2, as.numeric(as.character(y4)), type="l", col="red")
	lines(x2, as.numeric(as.character(y5)), type="l", col="blue")
	legend("topright",cex=0.7, lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")

	x1 <- strptime(paste(mydata$Date, mydata$Time), format='%d/%m/%Y %H:%M:%S')
	y1 <- mydata$Global_reactive_power
      plot(x1, as.numeric(as.character(y1)), type="l", xlab="datetime", ylab="Global_reactive_power")
	dev.off()	
}
