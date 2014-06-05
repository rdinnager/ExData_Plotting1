## load data
dat <- read.table("/home/din02g/Google Drive/Coursera/Data Scientist Specialization/Exploratory Data Analysis/household_power_consumption.txt",
                  header=TRUE, sep=";", stringsAsFactors=FALSE)
dat2 <- dat[dat$Date %in% c("1/2/2007","2/2/2007"),]

png("plot2.png")
plot(as.numeric(dat2$Global_active_power), type = "l", xaxt = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
axis(1, at = c(0, 1440, 2880), labels = c("Thu","Fri","Sat"))
dev.off()