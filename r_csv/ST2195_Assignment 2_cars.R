#install.packages('rvest')

#Clear any existing working space
rm(list=ls())

#Set working directory
setwd("/Users/evanquek/R")

#Loading the rvest package
library('rvest')

#Specifying the url for desired website to be scraped
url <- 'https://en.wikipedia.org/wiki/Comma-separated_values'

cars <- url %>%
  read_html() %>%
  html_nodes(xpath = '//*[@id="mw-content-text"]/div[1]/table[2]') %>%
  html_table()
  
cars

# Export to cars.csv
write.csv(cars, "cars.csv")
