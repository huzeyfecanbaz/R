demo_table[3,"Year"]
demo_table <- read.csv(file = 'demo.csv',check.names = F, stringsAsFactors = F)
print(demo_table)
demo_table2 <- fromJSON(txt='demo.json')
library(jsonlite)
print(demo_table2)
filter_table <- demo_table2[demo_table2$price>10000,]
print(filter_table)
?subset()

filter_table2 <- subset(demo_table2,price>10000 & drive=="4wd"&"clean" %in%title_status)
print(filter_table2)

?sample()

sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"), 4)
num_rows <- 1:nrow(demo_table)
sample_row <- sample(num_rows,3)
demo_table[sample_row,]
demo_table[sample(1:nrow(demo_table),3),]

library(tidyverse)
?mutate()

demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE) #add columns to original data frame


summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') #create summary table


summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer),Maximum_Price=max(price),Num_Vehicles=n(), .groups = 'keep') #create summary table with multiple columns

demo_table3=read.csv('demo2.csv',check.names = F, stringsAsFactors = F)

long_table <- gather(demo_table3,key="Metric",value="Score",buying_price:popularity)

?ggplot()

head(mpg)

plt <- ggplot(mpg,aes(x=class)) #import dataset into ggplot2
plt + geom_bar()#plot bar plot








