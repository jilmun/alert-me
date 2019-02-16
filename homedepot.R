library(magrittr)
library(rvest)
library(mailR)

setwd("C:\\Users\\pistachio\\Projects\\alert-me")

web_text <- read_html("https://www.homedepot.com/p/Samsung-22-6-cu-ft-4-Door-French-Door-Refrigerator-with-Recessed-Handle-in-Black-Stainless-Steel-Counter-Depth-RF23M8070SG/301328394")
current_dollars <- web_text %>% html_node(".price__dollars") %>% html_text %>% as.numeric()
current_cents <- web_text %>% html_node(".price__cents") %>% html_text %>% as.numeric()
current_price <- current_dollars + current_cents/100
