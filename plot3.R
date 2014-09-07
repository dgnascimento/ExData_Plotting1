plot3 <- function() {
	png(filename="plot3.png", width=480, height=480)
	mydata = read.table(file="household_power_consumption.txt", sep=";", header=TRUE, dec=".") # load data
	mydata = mydata [mydata$Date %in% c("1/2/2007","2/2/2007"), ] # filter data
	x <- strptime(paste(mydata$Date, mydata$Time), format='%d/%m/%Y %H:%M:%S')
	y1 <- mydata$Sub_metering_1
      y2 <- mydata$Sub_metering_2 
      y3 <- mydata$Sub_metering_3
	plot(x, as.numeric(as.character(y1)), type="n", xlab="", ylab="Energy sub metering")
	lines(x, as.numeric(as.character(y1)), type="l")
	lines(x, as.numeric(as.character(y2)), type="l", col="red")
	lines(x, as.numeric(as.character(y3)), type="l", col="blue")
	legend("topright",cex=0.7, lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
	dev.off()
}
