library(shiny)
library(ggplot2)
shinyServer(function(input, output) {  
  output$distPlot <- renderPlot({
    x    <- 0:input$n
    probs <- dbinom(x, size = input$n, prob = input$p)
    qplot(x, probs, geom = c("point", "line"), 
          main = paste("Binomial Distribution Density, n = ", as.character(input$n)),
          ylab = "p(x)", ylim = c(0, 1)) + theme_bw()
  })
})
