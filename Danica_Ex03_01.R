# Up and running with R
# Ex03_01
# Creating bar charts for categorical variables

# Use dataset "social_network.csv" which records the
# gender and age of 202 online survey respondents
# along with their preferred social networking sites
# and an estimate of how many times they log in per week

# Create data frame "sn" from CSV file w/ headers
sn <- read.csv("C:/Users/Danica_Shipley/Desktop/social_network.csv", header = T)

# Create table with frequences
site.freq <- table (sn$Site) # Creates frequency table based on the Site variabe, in which $ is used to identify

barplot(site.freq) # Creates bar plot off of frequency table
? barplot # Provides more information on customizing graphs

# Adding an order to put bars in descending order
barplot(site.freq[order(site.freq, decreasing = T)])

# Draw bars horizontally instead of vertically (but turn off decreasing)
barplot(site.freq[order(site.freq)], horiz = T)

# Formatting the chart
# Make Facebook blue and all others gray by specifying a
# vector with named colors for gray and RGB for Faceblook blue
fbba <- c(rep("gray", 5),
          rgb(59, 89, 152, maxColorValue = 255))

barplot(site.freq[order(site.freq)],
        horiz = T,
        col = fbba)

# Turn off borders with "border = NA"
# Add title with "main" with "\n" to break line
# Add subtitle with "sub"
barplot(site.freq[order(site.freq)],
        horiz = T,           # Horizontal bar
        col = fbba,          # Vector defining bar colors
        border = NA,         # Removes border from bars
        xlim = c(0, 100),    # defines x-axis values to max at 100
        main = "Preferred Social Networking Site\nA Survey of 202 Users",
        xlab = "Number of Users") # Label on the x axis

# Immense amount of control available through "par {graphics}"
