data <- read.csv("household_power_consumption.txt", sep=';', stringsAsFactors=FALSE)
data <- data[(data$Date == '1/2/2007') | (data$Date == '2/2/2007'),]

png('plot1.png')

hist(
  as.numeric(data$Global_active_power), 
  xlab='Global Active Power (kilowatts)', 
  ylab='Frequency', 
  main="Global Active Power", 
  col='red'
  )

dev.off()

