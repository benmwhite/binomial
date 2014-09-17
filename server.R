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
    x    <- 1:input$n
    probs <- dbinom(x, size = input$n, prob = input$p)
    qplot(x, probs, geom = c("point", "line"), 
          main = paste("Binomial Distribution Density, n = ", input$n),
          ylab = "p(x)") + theme_bw()
  })
})
