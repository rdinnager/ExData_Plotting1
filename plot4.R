## load data
dat <- read.table("/home/din02g/Google Drive/Coursera/Data Scientist Specialization/Exploratory Data Analysis/household_power_consumption.txt",
                  header=TRUE, sep=";", stringsAsFactors=FALSE)
dat2 <- dat[dat$Date %in% c("1/2/2007","2/2/2007"),]

png("plot4.png")
par(mfrow=c(2,2))
plot(as.numeric(dat2$Global_active_power), type = "l", xaxt = "n", xlab = "", ylab = "Global Active Power")
axis(1, at = c(0, 1440, 2880), labels = c("Thu","Fri","Sat"))

plot(as.numeric(dat2$Voltage), type = "l", xaxt = "n", xlab = "datetime", ylab = "Voltage")
axis(1, at = c(0, 1440, 2880), labels = c("Thu","Fri","Sat"))

plot(as.numeric(dat2$Sub_metering_1), type = "l", xaxt = "n", xlab = "", ylab = "Energy sub metering")
axis(1, at = c(0, 1440, 2880), labels = c("Thu","Fri","Sat"))
points(1:2880, as.numeric(dat2$Sub_metering_2), type="l", col="red")
points(1:2880, as.numeric(dat2$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=c(1, 1, 1))

plot(as.numeric(dat2$Global_reactive_power), type = "l", xaxt = "n", xlab = "datetime", ylab = "Global_reactive_power")
axis(1, at = c(0, 1440, 2880), labels = c("Thu","Fri","Sat"))

dev.off()