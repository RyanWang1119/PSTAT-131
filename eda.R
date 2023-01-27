library(tidyverse)
library(here)
nba_15<-read.csv(here('data', 'nba_2015-16.csv'))

library(corrplot) 
num <- nba_15[,sapply(nba_15,is.numeric)] 
 
corrplot(cor(num), method = 'number', type = 'lower') 
