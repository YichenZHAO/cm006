# Refer to: https://github.com/jennybc/ggplot2-tutorial/blob/master/gapminder-ggplot2-scatterplot.md

library("ggplot2")

gdURL <- "http://tiny.cc/gapminder"
gDat <- read.delim(file = gdURL) 
gDat <- read.delim("gapminderDataFiveYear.tsv")
str(gDat)

# nothing to plot yet!
ggplot(gDat, aes(x = gdpPercap, y = lifeExp)) 
# plot by + geom
p <- ggplot(gDat, aes(x = gdpPercap, y = lifeExp)) # just initializes
p + geom_point()

## Log transform
# bad way: direct log
ggplot(gDat, aes(x = log10(gdpPercap), y = lifeExp)) + geom_point()
# better way to do this!
p + geom_point() + scale_x_log10() # p is defined previously, here we just need to scale x!

# Name axies
p + geom_point() + scale_x_log10() + xlab("GDP Per Capita") + ylab("Life Expectancy")

##  Define new ## 
pp <- p + scale_x_log10() + xlab("log (GDP Per Capita)") + ylab("Life Expectancy")
pp + geom_point()

# new aesthetic (e.g. with color)
pp + geom_point(aes(color = continent)) 

# SET alpha transparency and size to a value
pp + geom_point(alpha = (1/3), size = 3) 
pp + geom_point(alpha = (1/3), size = 1) 
pp + geom_point(alpha = (1/10), size = 3) 

# add a fitted curve or line
pp + geom_point() + geom_smooth()  #the grey part is something like an inference
pp + geom_point() + geom_smooth(lwd = 3, se = FALSE)
pp + geom_point() + geom_smooth(lwd = 3, se = FALSE, method = "lm")

# revive our interest in continents (levels of one variable)
pp + aes(color = continent) + geom_point() + geom_smooth(lwd = 3, se = FALSE)

# facetting: another way to exploit a factor
pp + geom_point(alpha = (1/3), size = 3) + facet_wrap(~ continent)
pp + geom_point(alpha = (1/3), size = 3) + facet_wrap(~ continent) +
  geom_smooth(lwd = 2, se = FALSE)

