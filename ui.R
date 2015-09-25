
library(shiny)

shinyUI(
  
  navbarPage("Calculation of string entropy using Shannon's formula",
  
             tabPanel("Calculation",
             
                      sidebarPanel(
                        textInput("userString", label = h4("Input string:"), value = "To be, or not to be: that is the question..."),
                        submitButton('Calculate entropy'),
                        hr(),
                        numericInput('digits', label = h6('Calculation accuracy (digits)'), 4, min = 0, max = 6, step = 1)
                      ),
                      mainPanel(
                        h4('Entropy of string (bits):'),
                        verbatimTextOutput("entropy"),
                        includeMarkdown("purpose.md")
                      )
            ),

            tabPanel("Application purpose",
                     mainPanel(
                       includeMarkdown("usage.md")
                     )
            ),
            
            tabPanel("Formulas and Methods",
                     mainPanel(
                       includeHTML("shannon.html")
                     )
            ),
            
            tabPanel("About",
                     mainPanel(
                       includeMarkdown("about.md")
                     )
            ) # end of "About" tab panel
            
  )

)


























