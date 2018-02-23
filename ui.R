# Developing Data Products, by Coursera
# Minna Asplund, 2018
#

library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Greatest Common Divisor"),
  
  helpText("Let us find the greatest common divisor (gcd) of two integers of your choise!"),

  sidebarLayout(
    sidebarPanel(
       
       
       sliderInput("frstNmbr",
                   "Choose the first integer number:",
                   min = 1,
                   max = 50,
                   value = 2),
       
       sliderInput("scndNmbr",
                   "Choose the second integer number:",
                   min = 1,
                   max = 50,
                   value = 4)
       
    ),
    
    mainPanel(
       textOutput("gcd_answer")
    )
  )
))
