# Up and running with R
# Ex04_01
# Recoding Variables

# Use dataset "social_network.csv" which records the
# gender and age of 202 online survey respondents
# along with their preferred social networking sites
# and an estimate of how many times they log in per week

# Create data frame "sn" from CSV file w/ headers
sn <- read.csv("C:/Users/Danica_Shipley/Desktop/social_network.csv", header = T)

# Install and load "psch" package
install.packages("psych")
library("psych")

# Original Variable Times
hist(sn$Times)
describe(sn$Times) # Normal skewness is 0, so above 10 is really high. Normal kurtosis is 0, so 120 is really high

# z-scores
# Use built-in function "scale"
times.z <- scale(sn$Times)
hist(times.z)
describe(times.z)

# log - When you have outliers on the high side, taking the log can help
times.ln0 <- log(sn$Times)
hist(times.ln0)
describe(times.ln0) # produces weird results for this data set because there are 0's in the data set
# Add 1 to data set to avoid the undefined logs for 0 tims
times.ln1 <- log(sn$Times + 1)
hist(times.ln1)
describe(times.ln1)

# Ranking (forces a nearly uniformed distribution by assigning ordinal variables)
times.rank <- rank(sn$Times)
hist(times.rank)
describe(times.rank)
# ties.method = c(average, first, random, max, min)
times.rankr <- rank(sn$Times, ties.method = "random") # flatens out the distribution
hist(times.rankr)
describe(times.rankr)

# Dicotomizing (use carefully, because you lose information in the process)
times.gt1 <- ifelse(sn$Times > 1, 1, 0) # Dichotimized based on if they logged in more than 1 times a week
times.gt1
