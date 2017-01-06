library(shiny)

shinyServer(function(input, output, session) {
    output$debug <- renderPrint({
        region <- input$select_Region
        x <- switch(region, "ARECIBO" = 4, "BAYAMÓN" = 5, "CAGUAS" = 6)
        x # prints NULL if BAYAMÓN selected
        
        # region <- input$select_Region
        # x <- if (region == "ARECIBO") 4 
             # else if (region == "BAYAMÓN") 5
             # else 6
        # x # prints 5 if BAYAMÓN selected in ui
        
        # region <- "BAYAMÓN"
        # x <- switch(region, "ARECIBO" = 4, "BAYAMÓN" = 5, "CAGUAS" = 6)
        # x # prints 5
        
    })
})