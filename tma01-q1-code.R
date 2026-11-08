#!/usr/bin/env Rscript

# Read in csv to variable
data <- read.csv("~/TMA01/data/TMA01_data_26J.csv")

str(data)

# We want a data frame for temperature and dissolved oxygen
# This is Q1 part b
TEMP <- data$Temp_C

# This is Q1 part c
# plot an annotated graph of Temperature and salinity

plot(-Depth~Salinity, data=data,
     main = "Salinity against Depth",
     ylab="Depth/m",
     xlab="Salinity/g kg^-1",
     type="l",
     col="green"
     )
abline(h="-450",col="red")
text("Halocline found at depth of ~450 m",x=34,y=-550,adj=0)

plot(-Depth~Temp_C, data=data,
     main = "Temperature against Depth",
     ylab="Depth/m",
     xlab="Temperature/°C",
     type="l",
     col="blue")
abline(h="-360",col="red")
abline(h="-90",col="red")
text("Mixed layer found above ~90 m", x=0,y=-500,adj=0)
text("Thermoclines found at depth of ~360 m",x=0.0,y=-600,adj=0)

# part d is a plot for nitrate and DO
plot(-Depth~Nitrate, data=data,
     main = "Nitrate conentration against Depth",
     ylab="-Depth/m",
     xlab="Nitrate/g kg^-1",
     type="l",
     col="yellow")

plot(-Depth~Oxygen, data=data,
     main = "Dissolved Oxygen (DO) against Depth",
     ylab="Depth/m",
     xlab="DO/g kg^-1",
     type="l",
     col="red")


