source("prepData.R")

par(mfrow=c(1,1), cex=0.8)

# create the plot
plot(hhpc_data_ss$DateTime, hhpc_data_ss$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
lines(hhpc_data_ss$DateTime, hhpc_data_ss$Sub_metering_1)
lines(hhpc_data_ss$DateTime, hhpc_data_ss$Sub_metering_2, col="red")
lines(hhpc_data_ss$DateTime, hhpc_data_ss$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1 ", "Sub_metering_2 ", "Sub_metering_3 "), col=c("black", "red", "blue"), pch=c("-","-","-"))

# copy to the png device
dev.copy(device=png, "plot3.png", width=480, height=480)

# close the device
dev.off()
