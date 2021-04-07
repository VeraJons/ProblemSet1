rm(list=ls())

library (tidyverse)
library (dslabs)
library(rmarkdown)

#Part 2.1

view(polls_us_election_2016)
#1
nrow(polls_us_election_2016)
#4208
ncol(polls_us_election_2016)
#15

#2
# Graph 1
ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,
                           y = samplesize,
                           color = rawpoll_johnson))
#3
#4

#Part 2.2
#1
?polls_us_election_2016
head(polls_us_election_2016)
colnames(polls_us_election_2016)

#2 
#Graph 1
ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,y = samplesize,color = rawpoll_johnson))

#Graph 2
ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,y = samplesize,color = as.character(rawpoll_johnson)))
#Answer which one is better
#graph two is explaining by marking each value in the poll. This is obviously too much information

#3
ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,
                           y = rawpoll_clinton,
                           color = samplesize >= 500))
#4
ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,
                           y = rawpoll_clinton,
                           color = "blue"))
ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,
                           y = rawpoll_clinton),
                           color = "blue")
#Part 2.3
#1
#How does the facet_grid decide the layout of the grid?
ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,y = rawpoll_clinton)) +
  facet_grid(cols = vars(population))

ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,y = rawpoll_clinton)) +
  facet_grid(rows = vars(grade))

ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,
                           y = rawpoll_clinton)) +
  facet_grid(rows = vars(grade), cols = vars(population))
