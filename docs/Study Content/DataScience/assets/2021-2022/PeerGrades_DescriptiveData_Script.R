### Title:    Data Science 1 SDG-Conference Peer-Grades
### Author:   Bram Heijligers
### Created:  21-10-2021
### Modified: 21-10-2021


###          ###
### Overview ###
###          ###

## The following script will make histograms and summary statistics from the
## peer-received grades at the SDG mini-conference

## To start with we need the .csv file which represents the student grades


##--Set Working Directory-----------------------------------------------------##
## Define Folder structure
working_dir <- "C:/Users/bramh/Documents/GitHub/AAI-DM/docs/Study Content/DataScience/assets/2021-2022/"
output <- paste0(working_dir,"/output/")
setwd(working_dir)

getwd()

##--Load Libraries------------------------------------------------------------##

library(ggplot2)
library(psych)


##--Load data ----------------------------------------------------------------##
df <- read.csv2(paste0(working_dir, "SDG_ConferencePosterGrades.csv"))

#-------------------------------------------------------------------------------
##--EDA-----------------------------------------------------------------------##
#-------------------------------------------------------------------------------

describe(df)

u = df$Elisabeth.Engering
c = colnames(df)
s = 1
n = c[s]

# Student Elisabeth.Engering
ggplot(data= df, aes(x=df$Elisabeth.Engering)) +
  geom_histogram(bins = 10, color = "black", fill = "lightblue") +
  geom_vline(aes(xintercept = mean(df$Elisabeth.Engering, na.rm = T)), 
             linetype = "dashed", size = 0.6, show.legend = T) +
  theme_bw() +
  labs(title = "Elisabeth Engering", x = "Peer grades", 
       caption = paste0("- - - Mean: ", round(mean(df$Elisabeth.Engering, 
                                                   na.rm = T),2)))

ggsave(paste0("Elisabeth Engering", ".jpeg"), device = "jpeg", path = output)

# Student Santiago.Villa.Cardenas
ggplot(data= df, aes(x=df$Santiago.Villa.Cardenas)) +
  geom_histogram(bins = 10, color = "black", fill = "lightblue") +
  geom_vline(aes(xintercept = mean(df$Santiago.Villa.Cardenas, na.rm = T)), 
             linetype = "dashed", size = 0.6, show.legend = T) +
  theme_bw() +
  labs(title = "Santiago Villa Cardenas", x = "Peer grades", 
       caption = paste0("- - - Mean: ", round(mean(df$Santiago.Villa.Cardenas, 
                                                   na.rm = T),2)))

ggsave(paste0("Santiago Villa Cardenas", ".jpeg"), device = "jpeg", path = output)


# Jop.Froklage
ggplot(data= df, aes(x=df$Jop.Froklage)) +
  geom_histogram(bins = 10, color = "black", fill = "lightblue") +
  geom_vline(aes(xintercept = mean(df$Jop.Froklage, na.rm = T)), 
             linetype = "dashed", size = 0.6, show.legend = T) +
  theme_bw() +
  labs(title = "Jop Froklage", x = "Peer grades", 
       caption = paste0("- - - Mean: ", round(mean(df$Jop.Froklage, 
                                                   na.rm = T),2)))

ggsave(paste0("Jop Froklage", ".jpeg"), device = "jpeg", path = output)


# Student Sebastiaan.Zwijnenberg
ggplot(data= df, aes(x=df$Sebastiaan.Zwijnenberg)) +
  geom_histogram(bins = 10, color = "black", fill = "lightblue") +
  geom_vline(aes(xintercept = mean(df$Sebastiaan.Zwijnenberg, na.rm = T)), 
             linetype = "dashed", size = 0.6, show.legend = T) +
  theme_bw() +
  labs(title = "Sebastiaan Zwijnenberg", x = "Peer grades", 
       caption = paste0("- - - Mean: ", round(mean(df$Sebastiaan.Zwijnenberg, 
                                                   na.rm = T),2)))

ggsave(paste0("Sebastiaan Zwijnenberg", ".jpeg"), device = "jpeg", path = output)


# Student Elia Naffis Sahely
ggplot(data= df, aes(x=df$Elia.Naffis.Sahely)) +
  geom_histogram(bins = 10, color = "black", fill = "lightblue") +
  geom_vline(aes(xintercept = mean(df$Elia.Naffis.Sahely, na.rm = T)), 
             linetype = "dashed", size = 0.6, show.legend = T) +
  theme_bw() +
  labs(title = "Elia Naffis Sahely", x = "Peer grades", 
       caption = paste0("- - - Mean: ", round(mean(df$Elia.Naffis.Sahely, 
                                                   na.rm = T),2)))

ggsave(paste0("Elia Naffis Sahely", ".jpeg"), device = "jpeg", path = output)


# Student Michael.Nederhoed
ggplot(data= df, aes(x=df$Michael.Nederhoed)) +
  geom_histogram(bins = 10, color = "black", fill = "lightblue") +
  geom_vline(aes(xintercept = mean(df$Michael.Nederhoed, na.rm = T)), 
             linetype = "dashed", size = 0.6, show.legend = T) +
  theme_bw() +
  labs(title = "Michael Nederhoed", x = "Peer grades", 
       caption = paste0("- - - Mean: ", round(mean(df$Michael.Nederhoed, 
                                                   na.rm = T),2)))

ggsave(paste0("Michael Nederhoed", ".jpeg"), device = "jpeg", path = output)


# Student Rami.Alkadi
ggplot(data= df, aes(x=df$Rami.Alkadi)) +
  geom_histogram(bins = 10, color = "black", fill = "lightblue") +
  geom_vline(aes(xintercept = mean(df$Rami.Alkadi, na.rm = T)), 
             linetype = "dashed", size = 0.6, show.legend = T) +
  theme_bw() +
  labs(title = "Rami Alkadi", x = "Peer grades", 
       caption = paste0("- - - Mean: ", round(mean(df$Rami.Alkadi, 
                                                   na.rm = T),2)))

ggsave(paste0("Rami Alkadi", ".jpeg"), device = "jpeg", path = output)


# Student Irene.Roelvink
ggplot(data= df, aes(x=df$Irene.Roelvink)) +
  geom_histogram(bins = 10, color = "black", fill = "lightblue") +
  geom_vline(aes(xintercept = mean(df$Irene.Roelvink, na.rm = T)), 
             linetype = "dashed", size = 0.6, show.legend = T) +
  theme_bw() +
  labs(title = "Irene Roelvink", x = "Peer grades", 
       caption = paste0("- - - Mean: ", round(mean(df$Irene.Roelvink, 
                                                   na.rm = T),2)))

ggsave(paste0("Irene Roelvink", ".jpeg"), device = "jpeg", path = output)


# Student Stephane.Dauvillier
ggplot(data= df, aes(x=df$Stephane.Dauvillier)) +
  geom_histogram(bins = 10, color = "black", fill = "lightblue") +
  geom_vline(aes(xintercept = mean(df$Stephane.Dauvillier, na.rm = T)), 
             linetype = "dashed", size = 0.6, show.legend = T) +
  theme_bw() +
  labs(title = "Stephane Dauvillier", x = "Peer grades", 
       caption = paste0("- - - Mean: ", round(mean(df$Stephane.Dauvillier, 
                                                   na.rm = T),2)))

ggsave(paste0("Stephane Dauvillier", ".jpeg"), device = "jpeg", path = output)


# Student Robert.Mahot
ggplot(data= df, aes(x=df$Robert.Mahot)) +
  geom_histogram(bins = 10, color = "black", fill = "lightblue") +
  geom_vline(aes(xintercept = mean(df$Robert.Mahot, na.rm = T)), 
             linetype = "dashed", size = 0.6, show.legend = T) +
  theme_bw() +
  labs(title = "Robert Mahot", x = "Peer grades", 
       caption = paste0("- - - Mean: ", round(mean(df$Robert.Mahot, 
                                                   na.rm = T),2)))

ggsave(paste0("Robert Mahot", ".jpeg"), device = "jpeg", path = output)


# Student Anouk Okkema
ggplot(data= df, aes(x=df$Anouk.Okkema)) +
  geom_histogram(bins = 10, color = "black", fill = "lightblue") +
  geom_vline(aes(xintercept = mean(df$Anouk.Okkema, na.rm = T)), 
             linetype = "dashed", size = 0.6, show.legend = T) +
  theme_bw() +
  labs(title = "Anouk Okkema", x = "Peer grades", 
       caption = paste0("- - - Mean: ", round(mean(df$Anouk.Okkema, 
                                                   na.rm = T),2)))

ggsave(paste0("Anouk Okkema", ".jpeg"), device = "jpeg", path = output)


# Student Luca Rijneveld
ggplot(data= df, aes(x=df$Luca.Rijneveld)) +
  geom_histogram(bins = 10, color = "black", fill = "lightblue") +
  geom_vline(aes(xintercept = mean(df$Luca.Rijneveld, na.rm = T)), 
             linetype = "dashed", size = 0.6, show.legend = T) +
  theme_bw() +
  labs(title = "Luca Rijneveld", x = "Peer grades", 
       caption = paste0("- - - Mean: ", round(mean(df$Luca.Rijneveld, 
                                                   na.rm = T),2)))

ggsave(paste0("Luca Rijneveld", ".jpeg"), device = "jpeg", path = output)
