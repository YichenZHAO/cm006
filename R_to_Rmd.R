#'---
#'title: "cm006"
#'author: "Yichen Zhao"
#'date: "Monday, September 22, 2014"
#'output: html_document
#'---
  
#'  This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

#'  When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:
  
gdURL <- "http://tiny.cc/gapminder"
gDat <- read.delim(file = gdURL) 
summary(gDat)


#'You can also embed plots, for example:
  

plot(gDat)


#'Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.


## what do regular comment look like?

#' To convert to Rmd, you just need to "Compile Notebook" which is up on the tool bar!!
