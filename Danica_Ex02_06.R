# Up and running with R
# Ex02_06

# Lists of packages
# Opens CRAN Task Views in browser
browseURL("http://cran.r-project.org/web/views/")
# Opens "Available CRAN packages by name" (from UCLA mirros)
browseURL("http://cran.stat.ucla.edu/web/packages/available_packages_by_name")
library() # Brings up editor list of available packages
search() #shows packages that are currently active

# To install and use packages
# Can use Tools > Install Packages
# Can use packages window
# Or can use scripts, which also helps in making your work repeatable

# Downloads package from CRAN and insalls in R
install.packages("psych")
# Make package available: preferred for loading in scripts
library("psych")
# Preferred for loading in functions and packages. Does the same things as library().
require("psych")
# Brings up documentation in editor window
library(help = "psych")

# Vignetters
# Brings up list of vignettes, which are exmaples of how to use the package, in editor window
vignette(package = "psych")
# Open web page with hyperlinks for vignetter PDFs etc.
browseVignettes(package = "psych")
vignette() # Brings up list of all vignettes
browseVignettes() # HTML for all vignettes

# Update packages
# In RStudio, Tools > Check for Package updates
update.packages() # Checks for updates; do periodically

# Removing packages
# By default, all installed packages are removed when R quits
# Can also manually uncheck in Packages window
# Or can use this code
detach("package:psych", unload=TRUE)
