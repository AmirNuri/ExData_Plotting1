xrange <- md$NewDate
yrange <- md$Sub_metering_1
plot(xrange, yrange, type = 'l', ylab = "Energy sub metering", xlab = "")
lines(xrange,md$Sub_metering_2,col="red")
lines(xrange,md$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
lty=1,lwd=2,col=c("black","red","blue"),cex=0.5)
