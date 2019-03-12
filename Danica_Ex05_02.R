# Up and Running with R
# Ex05_02
# Creating scatterplots

# Load data file about Google searches by state
google <- read.csv ("C:\\Users\\Danica_Shipley\\Desktop\\Ex_Files_UaR_R\\Exercise Files\\Ch05\\05_01\\google_correlate.csv", header = T)
names(google)
str(google)  # str stands for "structure", not "string" like in python or SQL

# Is there an association between the percentage of peoples
# in a state with college degrees and interest in data visualiztion?
plot(google$degree, google$data_viz) # plot = scatterplot
# Add title, labels, change circles to points
plot(google$degree, google$data_viz,
     main = "Interest in Data Visualization Searches\nby Percent with Degrees",
     xlab = "Population with College Degrees",
     ylab = "Searches for \"Data Visualization\"",
     pch = 20,   # the number is associated with what type of shape is being plotted
     col = "grey")

# Add fit line
# Linear regression line (y~x)
abline(lm(google$data_viz ~ google$degree), col="red") # Where "lm" = linear model, "~" says that y is predicted by x
# Lowess smoother line (x, y)
lines(lowess(google$degree, google$data_viz), col="blue") # applies a line that follows the shape of the data, when linear models don't fit

