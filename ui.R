
library(shiny);library(arules); library(arulesViz)
data("Groceries")


shinyUI(bootstrapPage(
responsive = TRUE,
  
titlePanel("Association rules (Groceries dataset)"),




  sidebarPanel(
    
    
    sliderInput("obs", "Rules bwtween products in the basketcase",  
                min = 1, max = 150, value = 100),
    
    
    radioButtons("pType", "Confidence (%)",
                 list(25, 50, 75, 100)),
    
    radioButtons("sup", "Support (%)",
                 list(0.1, 0.2, 0.3, 0.4, 0.5))
    
    
    
  ),


mainPanel(   
  
  plotOutput(outputId = "main_plot", height = "500px")
  
),



tags$b("Instructions"),
helpText("The Groceries data set contains 1 month (30 days) of real-world 
         point-of-sale transaction data from a typical local grocery outlet.
          Number of rules show the quantity of rules created by choosing for example,
          transactions which appears at least 0.1% "),

tags$b("Example"),
helpText("The plot is showing 5 rules for: {cream cheese} x 
         {meat spreads} for the first 100 found rules, with support = 0.1% 
         and confidence = 25%"),

tags$b("Apriori algorithm"),
helpText("This is part of the analysis of 'apriori algorithm'
        (one of the machine learning techniques),which can be
         used to learn with wholesale's transactions and suggest the next
         best offer for the client, based on previous buying behaviour")

))
