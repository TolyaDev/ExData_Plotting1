source('plotSubMetering.R')

data <- read.csv('data.csv')
Sys.setlocale("LC_TIME", "C")
data$DateTime <-strptime(data$DateTime, format = '%Y-%m-%d %H:%M:%S')

x <- data$DateTime

#png(filename = 'plot3.png', width = 480, height = 480)

frame()

plotSubMetering(data)

#dev.off()