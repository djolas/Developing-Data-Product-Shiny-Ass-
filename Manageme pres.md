Manageme presentation
========================================================
author: olagunju Ayodeji
date: 19/04/2019
autosize: true

What the app does
========================================================
- The manageme app calculates the total income 
- The manageme app calculates the total expenses
- The manageme app calculate the savings made monthly

Code to build the app
========================================================

<!--html_preserve--><div class="container-fluid">
<div class="row">
<div class="col-sm-12">
<h1>Manage Me</h1>
</div>
</div>
<div class="row">
<div class="col-sm-4">
<form class="well">
<h4>Income</h4>
<div class="form-group shiny-input-container">
<label for="text">Name</label>
<input id="text" type="text" class="form-control" value=""/>
</div>
<div class="form-group shiny-input-container">
<label for="Wages">Wages ($)</label>
<input id="Wages" type="number" class="form-control" value="50000"/>
</div>
<div class="form-group shiny-input-container">
<label for="ExtraIncome">Monthly Extra Income ($)</label>
<input id="ExtraIncome" type="number" class="form-control" value="5000"/>
</div>
<h5>Expenses</h5>
<div class="form-group shiny-input-container">
<label for="Transportation">Transport ($ per Month)</label>
<input id="Transportation" type="number" class="form-control" value="503"/>
</div>
<div class="form-group shiny-input-container">
<label for="Feeding">Feeding ($ per Month)</label>
<input id="Feeding" type="number" class="form-control" value="1050"/>
</div>
<div class="form-group shiny-input-container">
<label for="Utilities">Utilities ($ per month)</label>
<input id="Utilities" type="number" class="form-control" value="163"/>
</div>
<div class="form-group shiny-input-container">
<label for="Shopping">Shopping ($ per month)</label>
<input id="Shopping" type="number" class="form-control" value="180"/>
</div>
<div class="form-group shiny-input-container">
<label for="Others">Others ($ per month)</label>
<input id="Others" type="number" class="form-control" value="200"/>
</div>
</form>
</div>
<div class="col-sm-8">
<h4>Total Monthly Income ($)</h4>
<div id="TotalMonthlyIncome" class="shiny-text-output"></div>
<h4>Total Monthly Expenses ($)</h4>
<div id="TotalMonthlyExpenses" class="shiny-text-output"></div>
<h4>Savings Monthly ($)</h4>
<div id="SavingsMonthly" class="shiny-text-output"></div>
<br/>
<h4>Instructions</h4>
<span class="help-block">This application is to help you manage your income and expenses.</span>
<code>Savings Monthly</code>
</div>
</div>
</div><!--/html_preserve-->

code to build the app
========================================================


```r
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
```
To gain access to the application
========================================================
# click this link https://djolas007.shinyapps.io/Manageme/
