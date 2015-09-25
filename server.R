
library(shiny)
library(hash)

####################################################

stringShannonEntropy <- function(y, digits) 
{
  v = strsplit(y,"")
  v = unlist(v)
  v = lapply(v,utf8ToInt)
  v = unlist(v)
  
  prob = hash()
  
  for(i in v)
  {
    istr = toString(i)
    
    if( !is.null( prob[[istr]] ) )
    {
      tmp = prob[[istr]]
      tmp = tmp + 1
      prob[istr] = tmp
    }
    else
    {
      prob[istr] = 1
    }  
  }
  
  total <- length(v)
  
  H = 0
  
  for(i in keys(prob) )
  {
    freq <- prob[[i]] / total
    h <- freq * log2(freq)
    H = H + h
  }
  H = -H
  
  if(!missing(digits))
  {
    H <- round(H,digit=digits)
  }
  
  return(H)
}

##################################################
##################################################


shinyServer(
  function(input, output) {
    output$entropy <- renderText({stringShannonEntropy(input$userString,digits=input$digits)})
  }
)









