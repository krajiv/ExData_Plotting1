#ensure that you have the file in the current drectory
if (!file.exists("household_power_consumption.txt")) {
        stop("The data set could not be found. Ensure that the current directory contains the data file 'household_power_consumption.txt'.")
}

# set the start date for data
startDate <- as.Date("2007-02-01", format="%Y-%m-%d")
# set the end date for data
endDate <- as.Date("2007-02-02", format="%Y-%m-%d")

#read the data
hhpc_data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", stringsAsFactors=FALSE)

#convert the date column to date
hhpc_data$Date <- as.Date(hhpc_data$Date, format="%d/%m/%Y")

#subset the data to get the values that we are interested in based on start & enddate
hhpc_data_ss <- hhpc_data[(hhpc_data$Date >= startDate & hhpc_data$Date <=endDate ),]
hhpc_data_ss$DateTime <- strptime(paste(hhpc_data_ss$Date, hhpc_data_ss$Time), format="%Y-%m-%d %H:%M:%S")

# free up the unused memory
rm(hhpc_data)