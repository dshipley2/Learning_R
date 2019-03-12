# Up and running with R
# Ex03_02
# Creating histograms for quantitative variables

# Use dataset "social_network.csv" which records the
# gender and age of 202 online survey respondents
# along with their preferred social networking sites
# and an estimate of how many times they log in per week

# Create data frame "sn" from CSV file w/ headers
sn <- read.csv("C:/Users/Danica_Shipley/Desktop/social_network.csv", header = T)

# Make a histogram of Age using the defaults
hist(sn$Age) # defines the variable and data frame to use for the plot
? hist

# Add title, colors. et.
hist(sn$Age,
     #border = NA,
     col = "beige", # Or use: col = colors() [18]
     main = "Ages of Respondents\nSocial Networking Survey of 202 Respondents",
     xlab = "Age of Respondents")

# Can find a chart of R's color palette at
# http://research.stowers.org/mcm/efg/R/Color/Chart/
# including a downloadable PDF version
# can get the names of colors' assigned numbers using the following
colors() [18]
colors() [c(552, 254, 26)]
