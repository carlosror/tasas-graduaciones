library(shiny)

choices_A <- list("Choice A" = 1, "Choice B" = 2, "Choice C" = 3)
choices_B <- list("Choice B1" = 4, "Choice B2" = 5, "Choice B3" = 6)
choices_C <- list("Choice C1" = 7, "Choice C2" = 8, "Choice C3" = 9)

shinyApp(
  ui = fluidPage(
    titlePanel("Cascading selects"),
    fluidRow(
      column(3, wellPanel(
        selectInput("select_A", label = "Select A",
                    choices = choices_A)

      )),
      column(3, wellPanel(
        uiOutput("ui")
      )),
      column(3, wellPanel(
        tags$p("First Input: "),
        verbatimTextOutput("value"),
        tags$p("Dynamic Input: "),
        verbatimTextOutput("dynamic_value")
      ))
    )
  ),
  server = function(input, output) {
    output$ui <- renderUI({
      if (is.null(input$select_A))
        return()

      switch(input$select_A,
        "1" = selectInput("dynamic", label = "Select A2",
                                 choices = choices_A),
        "2" = selectInput("dynamic", label = "Select B",
                                 choices = choices_B),
        "3" = selectInput("dynamic", label = "Select C",
                                 choices = choices_C)
      )
    })
    output$value <- renderPrint({ input$select_A })
    output$dynamic_value <- renderPrint({ input$dynamic })
  }
)