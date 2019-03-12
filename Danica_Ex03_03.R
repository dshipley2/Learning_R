# Up and running with R
# Ex03_03
# Creating boxplots for quantitative variables

# Use dataset "social_network.csv" which records the
# gender and age of 202 online survey respondents
# along with their preferred social networking sites
# and an estimate of how many times they log in per week

# Create data frame "sn" from CSV file w/ headers
sn <- read.csv("C:/Users/Danica_Shipley/Desktop/social_network.csv", header = T)

# Make a boxplot of Age and Times using the defaults
boxplot(sn$Age)
boxplot(sn$Times)

# Add title, colors, etc
boxplot(sn$Age,
        col = "beige",
        notch = T,
        horizontal = T,
        main = "Ages of Respondents\nSocial Networking Survey of 202 Respondeds",
        xlab = "Age of Respondents")
