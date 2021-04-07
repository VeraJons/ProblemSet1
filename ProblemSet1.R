rm(list=ls())

library (tidyverse)
library (dslabs)
library(rmarkdown)

view(polls_us_election_2016)

# Graph 1
ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,
                           y = samplesize,
                           color = rawpoll_johnson))