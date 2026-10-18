#!/usr/bin/env Rscript

# We are reading in a csv file and then assigning a variable to temperature and dissolved oxygen.
# file will be read into object data
# Dissolved oxygen will be assigned to DO and temperature will be assigned to temp

data <- read.csv("~/TMA01/data/TMA01_data_26J.csv")

DO <- data.frame(data,Oxygen)

# Output contents of DO object
DO


