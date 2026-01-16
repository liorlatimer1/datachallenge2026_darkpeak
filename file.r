library(tidyverse)

fev1 <- read.csv('fev1.csv')

set.seed(10)
fev1_sampled <- fev1 %>% 
  count(id) %>% 
  filter(n >6) %>% 
  slice_sample(n = 20) %>% 
  select(id) %>% 
  inner_join(fev1)


## 3c: FEV, Age, and Height

ggplot(fev1_sampled, aes(x = age, y=FEV1, fill = height, colour = height)) +
  geom_point() +
  labs(title = "Correlating age by FEV and height",
       x = "Age", 
       y = "Fev")


#Question 3b
obs <- fev1 %>% 
  count(id)

obs %>% 
  ggplot(aes(n)) + 
  geom_bar() +
  labs(title = 'Counts of Observations per patient', x = 'Number of Observations', y = 'Count')+
  theme_bw()

