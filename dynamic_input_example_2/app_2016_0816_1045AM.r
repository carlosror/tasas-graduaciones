library(shiny)

choices_A <- list("Choice A" = 1, "Choice B" = 2, "Choice C" = 3)
choices_B <- list("Choice B1" = 4, "Choice B2" = 5, "Choice B3" = 6)
choices_C <- list("Choice C1" = 7, "Choice C2" = 8, "Choice C3" = 9)

# Regiones

choices_Region <- c("ARECIBO" = "ARECIBO", "BAYAMÓN" = "BAYAMON", "CAGUAS" = "CAGUAS",
                       "HUMACAO" = "HUMACAO", "MAYAGÜEZ" = "MAYAGUEZ", "PONCE" = "PONCE", 
                       "SAN JUAN" = "SAN JUAN" )

# Distritos de las regiones

choices_Region_ARECIBO <- list("ARECIBO" = "ARECIBO", "CAMUY" = "CAMUY", "MANATÍ" = "MANATI",
                        "VEGA ALTA" = "VEGA ALTA")
choices_Region_BAYAMON <- list("BAYAMÓN" = "BAYAMON", "COROZAL" = "COROZAL", "OROCOVIS" = "OROCOVIS",
                        "TOA BAJA" = "TOA BAJA")
choices_Region_CAGUAS <- list("BARRANQUITAS" = "BARRANQUITAS", "CIDRA" = "CIDRA", "GUAYAMA" = "GUAYAMA",
                        "GURABO" = "GURABO")
choices_Region_HUMACAO <- list("CANÓVANAS" = "CANÓVANAS", "FAJARDO" = "FAJARDO", "LAS PIEDRAS" = "LAS PIEDRAS",
                        "YABUCOA" = "YABUCOA")
choices_Region_MAYAGUEZ <- list("AGUADILLA" = "AGUADILLA", "CABO ROJO" = "CABO ROJO", "MAYAGÜEZ" = "MAYAGÜEZ",
                        "SAN SEBASTIÁN" = "SAN SEBASTIÁN")
choices_Region_PONCE <- list("PONCE" = "PONCE", "SANTA ISABEL" = "SANTA ISABEL", "UTUADO" = "UTUADO",
                        "YAUCO" = "YAUCO")
choices_Region_SAN_JUAN <- list("CAROLINA" = "CAROLINA", "GUAYNABO" = "GUAYNABO", "SAN JUAN I" = "SAN JUAN I",
                        "SAN JUAN II" = "SAN JUAN II")

# Municipios

# Municipios de distritos de región de Arecibo                        
choices_Distrito_ARECIBO <- list("ARECIBO I" = "ARECIBO I", "ARECIBO II" = "ARECIBO II", "HATILLO" = "HATILLO")
choices_Distrito_CAMUY <- list("CAMUY" = "CAMUY", "LARES" = "LARES", "QUEBRADILLAS" = "QUEBRADILLAS")
choices_Distrito_MANATI <- list("BARCELONETA" = "BARCELONETA", "CIALES" = "CIALES", "FLORIDA" = "FLORIDA", "MANATÍ" = "MANATI")
choices_Distrito_VEGA_ALTA <- list("DORADO" = "DORADO", "VEGA ALTA" = "VEGA ALTA", "VEGA BAJA" = "VEGA BAJA")

# Municipios de distritos de región de BAYAMON                      
choices_Distrito_BAYAMON <- list("BAYAMÓN I" = "BAYAMÓN I", "BAYAMÓN II" = "BAYAMÓN II", "BAYAMÓN III" = "BAYAMÓN III")
choices_Distrito_COROZAL <- list("COROZAL" = "COROZAL", "NARANJITO" = "NARANJITO")
choices_Distrito_OROCOVIS <- list("MOROVIS" = "MOROVIS", "OROCOVIS" = "OROCOVIS")
choices_Distrito_TOA_BAJA <- list("CATAÑO" = "CATAÑO", "TOA ALTA" = "TOA ALTA", "TOA BAJA" = "TOA BAJA")

# Municipios de distritos de región de CAGUAS                      
choices_Distrito_BARRANQUITAS <- list("AIBONITO" = "AIBONITO", "BARRANQUITAS" = "BARRANQUITAS", "COMERÍO" = "COMERIO")
choices_Distrito_CIDRA <- list("AGUAS BUENAS" = "AGUAS BUENAS", "CAYEY" = "CAYEY", "CIDRA" = "CIDRA")
choices_Distrito_GUAYAMA <- list("ARROYO" = "ARROYO", "GUAYAMA" = "GUAYAMA", "SALINAS" = "SALINAS")
choices_Distrito_GURABO <- list("CAGUAS I" = "CAGUAS I", "CAGUAS II" = "CAGUAS II", "GURABO" = "GURABO")

# Municipios de distritos de región de HUMACAO                      
choices_Distrito_CANOVANAS <- list("CANÓVANAS" = "CANÓVANAS", "LOÍZA" = "LOÍZA", "LUQUILLO" = "LUQUILLO", "RÍO GRANDE" = "RÍO GRANDE")
choices_Distrito_FAJARDO <- list("CEIBA" = "CEIBA", "CULEBRA" = "CULEBRA", "FAJARDO" = "FAJARDO", "NAGUABO" = "NAGUABO", "VIEQUES" = "VIEQUES")
choices_Distrito_LAS_PIEDRAS <- list("HUMACAO" = "HUMACAO", "JUNCOS" = "JUNCOS", "LAS PIEDRAS" = "LAS PIEDRAS")
choices_Distrito_YABUCOA <- list("MAUNABO" = "MAUNABO", "PATILLAS" = "PATILLAS", "SAN LORENZO" = "SAN LORENZO", "YABUCOA" = "YABUCOA")

# Municipios de distritos de región de MAYAGÜEZ                      
choices_Distrito_AGUADILLA <- list("AGUADA" = "AGUADA", "AGUADILLA" = "AGUADILLA", "AÑASCO" = "AÑASCO", "RINCÓN" = "RINCÓN")
choices_Distrito_CABO_ROJO <- list("CABO ROJO" = "CABO ROJO", "LAJAS" = "LAJAS", "SÁBANA GRANDE" = "SÁBANA GRANDE", "SAN GERMÁN" = "SAN GERMÁN")
choices_Distrito_MAYAGUEZ <- list("HORMIGUEROS" = "HORMIGUEROS", "LAS MARÍAS" = "LAS MARÍAS", "MARICAO" = "MARICAO", "MAYAGÜEZ" = "MAYAGÜEZ")
choices_Distrito_SAN_SEBASTIAN <- list("ISABELA" = "ISABELA", "MOCA" = "MOCA", "SAN SEBASTIÁN" = "SAN SEBASTIÁN")

# Municipios de distritos de región de PONCE                      
choices_Distrito_PONCE <- list("PONCE I" = "PONCE I", "PONCE II" = "PONCE II", "PONCE III" = "PONCE III")
choices_Distrito_SANTA_ISABEL <- list("COAMO" = "COAMO", "JUANA DÍAZ" = "JUANA DÍAZ", "SANTA ISABEL" = "SANTA ISABEL", "VILLALBA" = "VILLALBA")
choices_Distrito_UTUADO <- list("ADJUNTAS" = "ADJUNTAS", "JAYUYA" = "JAYUYA", "UTUADO" = "UTUADO")
choices_Distrito_YAUCO <- list("GUÁNICA" = "GUÁNICA", "GUAYANILLA" = "GUAYANILLA", "PEÑUELAS" = "PEÑUELAS", "YAUCO" = "YAUCO")

# Municipios de distritos de región de SAN JUAN                      
choices_Distrito_CAROLINA <- list("CAROLINA I" = "CAROLINA I", "CAROLINA II" = "CAROLINA II")
choices_Distrito_GUAYNABO <- list("GUAYNABO" = "GUAYNABO", "TRUJILLO ALTO" = "TRUJILLO ALTO")
choices_Distrito_SAN_JUAN_I <- list("SAN JUAN I" = "SAN JUAN I", "SAN JUAN II" = "SAN JUAN II")
choices_Distrito_SAN_JUAN_II <- list("SAN JUAN III" = "SAN JUAN III", "SAN JUAN IV" = "SAN JUAN IV", "SAN JUAN V" = "SAN JUAN V")



shinyApp(
  ui = fluidPage(
    titlePanel("Cascading selects"),
    sidebarPanel(
        selectInput("select_Region", label = "Región",
                    choices = choices_Region),
        uiOutput("ui"),
        uiOutput("ui2"),
        tags$p("First Input: "),
        verbatimTextOutput("value"),
        verbatimTextOutput("value2"),
        tags$p("Dynamic Input: "),
        width = 3
    )
  ),
  server = function(input, output) {
    output$ui <- renderUI({
      # print(input$select_Region)
      switch(input$select_Region,
        "ARECIBO" = selectInput("select_Distrito", label = "Distrito", choices = choices_Region_ARECIBO),
        "BAYAMON" = selectInput("select_Distrito", label = "Distrito", choices = choices_Region_BAYAMON)
        # "CAGUAS" = selectInput("select_Distrito", label = "Distrito",
                                 # choices = choices_Region_CAGUAS),
        # "HUMACAO" = selectInput("select_Distrito", label = "Distrito",
                                 # choices = choices_Region_HUMACAO),
        # "MAYAGÜEZ" = selectInput("select_Distrito", label = "Distrito",
                                 # choices = choices_Region_MAYAGUEZ),
        # "PONCE" = selectInput("select_Distrito", label = "Distrito",
                                 # choices = choices_Region_PONCE),
        # "SAN JUAN" = selectInput("select_Distrito", label = "Distrito",
                                 # choices = choices_Region_SAN_JUAN)
      )
    })
    output$ui2 <- renderUI({

      switch(input$select_Distrito,
        "ARECIBO" = selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_ARECIBO),
        "CAMUY" = selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_CAMUY),
        "MANATI" = selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_MANATI),
        "VEGA ALTA" = selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_VEGA_ALTA),
        "BAYAMON" = selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_BAYAMON),
        "COROZAL" = selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_COROZAL),
        "OROCOVIS" = selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_OROCOVIS),
        "TOA BAJA" = selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_TOA_BAJA)
        # "BARRANQUITAS" = selectInput("select_Municipio", label = "Municipio",
                                 # choices = choices_Distrito_BARRANQUITAS),
        # "CIDRA" = selectInput("select_Municipio", label = "Municipio",
                                 # choices = choices_Distrito_CIDRA),
        # "GUAYAMA" = selectInput("select_Municipio", label = "Municipio",
                                 # choices = choices_Distrito_GUAYAMA),
        # "GURABO" = selectInput("select_Municipio", label = "Municipio",
                                 # choices = choices_Distrito_GURABO)
      )
    })
    output$value <- renderPrint({ input$select_Region })
    output$value2 <- renderPrint({ input$select_Distrito })
  }
)