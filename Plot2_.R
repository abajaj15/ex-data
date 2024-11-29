# Plot 2: Time Series of Global Active Power
png("plot2.png", width = 480, height = 480)
plot(data$Datetime, data$Global_active_power, 
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power (kilowatts)")
dev.off()