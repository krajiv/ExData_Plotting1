source("prepData.R")

par(mfrow=c(2,2), cex=0.6)

# create the plot 1,1
plot(hhpc_data_ss$DateTime, hhpc_data_ss$Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)")
lines(hhpc_data_ss$DateTime, hhpc_data_ss$Global_active_power)

# create the plot 1,2
plot(hhpc_data_ss$DateTime, hhpc_data_ss$Voltage, type="n", xlab="datetime", ylab="Voltage")
lines(hhpc_data_ss$DateTime, hhpc_data_ss$Voltage)

# create the plot 2,1
plot(hhpc_data_ss$DateTime, hhpc_data_ss$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
lines(hhpc_data_ss$DateTime, hhpc_data_ss$Sub_metering_1)
lines(hhpc_data_ss$DateTime, hhpc_data_ss$Sub_metering_2, col="red")
lines(hhpc_data_ss$DateTime, hhpc_data_ss$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), pch=c("-","-","-"))

# create the plot 1,2
plot(hhpc_data_ss$DateTime, hhpc_data_ss$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
lines(hhpc_data_ss$DateTime, hhpc_data_ss$Global_reactive_power)

# copy to the png device
dev.copy(device=png, "plot4.png", width=480, height=480)

# close the device
dev.off()