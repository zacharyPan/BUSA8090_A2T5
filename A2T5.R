# Author, Zhengyu Pan
# date, May 20th, 2020
# note that data is only for demonstrate the visualization. 
# it is not accurate 


library(ggplot2) 
library(gganimate)

data <- data.frame(week <- c(1,2,3,4,5,
                             6,7,8,9,10,
                             11,12,13,14), 
                   activeCase <- c(547,2191,3195,4197,4841,
                                   4633,3114,2916,2658, 1889,
                                   1243,889,738,611), 
                   totalDeath <-c(0, 1, 3, 7, 13,
                                  19, 30, 49,61, 70, 
                                  79,89, 96, 97))


# "An online example and What the author wants to improve" part of 
# essay
p <- ggplot(data, aes(x = week, y=activeCase))+ geom_point()
p+ transition_time(week) 
# "Further improvement" part of essay
g <- ggplot(data, aes(x = week, y=activeCase, size = totalDeath))+ geom_point()
g+  transition_time(week) 
