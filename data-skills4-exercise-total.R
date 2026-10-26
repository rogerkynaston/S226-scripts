#!/usr/bin/env Rscript

# Read in the Atlantic data
Pacific <- read.csv("data/do_nitrateP.csv")

# Create subsets of the data based on location
NPacific <- Pacific[Pacific$Location=="North Pacific",]

EqPacific <- Pacific[Pacific$Location=="Equatorial Pacific",]

SPacific <- Pacific[Pacific$Location=="South Pacific",]

# Generate summary statistics for each location
summary(NPacific)
summary(EqPacific)
summary(SPacific)

# Set up the 'grid' for plots to go in:
par(mfrow=c(1,2))

# Make the DO plot
plot(-Depth~Oxygen,data= Pacific,type="n",
     xlab="DO (micromoles per litre)",
     ylab="Depth (metres)")

lines(-Depth~Oxygen,data= NPacific,col="blue", lty=1)
lines(-Depth~Oxygen,data= EqPacific,col="red", lty=2)
lines(-Depth~Oxygen,data= SPacific,col="turquoise", lty=3)

# Make the Nitrate plot
plot(-Depth~Nitrate,data= Pacific,type="n",
     xlab="Nitrate (micromoles per litre)",
     ylab="Depth (metres)")

lines(-Depth~Nitrate,data= NPacific,col="blue", lty=1)
lines(-Depth~Nitrate,data= EqPacific,col="red", lty=2)
lines(-Depth~Nitrate,data= SPacific,col="turquoise", lty=3)
