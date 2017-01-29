#readdata
power <- read.table("household_power_consumption.txt",header = FALSE, sep = ";", na.strings ="?", skip = 66637, 
                    nrows = 2880, col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage",
                                                "Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
#change time
time <- paste(power$Date, power$Time)
time_modified <- strptime(time, "%d/%m/%Y %H:%M:%S")

#print png
png(file="plot3.png",width=490,height=490,res=72)

#plot
plot(time_modified, power$Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub meterring")
points(time_modified, power$Sub_metering_2, type = "l", col = "red")
points(time_modified, power$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty =1, col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#end
dev.off()