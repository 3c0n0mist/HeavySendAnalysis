# -reading in the two datasets
library(tidyverse)
library(ggplot2)
library(readxl)
# reading the data
climbDf = read_xlsx('1.xlsx')
climbDf2 = read_xlsx('2.xlsx')

# -- the plotting command
climbDf %>% select('Top','Belay') %>% plot.ts(main = 'Heavy Send', type = 'l')

climbDf2 %>% select('Top','Belay') %>% plot.ts(main = 'Heavy Send', type = 'l')

# summary stats

climbDf %>% select(-'Time (s)') %>% summary()

climbDf2 %>% select(-'Time (s)') %>% summary()
