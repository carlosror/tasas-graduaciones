library(shiny)

choices_Region <- c("ARECIBO" = "ARECIBO", "BAYAMÓN" = "BAYAMÓN", "CAGUAS" = "CAGUAS")

shinyUI(fluidPage(
  titlePanel(h3("Test"), windowTitle = "Test"),
  sidebarLayout (
    sidebarPanel(
        selectInput("select_Region", label = "Región", choices = choices_Region)
    ),
    mainPanel(
        tabsetPanel(
            tabPanel("Debug", verbatimTextOutput("debug"))
        )
    )
)))