data <- read.csv("household_power_consumption.txt", sep=';', stringsAsFactors=FALSE)
data <- data[(data$Date == '1/2/2007') | (data$Date == '2/2/2007'),]

png('plot3.png')

plot(data$Sub_metering_1, type='n', xlab='', ylab='Energy sub metering', xaxt='n')
axis(side=1, labels=c('Thu', 'Fri', 'Sat'), at=c(0, 1441, 2881))
points(data$Sub_metering_1, type='l', pch=1, col='black')
points(data$Sub_metering_2, type='l', pch=1, col='red')
points(data$Sub_metering_3, type='l', pch=1, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       lty=1,
       col=c('black', 'red', 'blue')
       )

dev.off()