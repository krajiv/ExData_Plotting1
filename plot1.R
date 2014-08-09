source("prepData.R")

par(mfrow=c(1,1), cex=0.8)

# create the plot
hist(hhpc_data_ss$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")

# copy to the png device
dev.copy(device=png, "plot1.png", width=480, height=480)

# close the device
dev.off()
