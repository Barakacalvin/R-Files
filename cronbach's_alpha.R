# Install packages if not already installed
# install.packages("psych")

# Loading the installed library
library(psych)

# Reading the data CSV
data <- read.csv("C:/Users/cbaraka/OneDrive/Masters/R_Projects/cronbach's_alpha/job_survey.csv", header = TRUE)

# Sub-setting the autonomy variables
autonom <- data[, c("autonom1", "autonom2", "autonom3", "autonom4")]

# Checking the data and removing any missing values
head(autonom) # View the first few rows
str(autonom) # Check the structure
summary(autonom) # Summarize the data
autonom <- na.omit(autonom) # Remove rows with missing values

# Computing the Cronbach's alpha - Run the alpha() function
cronbach_alpha <- alpha(autonom)
print(cronbach_alpha)