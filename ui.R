
library(shiny);library(arules); library(arulesViz)
data("Groceries")


shinyUI(bootstrapPage(
responsive = TRUE,
  
tabPanel("About"),

  titlePanel("Association rules (Groceries dataset)"),
 mainPanel(   

  
  plotOutput(outputId = "main_plot", height = "500px")
  
  ),
  

sidebarPanel(
  
  
  sliderInput("obs", "Rules bwtween products in the basketcase",  
              min = 1, max = 150, value = 100),
  

  radioButtons("pType", "Confidence (%)",
               list(25, 50, 75, 100)),
  
  radioButtons("sup", "Support (%)",
               list(0.1, 0.2, 0.3, 0.4, 0.5))

  
)
  
   
))