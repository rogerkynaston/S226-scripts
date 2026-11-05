#!/usr/bin/env Rscript

omega <- read.csv("/Users/user/planet9/roger/OU/S226/scripts/S226-scripts/data/omega_ar.csv")
str(omega)

# plot a line graph
plot(Omega_ar~Year, data=omega, type="l",
  xlab="Year",
  ylab="Omega",
  col="red"
)

# Plot 2
plot(Omega_ar~Year, data=omega,type="l",
  xlab="Year",
  ylab="Omega value",
  col="red"
)
abline(h=2.75)


# Plot with limits to omega
plot(Omega_ar~Year, data=omega, type="l",
     ylim=c(2.7,3.3),
     xlab="Year",
     ylab="Omega value",
     col="red"
     )
abline(h=2.75,col="green")
text("Planetary boundary: Omega_ar = 2.75",x=1985,y=2.8, adj=0)

# Extend x to 2050
plot(Omega_ar~Year, data=omega, type="l",
     ylim=c(2.7,3.3),xlim = c(1980,2050),
     xlab="Year",
     ylab="Omega value",
     col="red"
)
abline(h=2.75,col="green")

# Now we will do a line of best fit
fit<-lm(Omega_ar~Year,data=omega)
fit

# plot our line of best fit
plot(Omega_ar~Year, data=omega, type="l",
     ylim=c(2.7,3.3),xlim = c(1980,2050),
     xlab="Year",
     ylab="Omega value"
     )
abline(fit, col="green")

# now we calculate the date when we will reach the critical omega value
x = (2.75-17.434098)/-0.007171
cat("We will reach the omega_ar value of 2.75 in:", x)


