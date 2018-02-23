# Developing Data Products, by Coursera
# Minna Asplund, 2018
#

library(shiny)

shinyServer(function(input, output) {
  
   answer <- reactive({
   a <- input$frstNmbr
   b <- input$scndNmbr
    
   while (a != b)
   {
      if (a > b)
      {
         a <- a - b
      }
      else
      {
         b <- b - a
      }
   }
   return(a)
   })
   
   output$gcd_answer <- renderText({
      paste("The calculated GCD is ", answer())
      })

})
