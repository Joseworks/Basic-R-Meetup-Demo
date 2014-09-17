# How to import a data set

 library(MASS)

 data(AirPassengers)

 AirPassengers

 plot(AirPassengers)

In statistics, a histogram is a graphical representation of
the distribution of data. It is an estimate of the probability
distribution of a continuous variable

https://developers.google.com/chart/interactive/docs/gallery/histogram

 hist(AirPassengers)
 #with shading
 hist(AirPassengers, density=20)

 #with specific number of bins
 hist(AirPassengers, density=20, breaks=20)

 # proportion, instead of frequency
 # also specifying y-axis
 hist(AirPassengers, density=20, breaks=-3:3,
      ylim=c(0,.5), prob=TRUE)




 # overlay normal curve with x-lab and ylim
 # colored normal curve
 m<-mean(AirPassengers)
 std<-sqrt(var(AirPassengers))
 hist(AirPassengers, density=20, breaks=20, prob=TRUE,
      xlab="x-variable", ylim=c(0, 0.7),
      main="normal curve over histogram")
 curve(dnorm(x, mean=m, sd=std),
       col="darkblue", lwd=2, add=TRUE)

# hist(AirPassengers) is an object
# names(uh) will show all of its components
uh<-hist(AirPassengers)
plot(uh, ylim=c(0, 40), col="lightgray",
     xlab="", main="Histogram of AirPassengers")
text(uh$mids, uh$counts+2, label=c(uh$counts))
