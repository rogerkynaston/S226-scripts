#!/usr/bin/env Rscript

# Read in data csv file
ctd <- read.csv("data/ctd.csv")

# now plot temperature from 500 m to surface
plot(-Depth_m~Temp_C, data=ctd)
   xlab="Temperature (degrees C)",
   ylab="Depth (m)",
   type="l",
   ylim=c(-500,0),
   col="blue, lty=2"

# Same for salinity over the whole depth
plot(-Depth_m~Sal_PSU,data=ctd)
     xlab= "Salinity (PSU)",
     ylab= "Depth (m)",
     type="l",
     col="green, lty=1"

# limited depth range
plot(-Depth_m~Sal_PSU,data=ctd)
     xlab= "Salinity (PSU)",
     ylab= "Depth (m)",
     ylim=c(-500,-1000)
     type="l",
     col="green, lty=2"
