#!/usr/bin/env Rscript

# Read in data csv file
catch<-read.csv("data/anchoveta.csv")

# they supply information on when el nino years happen 

# Moderate ONI years
EN.m<-c(1952,1964,1969,1987,1995,2003,2010)

# Strong ONI years
EN.s<-c(1958,1966,1973,1988,1992)

# Very Strong ONI years
EN.vs<-c(1983,1998,2016)

# Now we create a plot of the data and put vertical lines in for el nino years.
# Note strong is blue, moderate is yellow and very strong is red

plot(catch~year,data=catch,
xlab="Year",
ylab="Catch",
col="blue",
lty=3)
abline(v=EN.s,col="blue")
abline(v=EN.m,col="yellow")
abline(v=EN.vs,col="red")

