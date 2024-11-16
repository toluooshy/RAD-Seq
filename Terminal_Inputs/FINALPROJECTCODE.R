setwd("~/Documents/Senior_Fall/QCB_455/Final_Project_Files")
library(tidyverse)
library(ggplot2)


# upload file for SAM data file list
samfileinfo<-read.table("YNP_SAM_LS.txt", header=FALSE)

# convert to gigabytes
samfileinfo$V5GIGA <- samfileinfo$V5 / 10^9

# base R
hist(samfileinfo$V5GIGA, xlab="Size (GB)", ylab= "Number of individual Sam files",
     main = "Distribution of File Size across Individual .sam Files for YNP wolves")

#GGPLOT
samfileinfo %>% ggplot(aes(x = V5GIGA)) + geom_histogram(fill="blue", color="white") + 
  theme_bw() + geom_vline(xintercept=median(samfileinfo$V5GIGA)) +
  labs(title =  "Distribution of File Size across Individual .sam Files for YNP wolves", 
       x="File Size (GB)", y= "Number of individual Sam files")


