
library(shiny)

runApp("shinyApp")

################################


library(shinyapps)

shinyapps::deployApp("shinyApp")

################################
################################

library(slidify)

setwd("./slidify/")

#author("enthropySlides")

slidify("index.Rmd")

browseURL("index.html")




