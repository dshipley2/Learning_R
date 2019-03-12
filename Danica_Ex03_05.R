# Up and running with R
# Ex03_04
# Calculating descriptive statistics

# Use dataset "social_network.csv" which records the
# gender and age of 202 online survey respondents
# along with their preferred social networking sites
# and an estimate of how many times they log in per week

# Create data frame "sn" from CSV file w/ headers
sn <- read.csv("C:/Users/Danica_Shipley/Desktop/social_network.csv", header = T)
summary(sn$Age) # Summary for a single variable
summary(sn) # Summary for the entire table

# Tukey's five-number summary:: minimum, lower-hinge (i.e. first quartile),
#   median, upper-hinge (i.e. third quartile), maximum
# Doesn't print lables
fivenum(sn$Age) #Similar to the summary, but excludes mean, NA's, and has no labels

# Alternate descriptive statistics
# Gives n, mean, standard deviation, median, trimmed mean (10% by default),
#   median absollute deviation from median (MAD), min, max, range, skew,
#   kurtosis, and standard error
# Options for listwise deletion of missing data, methods of calculating median/skew/kurtosis,
#   amoung of trimming, etc.
# Note: Converts categories into sequential numbers and does stats;
#   can be useful in certain situations; marks with * are categorical variables
install.packages("psych")
library("psych")
describe(sn)
