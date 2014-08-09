source("prepData.R")

par(mfrow=c(1,1), cex=0.8)

# create the plot
plot(hhpc_data_ss$DateTime, hhpc_data_ss$Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)")
lines(hhpc_data_ss$DateTime, hhpc_data_ss$Global_active_power)

# copy to the png device
dev.copy(device=png, "plot2.png", width=480, height=480)

# close the device
dev.off()
