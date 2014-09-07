plot1 <- function() {
	png(filename="plot1.png", width=480, height=480)
	mydata = read.table(file="household_power_consumption.txt", sep=";", header=TRUE, dec=".") # load data
	mydata = mydata [mydata$Date %in% c("1/2/2007","2/2/2007"), ] # filter data
	hist(x=as.numeric(as.character(mydata$Global_active_power)), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
	dev.off()
}