# Plot 4: Multiple plots
png("plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2)) # Arrange plots in a 2x2 grid

# Top-left: Global Active Power
plot(data$Datetime, data$Global_active_power, 
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power")

# Top-right: Voltage
plot(data$Datetime, data$Voltage, 
     type = "l", 
     xlab = "datetime", 
     ylab = "Voltage")

# Bottom-left: Sub-metering
plot(data$Datetime, data$Sub_metering_1, 
     type = "l", 
     xlab = "", 
     ylab = "Energy sub metering")
lines(data$Datetime, data$Sub_metering_2, col = "red")
lines(data$Datetime, data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = 1, bty = "n")

# Bottom-right: Global Reactive Power
plot(data$Datetime, data$Global_reactive_power, 
     type = "l", 
     xlab = "datetime", 
     ylab = "Global Reactive Power")
dev.off()