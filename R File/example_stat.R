# File name: example_stat.R
# Author: Du Huynh
# Date: August 2021
# Department of Computer Science and Software Engineering
# The University of Western Australia

# This small R script file shows you the plots for the dnorm(),
# pnorm(), and qnorm() functions. You can modify the code to
# view the plots for other distribution functions, e.g., 
#  - dexp(), pexp(), and qexp() for the exponential distribution
#    (you will need to modify vector x so that it has positive values only);
#  - dunif(), punif(), and qunif() for the uniform distribution
#    (you will need to modify vector x so that it is over the interval [0,1]).

library(ggplot2)
library(gridExtra)

x <- seq(-3, 3, length=500)

y1 <- dnorm(x)
y2 <- pnorm(x)

q <- qnorm(y2)
# The argument passed to qnorm() must be in the range 0...1. 
# It is taken as an area value under the density function 
# of the Normal distribution over the interval (-infinity, xcoord].
# qnorm() returns the unknown location xcoord. In the line above,
# the output q vector should have elements identical to those in
# vector x. That is, qnorm() is the inverse of pnorm().

fig1 <- ggplot() + geom_line(aes(x=x, y=y1)) + labs(y="dnorm(x)")
fig2 <- ggplot() + geom_line(aes(x=x, y=y2)) + labs(y="pnorm(x)")
fig3 <- ggplot() + geom_line(aes(x=q, y=y2)) + labs(x="qnorm(y)", y="y")

grid.arrange(fig1, fig2, fig3, nrow=1)
