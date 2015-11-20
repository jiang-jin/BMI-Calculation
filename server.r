library(shiny)

BMI <- function(weight, height) {
  BMI = weight/height^2 
  return (BMI)
}  



shinyServer(
  function(input, output){
  output$weight <- renderPrint({input$Weight})
  output$height <- renderPrint({input$Height})
  output$result <- renderText ({BMI= BMI(weight= input$Weight, height=input$Height)})
  
  
  }
  )
