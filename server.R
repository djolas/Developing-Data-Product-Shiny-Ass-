library(shiny)
shinyServer(
  function(input, output){
    output$TotalMonthlyIncome <- renderText({ calculateTotalMonthlyIncome(input$Wages, input$ExtraIncome) })
    output$TotalMonthlyExpenses <- renderText({calculateTotalMonthlyExpenses(input$Transportation, input$Feeding, input$Utilities, input$Shopping, input$Others)})
    output$SavingsMonthly <- renderText({calculateSavingsMonthly(input$Wages, input$ExtraIncome,input$Transportation, input$Feeding, input$Utilities, input$Shopping, input$Others)})
  }
)

calculateTotalMonthlyIncome <- function (Wages, ExtraIncome) 
{
  result <- Wages + ExtraIncome
  return(round(result, digits = 2))
}

calculateTotalMonthlyExpenses <- function(Transportation, Feeding, Utilities, Shopping, Others)
{
  result <- Transportation + Feeding + Utilities + Shopping + Others
  return(round(result, digits = 2))
}

calculateSavingsMonthly <- function(Wages, ExtraIncome,Transportation, Feeding, Utilities, Shopping, Others )
{
  result <- ( (Wages + ExtraIncome) - (Transportation + Feeding + Utilities + Shopping + Others))
  return(round(result, digits = 2))
}