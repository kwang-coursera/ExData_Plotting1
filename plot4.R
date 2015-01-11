data <- read.csv("household_power_consumption.txt", sep=';', stringsAsFactors=FALSE)
data <- data[(data$Date == '1/2/2007') | (data$Date == '2/2/2007'),]

png('plot4.png')

par(mfcol=c(2,2))

# Plot 1, 1
plot(
       as.numeric(data$Global_active_power), 
       type='l', 
       ylab="Global Active Power", 
       xlab='', 
       xaxt='n')
 
  axis(
         side=1, 
         labels=c('Thu', 'Fri', 'Sat'), 
         at=c(0, 1441, 2881)
    )

# Plot 2,1

plot(data$Sub_metering_1, type='n', xlab='', ylab='Energy sub metering', xaxt='n')
axis(side=1, labels=c('Thu', 'Fri', 'Sat'), at=c(0, 1441, 2881))
points(data$Sub_metering_1, type='l', pch=1, col='black')
points(data$Sub_metering_2, type='l', pch=1, col='red')
points(data$Sub_metering_3, type='l', pch=1, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       lty=1,
       col=c('black', 'red', 'blue'), 
       bty='n',
       x.intersp = 0.5, 
       y.intersp = 0.8,
       cex=.75
         )

# Plot 1, 2

plot(data$Voltage, xlab='datetime', ylab='Voltage', xaxt='n', type='l', pch=1)
axis(
  side=1, 
  labels=c('Thu', 'Fri', 'Sat'), 
  at=c(0, 1441, 2881)
)

# Plot 2, 2

plot(data$Global_reactive_power, xlab='datetime', ylab='Global_reactive_power', xaxt='n', type='l', pch=1)
axis(
  side=1, 
  labels=c('Thu', 'Fri', 'Sat'), 
  at=c(0, 1441, 2881)
)
dev.off()