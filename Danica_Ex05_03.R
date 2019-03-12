# Up and Running with R
# Ex05_02
# Creating scatterplots

# Load data file about Google searches by state
google <- read.csv ("C:\\Users\\Danica_Shipley\\Desktop\\Ex_Files_UaR_R\\Exercise Files\\Ch05\\05_01\\google_correlate.csv", header = T)
names(google)

# Basic Scatterplot Matrix
pairs(~data_viz + degree + facebook + nba,
      data = google,
      pch = 20,
      main = "Simple Scatterplot Matrix")

# Use "Pairs Plot" from "psych" package. Returns scatter plot, correlations, and hisograms
install.packages("psych")
library("psych")
pairs.panels(google[c(3,7,4,5)], gap = 0)
