data <- read.csv("household_power_consumption.txt", sep=';', stringsAsFactors=FALSE)
data <- data[(data$Date == '1/2/2007') | (data$Date == '2/2/2007'),]

png('plot2.png')

plot(
  as.numeric(data$Global_active_power), 
  type='l', 
  ylab="Global Active Power (kilowatts)", 
  xlab='', 
  xaxt='n')

axis(
  side=1, 
  labels=c('Thu', 'Fri', 'Sat'), 
  at=c(0, 1441, 2881)
  )

dev.off()

