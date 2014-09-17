library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Visualizing the Binomial Distribution"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("p",
                  "value of parameter p:",
                  min = 0,
                  max = 1,
                  value = 0.5),
      sliderInput("n",
                "number of trials n:",
                min = 1,
                max = 20,
                step = 1,
                value = 10)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
