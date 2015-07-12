## save guture plot as png file called "plot3.png"

png("plot3.png")

## Generate line plot with "data_power_sub" date frame

with(data_power_sub, {
  plot(Sub_metering_1 ~ Datetime, type = "l", ylab= "Global Active Power (kilowatts)",
xlab = "")
lines (Sub_metering_2 ~ Datetime, col = 'Red') 
lines (Sub_metering_3 ~ Datetime, col = 'Blue')
})
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd= 2,
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

##close png device

dev.off ()