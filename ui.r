shinyUI(fluidPage(
  titlePanel("BMI Calculation"),
  
  sidebarLayout(position = "right",
    sidebarPanel( 
    helpText("BMI is a measure of weight adjusted for height.The actual calculation is weight(kg)/(height(m)^2).
             BMI can be divided into several categories and generally the higher your BMI, the greater your risk of a large range of medical problems.
             For adults, 18.5-25 is normal BMI; <18.5 is underweight; 25 ~ 30 is overweight; >30 is obesity.
             ")
  ),
  mainPanel(
    numericInput("Weight", "Weight (kg)", 50, min=4, max=500, step=1),
    numericInput("Height", "Height (m)", 0.5, min=0.1, max=3.0, step=0.1),
    submitButton("Submit"),
    
    h3("Weight (kg)"),
    h4("Your weight"),
    verbatimTextOutput("weight"),
    h3("Height (m)"),
    h4("You height"),
    verbatimTextOutput("height"),
    h4 ("BMI Result"),
    verbatimTextOutput("result")
   
    
  )
    
  )
))
