plot2 <- function() {
	png(filename="plot2.png", width=480, height=480)
	mydata = read.table(file="household_power_consumption.txt", sep=";", header=TRUE, dec=".") # load data
	mydata = mydata [mydata$Date %in% c("1/2/2007","2/2/2007"), ] # filter data
	x <- strptime(paste(mydata$Date, mydata$Time), format='%d/%m/%Y %H:%M:%S')
	y <- mydata$Global_active_power
	plot(x, as.numeric(as.character(y)), type="l", xlab="", ylab="Global Active Power (kilowatts)")
	dev.off()
}
