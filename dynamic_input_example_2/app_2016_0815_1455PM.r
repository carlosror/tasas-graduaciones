library(shiny)

choices_A <- list("Choice A" = 1, "Choice B" = 2, "Choice C" = 3)
choices_B <- list("Choice B1" = 4, "Choice B2" = 5, "Choice B3" = 6)
choices_C <- list("Choice C1" = 7, "Choice C2" = 8, "Choice C3" = 9)

choices_Region <- list("ARECIBO" = "ARECIBO", "BAYAMON" = "BAYAMON", "CAGUAS" = "CAGUAS",
                       "HUMACAO" = "HUMACAO", "MAYAGUEZ" = "MAYAGUEZ", "PONCE" = "PONCE", 
                       "SAN JUAN" = "SAN JUAN" )

choices_Region_ARECIBO <- list("ARECIBO" = "ARECIBO", "CAMUY" = "CAMUY", "MANATI" = "MANATI",
                        "VEGA ALTA" = "VEGA ALTA")
choices_Region_BAYAMON <- list("BAYAMON" = "BAYAMON", "COROZAL" = "COROZAL", "OROCOVIS" = "OROCOVIS",
                        "TOA BAJA" = "TOA BAJA")
choices_Region_CAGUAS <- list("BARRANQUITAS" = "BARRANQUITAS", "CIDRA" = "CIDRA", "GUAYAMA" = "GUAYAMA",
                        "GURABO" = "GURABO")
choices_Region_HUMACAO <- list("CANOVANAS" = "CANOVANAS", "FAJARDO" = "FAJARDO", "LAS PIEDRAS" = "LAS PIEDRAS",
                        "YABUCOA" = "YABUCOA")
choices_Region_MAYAGUEZ <- list("AGUADILLA" = "AGUADILLA", "CABO ROJO" = "CABO ROJO", "MAYAGUEZ" = "MAYAGUEZ",
                        "SAN SEBASTIAN" = "SAN SEBASTIAN")
choices_Region_PONCE <- list("PONCE" = "PONCE", "SANTA ISABEL" = "SANTA ISABEL", "UTUADO" = "UTUADO",
                        "YAUCO" = "YAUCO")
choices_Region_SAN_JUAN <- list("CAROLINA" = "CAROLINA", "GUAYNABO" = "GUAYNABO", "SAN JUAN I" = "SAN JUAN I",
                        "SAN JUAN II" = "SAN JUAN II")

shinyApp(
  ui = fluidPage(
    titlePanel("Cascading selects"),
    sidebarPanel(
        selectInput("select_Region", label = "Region",
                    choices = choices_Region),
        uiOutput("ui"),
        tags$p("First Input: "),
        verbatimTextOutput("value"),
        tags$p("Dynamic Input: "),
        width = 3
    )
  ),
  server = function(input, output) {
    output$ui <- renderUI({

      switch(input$select_Region,
        "ARECIBO" = selectInput("select_Distrito", label = "Distrito",
                                 choices = choices_Region_ARECIBO),
        "BAYAMON" = selectInput("select_Distrito", label = "Distrito",
                                 choices = choices_Region_BAYAMON),
        "CAGUAS" = selectInput("select_Distrito", label = "Distrito",
                                 choices = choices_Region_CAGUAS),
        "HUMACAO" = selectInput("select_Distrito", label = "Distrito",
                                 choices = choices_Region_HUMACAO),
        "MAYAGUEZ" = selectInput("select_Distrito", label = "Distrito",
                                 choices = choices_Region_MAYAGUEZ),
        "PONCE" = selectInput("select_Distrito", label = "Distrito",
                                 choices = choices_Region_PONCE),
        "SAN JUAN" = selectInput("select_Distrito", label = "Distrito",
                                 choices = choices_Region_SAN_JUAN)
      )
    })
    output$value <- renderPrint({ input$select_Region })
  }
)