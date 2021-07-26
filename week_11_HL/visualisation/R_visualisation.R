library("ggplot2")
head(diamonds)

# The first graph shows the price of diamonds based on their colours
# and we can see that some diamonds with the worst color are worthier
# than some diamonds with best colours and it shows that there are other
# factors that affect on the value of diamonds.
qplot(price, data=diamonds, geom="density",
      color = color, linetype = color)

# The second graph shows the price of diamonds based on their cuts and
# how cuts will affect the price of diamonds and we can see cut have
# effect on diamonds with lower price and will not have effect on diamonds
# with higher price.
qplot(price, data=diamonds, geom="density",
      color = cut, linetype = cut)

# The third graph shows the clarity of diamonds based on their color and cut
qplot(color, cut, data = diamonds, color = factor(clarity),
      geom=c("point", "smooth"))

# The fourth graph shows how clarity affects on the price of diamonds
qplot(clarity, price, data = diamonds, geom = c("point", "smooth"))