par(mfrow=c(2,2), mar= c(4,4,4,4), cex=.64)
plot(md$NewDate, md$Global_active_power, type = 'l', ylab = "Global Active Power (kilowatts)", xlab = "", cex.lab=0.8)
plot(md$NewDate, md$Voltage, type = 'l', ylab = "Voltage", xlab = "datetime",  cex.lab=0.8)
plot(md$NewDate, md$Sub_metering_1, type = 'l', ylab = "Energy sub metering", xlab = "",  cex.lab=0.8)
lines(md$NewDate,md$Sub_metering_2,col="red")
lines(md$NewDate,md$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
lty=1,lwd=2,col=c("black","red","blue"),cex=0.4)
plot(md$NewDate, md$Global_active_power, ylab = "Global_active_power" ,type = 'l', xlab = "datetime",  cex.lab=0.8)
