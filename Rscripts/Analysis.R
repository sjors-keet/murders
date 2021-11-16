library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(abb, rate)) +
  geom_bar(width = 0.5, stat = "identity", color = "black") +
  coord_flip()
# we want to save this plot into a directory
#we create this directory ('figs') by the terminal
ggsave("figs/barplot.png") #png because it's a picture
#we can copy this plot into another directory
#by using cp in the terminal