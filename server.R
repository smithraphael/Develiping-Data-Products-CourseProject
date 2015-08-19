
library(arules); library(arulesViz)

  data("Groceries")

    shinyServer(function(input, output) {
      
      output$main_plot <- renderPlot({
        
  
        n_conf = as.numeric(input$pType) / 100
        n_sup = as.numeric(input$sup) / 100
        plot(apriori(Groceries, parameter=list(support = n_sup, confidence = n_conf))
             [1:input$obs], method = "grouped")

      })
    })