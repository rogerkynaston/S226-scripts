#!/usr/bin/env Rscript

# Read in data csv file
ctd <- read.csv("/home/ou/S226-26J/roger-scripts/S226-scripts/data/ctd.csv")

# now plot temperature from 500 m to surface
plot(-Depth_m~Temp_C,data=ctd,
   xlab="Temperature (degrees C)",
   ylab="Depth (m)",
   type="l",
   col="blue", 
   lty=2,
   ylim=c(-500,0))
   

# Same for salinity over the whole depth
plot(-Depth_m~Sal_PSU,data=ctd,
     xlab= "Salinity (PSU)",
     ylab= "Depth (m)",
     type="l",
     col="green", 
     lty=1)

# limited depth range
plot(-Depth_m~Sal_PSU, data=ctd,
     xlab= "Salinity (PSU)",
     ylab= "Depth (m)",
     ylim=c(-1000,-500),
     type="l",
     col="green", 
     lty=2)

     
