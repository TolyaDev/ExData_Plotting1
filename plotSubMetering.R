plotSubMetering <- function(data){
  x <- data$DateTime  
  y <- data$Sub_metering_1
  plot(x,y, type='n', xlab = '', ylab = 'Energy sub metering')
  
  lines(x, y, col = 'black')
  
  y <- data$Sub_metering_2
  lines(x, y, col = 'red')
  
  y <- data$Sub_metering_3
  lines(x, y, col = 'blue')
  
  legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
         lty=c(1,1), # gives the legend appropriate symbols (lines)
         lwd=c(2.5,2.5),
         col=c('black','red','blue'),
         bty='n',
         y.intersp = 0.7,
         x.intersp = 0.5)
}