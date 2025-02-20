# Plot 3: Sub-Metering Time Series
png("plot3.png", width = 480, height = 480)
plot(data$Datetime, data$Sub_metering_1, 
     type = "l", 
     xlab = "", 
     ylab = "Energy sub metering")
lines(data$Datetime, data$Sub_metering_2, col = "red")
lines(data$Datetime, data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = 1)
dev.off()