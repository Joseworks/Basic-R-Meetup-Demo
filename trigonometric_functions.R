#  R always works with angles in radians!
# deg <- function(radians) 180*radians/pi
# rad <- function(degrees) degrees*pi/180

par(mfrow=c(1,1)) #Set margins
 x=seq(0,2*pi,0.01)
 y=sin(x)
 z=cos(x)
 plot(x,y,type='l')
 par(col='red')
 lines(x,z)
