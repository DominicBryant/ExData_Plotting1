## Open connection to file "household_power_consumption.txt"

data <- file("household_power_consumption.txt")

## create data frame and seperate out dates (01/02/2007 & 02/02/2007) 

                         
data_power<- read.table(text = grep("^[1,2]/2/2007", readLines(data), value = TRUE),
                         col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", 
                                       "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", 
                                       "Sub_metering_3"), sep = ";", header = TRUE) 

## save future plot as png file called "plot1.png"

png("plot1.png")

## generate hitogram plot of Global active power

data_power_hist <- hist(data_power$Global_active_power, col = "red", main = paste ("Global Active Power"), 
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency")


## close png device

dev.off ()
                         
                         
                         
                                     
                                     
