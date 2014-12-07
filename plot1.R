mydata <- read.table("household_power_consumption1.txt", header=TRUE, sep=";", na.strings="?")
mydata <- mydata[complete.cases(mydata), ]
mydata$NewDate1 <- paste(mydata[,1], mydata[,2], sep=" ")
mydata$NewDate <- strptime(as.character(mydata$NewDate1), "%d/%m/%Y %H:%M:%S")
mydata$Date2 <- as.Date(mydata$Date, "%d/%m/%Y")
md <- subset(mydata, Date2 >= as.Date("2007-02-01") & Date2 <= as.Date("2007-02-02"))

hist(md$Global_active_power,  col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
