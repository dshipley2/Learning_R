# Up and running with R
# Ex03_03
# Calculating frequencies for categorical variables

# Use dataset "social_network.csv" which records the
# gender and age of 202 online survey respondents
# along with their preferred social networking sites
# and an estimate of how many times they log in per week

# Create data frame "sn" from CSV file w/ headers
sn <- read.csv("C:/Users/Danica_Shipley/Desktop/social_network.csv", header = T)

table(sn$Site) # Creates frequency table
site.freq <- table(sn$Site) # Saves table as it's own dataframe to be referenced later
site.freq # Prints the table

#Sort table and replace original table
site.freq <- site.freq[order(site.freq, decreasing = T)] # Orders the values and stores in table
site.freq # Prints the tables

prop.table(site.freq) # Gives proportions (basically percents) of total
round(prop.table(site.freq), 2) # Rounds proportions to nearest 2 decimal points
