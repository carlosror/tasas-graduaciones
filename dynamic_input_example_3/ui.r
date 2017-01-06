library(shiny)

# Regiones

choices_Region <- c("ARECIBO" = "ARECIBO", "BAYAMÓN" = "BAYAMÓN", "CAGUAS" = "CAGUAS",
                    "HUMACAO" = "HUMACAO", "MAYAGÜEZ" = "MAYAGÜEZ", "PONCE" = "PONCE", 
                    "SAN JUAN" = "SAN JUAN" )

shinyUI(fluidPage(
  titlePanel(h3("Test"), windowTitle = "Test"),
  sidebarLayout (
    sidebarPanel(
        selectInput("select_Region", label = "Región",
                    choices = choices_Region),
        uiOutput("distritos_pulldown"),
        uiOutput("municipios_pulldown"),
        width = 3
    ),
    mainPanel(
        tabsetPanel(
            tabPanel("Debug", verbatimTextOutput("debug"))
        )
    )
)))