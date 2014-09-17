library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Binomial Distribution (n = 20)"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("p",
                  "Value of parameter p:",
                  min = 0,
                  max = 1,
                  value = 0.01)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
