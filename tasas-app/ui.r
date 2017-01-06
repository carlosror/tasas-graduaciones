library(shiny)

# Regiones

choices_Region <- c("ARECIBO" = "ARECIBO", "BAYAMÓN" = "BAYAMÓN", "CAGUAS" = "CAGUAS",
                    "HUMACAO" = "HUMACAO", "MAYAGÜEZ" = "MAYAGÜEZ", "PONCE" = "PONCE", 
                    "SAN JUAN" = "SAN JUAN" )

shinyUI(fluidPage(
  titlePanel(h3("Tasas de graduación de escuelas superiores de Puerto Rico en año académico 2013-2014"), 
                windowTitle = "Tasas de graduación de escuelas superiores de Puerto Rico en año académico 2013-2014"),
  sidebarLayout (
    sidebarPanel(
        selectInput("select_Region", label = "Región",
                    choices = choices_Region),
        uiOutput("distritos_pulldown"),
        uiOutput("municipios_pulldown"),
        HTML('<b style="color: #337ab7;"><a href="mailto:carlosgg123@gmail.com" target="_blank">carlosgg123@gmail.com</a></b>'),
        width = 3
    ),
    mainPanel(
        # Suppress errors on Municipios and Escuelas tabs. Couldn't figure them out.
        # Tried "if is null return" construct but didn't work
        # https://groups.google.com/forum/#!topic/shiny-discuss/FyMGa2R_Mgs
        tags$style(type="text/css", ".shiny-output-error { visibility: hidden; }",
                                    ".shiny-output-error:before { visibility: hidden; }"
        ),
        tabsetPanel(
            tabPanel("Regiones", plotOutput("regiones", width = "auto", height="768px")),
            tabPanel("Distritos", plotOutput("distritos", width = "auto", height="768px")),
            tabPanel("Municipios", plotOutput("municipios", width = "auto", height="568px")),
            tabPanel("Escuelas", plotOutput("escuelas", width = "auto", height = "640px")),
            tabPanel("Tabla", dataTableOutput("DataTable")),
            tabPanel("Referencias", htmlOutput("references"))
            # tabPanel("Debug", verbatimTextOutput("debug"))
        )
    )
)))