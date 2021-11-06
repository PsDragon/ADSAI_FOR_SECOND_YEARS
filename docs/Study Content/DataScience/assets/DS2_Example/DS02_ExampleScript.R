### Datalab 02 - Data Visualisations

# Loading packages
library(dplyr)

# Get the 'railways-passengers-carried-passenger-km.csv' file into a folder of your liking, probably the downloads folder
path <- "C:/Github/AAI-DM/docs/Study Content/DataScience/assets/DS2_Example/"  # This is how it would look like on my computer, now do the same on the line below

path <- "YourPathHere" #So your 'path' is the location where you saved your file and where R is going to look for it
file <-  "railways-passengers-carried-passenger-km.csv" # name of the file

# Import the dataset from the downloads folder
df <- read.csv(paste0(path,file)) # Combine the name and path of the file to find the file and load it in as a data.frame called 'df'

# Change collumn name
colnames(df) # What are the collumn names?
colnames(df)[4] <- "Passengers per Million Kilometers" # Change just one variable name
colnames(df)  # Did it work?
colnames(df) <- c("country",  "code", "year","pmk") # Change all of them, best practise is to use only small letters and short words, abrevations or acronyms
colnames(df) # Did it work?

# Delete the 'code'  collumn
df <- df[,-2] # I don't need that for now, also you get an example of how to delete a collumn


# Get a specific country by manually selecting rows
df_alb <- df[1:24,] # Get the first 24 rows which is the data on Albania and generate a new dataframe
print(df_alb)[1:10,] # print the first 10 rows of that dataframe
plot(df_alb$year, df_alb$pmk) # Plot how many Passengers per Million Kilometers there were over the last years; from 1995 till now
plot(df_alb$year, df_alb$pmk, type = "l") # same plot but with a line
plot(df_alb$year, df_alb$pmk, type = "b") # same plot but with a line and dots
plot(df_alb$year, df_alb$pmk, type = "s") # same plot but with steps
?plot # for more options

# Final example plot
plot(df_alb$year, df_alb$pmk, type = "b", main = "Railway business in Albania", xlab = "Year", ylab = "Passengers per Million Kilometers", col = "black") # open ?plot and look at the documentation, do you understand what I did here?
"Something like that could go in your poster! :D"
summary(df_alb) # Generate descriptive statistics


# Get a specific year 
df_2017 <- filter(df, df$year == 2017) # Filter by year
print(df_2017)[1:10,] # Just a quick look at what we did
summary(df_2017$pmk) # Let's generate some descriptive statistics!


hist(df_2017$pmk) # Create preliminary histogram

"Hmmmm, that doesn't look very normally distributed. So what should we do next? Can we treat this as one population?"
"There are other descriptive stats packages available, I used two good ones!"

# More descriptive statistics
install.packages("psych") # Install the package
library(psych) # Load the package
describe(df_2017$pmk) # Generate descriptive statistics
kurtosi(df_2017$pmk) # You can also generate specific descriptive stats like the kurtosis
"Check out the psych documentation for more cool functions!"

detach("package:psych", unload = TRUE)


install.packages("Hmisc") # Install the package
library(Hmisc) # Load the package
describe(df_2017$pmk) # Generate descriptive statistics
"Check out the Hmisc documentation for more cool functions!"

