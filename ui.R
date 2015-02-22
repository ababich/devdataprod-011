
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("devdataprod-011"),
  sidebarPanel(
    sliderInput('mean', 'mean', value = 0, min = -10, max = 10, step = 0.01,),
    sliderInput('sd', 'sd', value = 1, min = 0.001, max = 2, step = 0.001,),
    sliderInput('samples', 'samples', value = 500, min = 1, max = 2000, step = 1,),
    sliderInput('random', 'random seed', value = 8888, min = 1, max = 10000, step = 1,),

    helpText('You can see sample normal distribution histogram with selected number of sumples and random seed'),
    helpText('Ideal mean (red) and ideal distribution curve (darkblue) are also shown\n')
  ),
  mainPanel(
    plotOutput('newHist')
  )
))
