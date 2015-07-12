## Read data onto R (vector = data_Power)

data_Power <- read.csv("household_power_consumption.txt", header = TRUE, sep = ';',
                         na.strings = "?", nrows = 2075259, check.names = FALSE,
                         stringsAsFactors = FALSE, comment.char = "", quote = '\"')


## Format Date

data_Power$Date <- as.Date(data_Power$Date, format = "%d/%m/%Y")

## subset dates 2007/02/01-2001/02/02 from data_Power into data_power_sub

data_power_sub <- subset(data_Power, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

## Covert dates to days 

days <- paste(as.Date(data_power_sub$Date), data_power_sub$Time)
data_power_sub$Datetime <-as.POSIXct (days)

## save plot future as png file called "plot2.png"

png("plot2.png")

## Generate line plot plot 2

plot (data_power_sub$Global_active_power ~ data_power_sub$Datetime, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")


## close png device

dev.off ()