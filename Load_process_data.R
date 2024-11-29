library(data.table)

# Load data with filtering
data <- fread("household_power_consumption.txt", na.strings = "?", sep = ";")

# Filter for the required dates
data <- data[Date %in% c("1/2/2007", "2/2/2007")]

# Convert Date and Time into a datetime column
data[, Datetime := as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S")]

# Preview
head(data)
