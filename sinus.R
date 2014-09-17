 # (1) The Obligatory Mathematical surface.
 #     Rotated sinc function.

x <- seq(-10, 10, length= 30)

y <- x

f <- function(x, y) { r <- (x+y); 5 * sin(r/2) }

z <- outer(x, y, f)

z[is.na(z)] <- 1

op <- par(bg = "white")

persp(x, y, z, theta = 30, phi = 30, expand = 0.5, col = "lightblue")