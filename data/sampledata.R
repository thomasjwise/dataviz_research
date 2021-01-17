## Package Loading
  library(readr)
  library(tidyverse)
  
## Core Data Loading 
  GamingStudy_data <- read_csv("GamingStudy_data.csv")
  
## Sample Game Data (n = 100)
  gamingdata_samp100 <- sample_n(GamingStudy_data, size = 100)
  write.csv(gamingdata_samp100, file = "gamingdata_samp100.csv")
  
## Sample Game Data (n = 5000)
  gamingdata_samp5000 <- sample_n(GamingStudy_data, size = 5000)
  write.csv(gamingdata_samp5000, file = "gamingdata_samp5000.csv")