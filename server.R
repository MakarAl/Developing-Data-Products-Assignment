
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny) 

BMI<-function(weight,height) {weight/(height^2)}

diagnostic_f<-function(weight,height){
    BMI_value<-weight/(height^2)
    ifelse(BMI_value<18.5,"Underweight",ifelse(BMI_value<25,"Normal weight",ifelse(BMI_value<30,"Overweight","Obesity")))
}

shinyServer(
    function(input, output) {
        
        output$inputweightvalue <- renderPrint({input$weight})
        output$inputheightvalue <- renderPrint({input$height})
        output$estimation <- renderPrint({BMI(input$weight,input$height)})
        output$diagnostic <- renderPrint({diagnostic_f(input$weight,input$height)})
    } 
)