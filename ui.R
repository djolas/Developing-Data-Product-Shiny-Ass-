library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Manage Me"),
  sidebarPanel(
    h4('Income'),
    textInput('text', 'Name', value=''),
    numericInput('Wages', 'Wages ($)', 50000),
    numericInput('ExtraIncome', 'Monthly Extra Income ($)', 5000),
    h5('Expenses'),
    numericInput('Transportation', 'Transport ($ per Month)', 503),
    numericInput('Feeding', 'Feeding ($ per Month)', 1050),
    numericInput('Utilities', 'Utilities ($ per month)', 163),
    numericInput('Shopping', 'Shopping ($ per month)', 180),
    numericInput('Others', 'Others ($ per month)', 200)
  ),
  mainPanel(
    h4('Total Monthly Income ($)'),
    textOutput("TotalMonthlyIncome"),
    h4('Total Monthly Expenses ($)'),
    textOutput("TotalMonthlyExpenses"),
    h4('Savings Monthly ($)'),
    textOutput("SavingsMonthly"),
    br(),
    h4('Instructions'),
    helpText("This application is to help you manage your income and expenses."),
    code("Savings Monthly")
      )
))
