# Exercise 02_04

x <- 0:10 # Assignes 0-10 to x
x # Prints

y <- c(5, 4, 1, 6, 7, 2, 2, 3, 2, 8) # Assignes the values to y
y # Prints y to console

ls() # Lists objects that have been defined

# Reading from Excel/CSV Files
# R converts blank/missing data to an "NA"
# Don't have to specify delimitters for missing data
# because CSV means comma separated values
# "header = T" means the first line is the header
# When importing a file you need to either use "\\" or "/" in the file location
sn.csv <- read.csv("C:/Users/Danica_Shipley/Desktop/social_network.csv", header = T) # Creates the Imports the csv file and gives it an abbreviated name
str(sn.csv) # str() is the structure function which allows you to see the structure of the file

# Importing SPSS Files
# Recommends opening file in SPSS and saving the data as a csv file and then importing it
sn.spss.csv <- read.csv("C:/Users/Danica_Shipley/Desktop/social_network.csv", header = T)
str(sn.spss.csv)

