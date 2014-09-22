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
