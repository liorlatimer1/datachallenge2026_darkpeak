library(tidyverse)

hello <- 4


set.seed(10)
fev1_sampled <- fev1 %>% 
  count(id) %>% 
  filter(n >6) %>% 
  slice_sample(n = 20) %>% 
  select(id) %>% 
  inner_join(fev1)