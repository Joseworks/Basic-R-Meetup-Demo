# “r” returns randomly generated numbers
x1 <- rnorm(50)


# Margins can be computed in inches or in lines.
# The default is par(mar = c(5,4,4,2)) which means that there are:
#  5 lines at the bottom, 4 lines on the left, 4 lines in the top and 2 lines on the right.
#   This can be modified using the par() function.
par(mfrow = c(2,2))




# p for points,
# l for lines,
# b for both,
# o for both overlayed,
# h for histogram-like

plot(x1, type = "p", main = "points", ylab = "", xlab = "")
plot(x1, type = "l", main = "lines", ylab = "", xlab = "")
plot(x1, type = "b", main = "both", ylab = "", xlab = "")
plot(x1, type = "o", main = "both overplot", ylab = "", xlab = "")
plot(x1, type = "h", main = "both", ylab = "", xlab = "")
