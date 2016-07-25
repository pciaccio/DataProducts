#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
loss<-function(weight1,weight2) weight1-weight2
p<-function(weight1,weight2) ((weight1-weight2)/weight1)*100

# Define server logic required to draw a histogram
shinyServer(
  function(input, output, session) {
    
    output$weight1<-renderText({input$weight1})
    output$weight2<-renderText({input$weight2})
    output$AmountLost<-renderPrint({loss(input$weight1,input$weight2)})
    output$Percent<-renderPrint({p(input$weight1,input$weight2)})
    output$count<-renderText(input$goButton)
  }
)
