#readdata
power <- read.table("household_power_consumption.txt",header = FALSE, sep = ";", na.strings ="?", skip = 66637, 
                    nrows = 2880, col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage",
                                                "Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#plot histogram
hist(power$Global_active_power,col = "red", xlab = "Global Active Power(kilowatts)", main = "Global Active Power")

#print png
dev.print(png, width =490, height =490,filename = "plot1.png")
dev.off()