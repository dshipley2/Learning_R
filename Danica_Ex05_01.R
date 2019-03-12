# Up and Running with R
# Ex05_01
# Creating charts for group distributions

# Load data file about Google searches by state
google <- read.csv ("C:\\Users\\Danica_Shipley\\Desktop\\Ex_Files_UaR_R\\Exercise Files\\Ch05\\05_01\\google_correlate.csv", header = T)
names(google)
str(google)  # str stands for "structure", not "string" like in python or SQL

# Does interest in data visualization vary by region?
# Split data by region, create new data frame
viz.reg.dist <- split(google$data_viz, google$region) # the second variable tells R to break it up by region

# Draw bloxplots by region
boxplot(viz.reg.dist, col = "lavender")

# To draw barplot with means
viz.reg.mean <- sapply(viz.reg.dist, mean) # defines the mean for the variable
barplot(viz.reg.mean,
        col = " light blue",
        main = "Average Google Search Share of\n\"Data Visualization\" by Region of US") # \n = break into new line, and \\ print ""
abline(h=0) # applies an x-axis line at 0

# Install psych package
install.packages("psych") # installs
library("psych") # loads it
describeBy(google$data_viz, google$region) # gives us some data around the summaries for the bar plot
