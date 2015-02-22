
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(HistData)

data(Galton)

shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({
      set.seed(input$random)

      m <- input$mean
      sd <- input$sd
      data <- rnorm(input$samples, mean = m, sd = sd)

      hist(data,, col='lightblue', main='Histogram', prob=TRUE)
      abline(v = m ,col="red",lwd=5)
      curve(dnorm(x, mean = m, sd = sd),
            col = "darkblue", add = TRUE, outer=TRUE)
    })

  }
)
