# -reading in the two datasets
library(tidyverse)
library(ggplot2)
library(readxl)
library(zoo)

# reading the data
climbDf = read_xlsx('1.xlsx') %>% rename(Time = 'Time (s)')
climbDf2 = read_xlsx('2.xlsx')%>% rename(Time = 'Time (s)')

climbDf$Time <- as.numeric(climbDf$Time)
climbDf %>% select('Top','Belay') %>% plot.ts(main = 'Heavy Send', type = 'l')

climbDf2$Time <- as.numeric(climbDf2$Time)

climbDf2 %>% select('Top','Belay') %>% plot.ts(main = 'Heavy Send', type = 'l')

# summary stats
print('First Send Summary Statistics')
climbDf %>% select(-'Time') %>% summary()

print('Second Send Summary Statistics')
climbDf2 %>% select(-'Time') %>% summary()

# the slice of the tensecond pump
tensecondpump = slice(climbDf2,300:400)
# this plot is quite useful for interpretation.
tensecondpump$Top %>% plot()
theFall = tensecondpump %>% slice(47:65)
# the Time series
tsDat = ts(climbDf['Top'])
tsDat2 = ts(climbDf2['Top'])

# First Differences chart
# -- helps you understand the gradient of the forces.
difftsplot= diff(tsDat,lag=1,difference=1)
plot(difftsplot)
difftsplot2= diff(tsDat2,lag=1,difference=1)
plot(difftsplot2)

# -- observing from the figure we can see that ther is a peak in activity in the centr
subsettsDat2 <- tsDat2[1:611]
plot(subsettsDat2[300:400],main='the climb')
# i am differencing to remove stable noise.
dinoset2 <- tsDat2[340:400] %>% diff()
# -- the maximum displacement is then 
displacement = max(dinoset2) - min(dinoset2)
print(displacement)
