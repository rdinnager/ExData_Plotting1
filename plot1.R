## load data
dat <- read.table("/home/din02g/Google Drive/Coursera/Data Scientist Specialization/Exploratory Data Analysis/household_power_consumption.txt",
                  header=TRUE, sep=";", stringsAsFactors=FALSE)
dat2 <- dat[dat$Date %in% c("1/2/2007","2/2/2007"),]

hist(as.numeric(dat2$Global_active_power), breaks=15, xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")