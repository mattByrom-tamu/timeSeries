set.seed(100)
rm(list = ls())

# install.packages("astsa")
# install.packages("readr")
library(astsa)
# import data

j2jCA <- read.csv("Data/j2j_ca_all.csv")
j2jTX <- read.csv("Data/j2j_tx_all.csv")
taxCA <- read.csv("Data/Total Taxes_CA.csv")
taxTX <- read.csv("Data/Total Taxes_TX.csv")
unemCA <- read.csv("Data/Unemployment_CA.csv")
unemTX <- read.csv("Data/Unemployment_TX.csv")
benCA <- read.csv("Data/Unemployment Benefits_CA.csv")
benTX <- read.csv("Data/Unemployment Benefits_TX.csv")


# make time series same for all files
j2jCA$yrQtr <- paste(j2jCA$year, j2jCA$quarter, sep = "")
j2jTX$yrQtr <- paste(j2jTX$year, j2jTX$quarter, sep = "")

taxCA$yrQtr <- paste(taxCA$year, taxCA$quarter, sep = "")
taxTX$yrQtr <- paste(taxTX$year, taxTX$quarter, sep = "")

unemCA$yrQtr <- paste(unemCA$year, unemCA$quarter, sep = "")
unemTX$yrQtr <- paste(unemTX$year, unemTX$quarter, sep = "")

benCA$yrQtr <- paste(benCA$year, benCA$quarter, sep = "")
benTX$yrQtr <- paste(benTX$year, benTX$quarter, sep = "")

# standardize time series so they meatch up
# unemployment starts 2003 quarter 4 so remove first 15 values of each dataFrame
j2jCA <- tail(j2jCA, 79)
j2jTX <- tail(j2jTX, 79)
taxCA <- tail(taxCA, 79)
taxTX <- tail(taxTX, 79)
unemCA <- tail(unemCA, 79)
unemTX <- tail(unemTX, 79)

# tsplot(x = j2jCA$yrQtr, y= j2jCA$MSep, type = "o")
tsplot(j2jCA$MSep, type = "o", main = "j2jCA")
tsplot(j2jTX$MSep, type = "o", main = "j2jTX")

tsplot(taxCA$taxMillions, type = "o", main = "taxCA")
tsplot(taxTX$taxMillions, type = "o", main = "taxTX")

tsplot(unemCA$unemployment, type = "o", main = "unemCA")
tsplot(unemTX$unemployment, type = "o", main = "unemTX")

tsplot(benCA$unemBen_thousands, type = "o", main = "benCA")
tsplot(benTX$unemBen_thousands, type = "o", main = "benTX")


