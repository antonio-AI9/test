# load in packages 
library(tidyverse) #reading, manipulating and plotting data
library(readxl) #reading xls 
library(janitor) #tidy column names
library(skimr) #data summary

# read in data 
walking_data <- read_xlsx("Walking Steps August.xlsx")  

#explore data 
names(walking_data)
skim(walking_data)

#save out tidied data
walking_data_tidied <- walking_data %>% 
  clean_names() #lowered all column names 

write_csv(walking_data_tidied, "walking_data_tidied.csv")
