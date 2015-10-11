resetPar <- function() {
  dev.new()
  op <- par(no.readonly = TRUE)
  dev.off()
  op
}

source('plotSubMetering.R')

data <- read.csv('data.csv')
Sys.setlocale("LC_TIME", "C")
data$DateTime <-strptime(data$DateTime, format = '%Y-%m-%d %H:%M:%S')

x <- data$DateTime

png(filename = 'plot4.png', width = 480, height = 480)

par(mfcol = c(2,2), mar = c(4,4,4,4))

y <- data$Global_active_power
plot(x,y, type='n', xlab = '', ylab = 'Global Active Power')
lines(x, y)

plotSubMetering(data)

y <- data$Voltage
plot(x,y, type='n', xlab = 'datetime', ylab = 'Voltage')
lines(x, y)

y <- data$Global_reactive_power
plot(x,y, type='n', xlab = 'datetime', ylab = 'Global_reactive_power')
lines(x, y)

dev.off()
