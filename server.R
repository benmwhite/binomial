library(shiny)
library(ggplot2)
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({
    x    <- 1:10
    probs <- dbinom(x, size = 10, prob = input$p)
    qplot(x, probs, geom = c("point", "line"), 
          main = "Binomial Distribution Density (n = 10)",
          ylab = "p(x)") + theme_bw()
  })
})
