## Plot 3 into plot3.png
## 
png(file="plot3.png",width = 480, height = 480)
plot(data$Date, data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(data$Date, data$Sub_metering_2, type="l", col="red")
lines(data$Date, data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))
dev.off()