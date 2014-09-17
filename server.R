library(shiny)
library(ggvis)

shinyServer(function(input, output) {

  output$distPlot <- renderPlot({

    # generate bins based on input$bins from ui.R
    x <- 1:20
    probability <- dbinom(x, size = 20, prob = input$p)
    plotdat <- data.frame(x, probability)

    # draw the histogram with the specified number of bins
    plotdat %>% ggvis(~x, ~probability) %>% layer_bars()

  })

})
