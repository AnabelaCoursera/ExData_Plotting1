## Plot 2 into plot2.png
##  
png(file="plot2.png",width = 480, height = 480)
plot(data$Date, data$Global_active_power, type="l", xlab="",ylab="Global Active Power (kilowatts)") 
dev.off()
