### Datalab 02 - Data Visualisations

# Loading packages
library(dplyr)

# Get the 'railways-passengers-carried-passenger-km.csv' file into a folder of your liking, probably the downloads folder
path <- "YourPathHere"
file <-  "railways-passengers-carried-passenger-km.csv"

# Import the dataset from the downloads folder
df <- read.csv(paste0(path,file))

# Change collumn name
colnames(df) # What are the collumn names?
colnames(df)[4] <- "Passengers per Million Kilometers" # Change just one variable name
colnames(df)
colnames(df) <- c("country",  "code", "year","pmk") # Change all of them, best practise is to use only small letters and short words, abrevations or acronyms
colnames(df)

# Delete the code collumn
df <- df[,-2]


# Get a specific country by manually selecting rows
df_alb <- df[1:24,] # Get the first 24 rows which is the data on Albania and generate a new dataframe
print(df_alb)[1:10,] # print the first 10 rows of that dataframe
plot(df_alb$year, df_alb$pmk) # Plot how many Passengers per Million Kilometers there were over the last years; from 1995 till now
plot(df_alb$year, df_alb$pmk, type = "l") # same plot but with a line
plot(df_alb$year, df_alb$pmk, type = "b") # same plot but with a line and dots
plot(df_alb$year, df_alb$pmk, type = "s") # same plot but with steps
?plot # for more options

# Final example plot
plot(df_alb$year, df_alb$pmk, type = "b", main = "Railway business in Albania", xlab = "Year", ylab = "Passengers per Million Kilometers", col = "black") # same plot but with a line and dots
"Something like that could go in your poster! :D"
summary(df_alb)


# Get a specific year 
df_2017 <- filter(df, df$year == 2017) # Filter by year
print(df_2017)[1:10,] # Just a quick look at what we did
summary(df_2017$pmk) # Let's generate some descriptive statistics!


hist(df_2017$pmk) # Create preliminary histogram

"Hmmmm, that doesn't look very normally distributed. So what should we do next? Can we treat this as one population?"
"There are other descriptive stats packages available, I used two good ones!"

# More descriptive statistics
install.packages("psych")
library(psych)
describe(df_2017$pmk)
kurtosi(df_2017$pmk)
detach("package:psych", unload = TRUE)


install.packages("Hmisc")
library(Hmisc)
describe(df_2017$pmk)