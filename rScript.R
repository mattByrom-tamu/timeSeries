set.seed(100)
rm(list = ls())

setwd("D:\Stats Masters\DrBruceResearch\git_repos") # change wd to where you have project downloaded/stored on pc

install.packages("astsa")
library(astsa)

# import data
j2jCA <- read.csv("Data/j2j_ca_all.csv")
j2jTX <- read.csv("Data/j2j_tx_all.csv")
taxcCA <- read.csv("Data/Total Taxes_CA.csv")
taxTX <- read.csv("Data/Total Taxes_TX.csv")
unemCA <- read.csv("Data/Unemployment_CA.csv")
unemTX <- read.csv("Data/Unemployment_TX.csv")
benCA <- read.csv("Data/Unemployment Benefits_CA.csv")
benTX <- read.csv("Data/Unemployment Benefits_TX.csv")
