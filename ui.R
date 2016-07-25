library(shiny)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Weight Loss Project"),
  
  # Sidebar with a slider input for number of bins 
  sidebarPanel(
    numericInput('weight1', 'Starting Weight, in lbs', 150, min=100,max=600, step=1),
    numericInput('weight2', 'Weight as of date below, in lbs', 150, min=100,max=600, step=1),
    dateInput("date","Date:"),
    actionButton("goButton", "Go")
    
        ),
    # Show a plot of the generated distribution
  mainPanel(
    mainPanel(uiOutput('table')),
    h2('Results of weight loss'),
    h3('Starting weight'),
    verbatimTextOutput('weight1'),
    h3('Latest Weight'),
    verbatimTextOutput('weight2'),
    h3("Since then you have lost"),
    verbatimTextOutput('AmountLost'),
    h3("Percent of body weight you have lost"),
    verbatimTextOutput('Percent'),
    h3("Number of weights"),
    verbatimTextOutput('count')
  )
  )
)
