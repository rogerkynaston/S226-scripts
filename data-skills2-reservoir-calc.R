#!/usr/bin/env Rscript

reservoir <- c("Ice and snow", "Soil moisture", "Groundwater","Lakes, wetlands, reservoirs", "Biological water", "Atmosphere", "Rivers", "Oceans")

volume <- c(26009.9, 54.1, 22600.0, 227.6, 0.9, 13.0, 1.9, 1340000.0)
flux<- c(35.0, 36.0, 13.0, 20.7, 68.9, 491.1, 46.8, 420.5)

# Add code below that uses the data.frame() function to create a new data frame from the vectors above
water <- data.frame(reservoir,volume,flux)

# Add code below here to create a column and calculate residence time (in years)
water$resyears <- water$volume / water$flux

# Add code below here to create a column and calculate residence time in days.
water$resdays <- water$resyears * 365

# Don't forget to output the data frame by adding a line with its name
water
