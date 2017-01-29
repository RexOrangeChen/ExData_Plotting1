#readdata
power <- read.table("household_power_consumption.txt",header = FALSE, sep = ";", na.strings ="?", skip = 66637, 
                    nrows = 2880, col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage",
                                                "Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
#change time
time <- paste(power$Date, power$Time)
time_modified <- strptime(time, "%d/%m/%Y %H:%M:%S")

#plot
plot(time_modified, power$Global_active_power, xlab = "", ylab = "Global_active_power(kilowatts)", type = "l")

#print png
dev.print(png, width =490, height =490,filename = "plot2.png")
dev.off()