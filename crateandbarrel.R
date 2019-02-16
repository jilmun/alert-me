library(magrittr)
library(rvest)
library(mailR)
library(stringr)

setwd("C:\\Users\\pistachio\\Projects\\alert-me")

web_text <- read_html("https://www.crateandbarrel.com/elara-metal-globe-pendant-light/s613242")
regular_price <- web_text %>% html_node(".regPrice") %>% html_text
sale_price <- web_text %>% html_node(".salePriceDetail") %>% html_text
current_price <- ifelse(is.na(sale_price), regular_price, sale_price)
