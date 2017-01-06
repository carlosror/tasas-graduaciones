library(shiny)

# Distritos de las regiones

choices_Region_ARECIBO <- c("ARECIBO" = "ARECIBO", "CAMUY" = "CAMUY", "MANATÍ" = "MANATÍ", "VEGA ALTA" = "VEGA ALTA")
choices_Region_BAYAMON <- c("BAYAMÓN" = "BAYAMÓN", "COROZAL" = "COROZAL", "OROCOVIS" = "OROCOVIS", "TOA BAJA" = "TOA BAJA")
choices_Region_CAGUAS <- list("BARRANQUITAS" = "BARRANQUITAS", "CIDRA" = "CIDRA", "GUAYAMA" = "GUAYAMA", "GURABO" = "GURABO")
choices_Region_HUMACAO <- list("CANÓVANAS" = "CANÓVANAS", "FAJARDO" = "FAJARDO", "LAS PIEDRAS" = "LAS PIEDRAS", "YABUCOA" = "YABUCOA")
choices_Region_MAYAGUEZ <- list("AGUADILLA" = "AGUADILLA", "CABO ROJO" = "CABO ROJO", "MAYAGÜEZ" = "MAYAGÜEZ", "SAN SEBASTIÁN" = "SAN SEBASTIÁN")
choices_Region_PONCE <- list("PONCE" = "PONCE", "SANTA ISABEL" = "SANTA ISABEL", "UTUADO" = "UTUADO", "YAUCO" = "YAUCO")
choices_Region_SAN_JUAN <- list("CAROLINA" = "CAROLINA", "GUAYNABO" = "GUAYNABO", "SAN JUAN I" = "SAN JUAN I", "SAN JUAN II" = "SAN JUAN II")

                        
# Municipios

# Municipios de distritos de región de Arecibo                        
choices_Distrito_ARECIBO <- c("ARECIBO I" = "ARECIBO I", "ARECIBO II" = "ARECIBO II", "HATILLO" = "HATILLO")
choices_Distrito_CAMUY <- c("CAMUY" = "CAMUY", "LARES" = "LARES", "QUEBRADILLAS" = "QUEBRADILLAS")
choices_Distrito_MANATI <- c("BARCELONETA" = "BARCELONETA", "CIALES" = "CIALES", "FLORIDA" = "FLORIDA", "MANATÍ" = "MANATÍ")
choices_Distrito_VEGA_ALTA <- c("DORADO" = "DORADO", "VEGA ALTA" = "VEGA ALTA", "VEGA BAJA" = "VEGA BAJA")

# Municipios de distritos de región de BAYAMON                      
choices_Distrito_BAYAMON <- c("BAYAMÓN I" = "BAYAMÓN I", "BAYAMÓN II" = "BAYAMÓN II", "BAYAMÓN III" = "BAYAMÓN III")
choices_Distrito_COROZAL <- c("COROZAL" = "COROZAL", "NARANJITO" = "NARANJITO")
choices_Distrito_OROCOVIS <- c("MOROVIS" = "MOROVIS", "OROCOVIS" = "OROCOVIS")
choices_Distrito_TOA_BAJA <- c("CATAÑO" = "CATAÑO", "TOA ALTA" = "TOA ALTA", "TOA BAJA" = "TOA BAJA")

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

shinyServer(function(input, output, session) {
    output$distritos_pulldown <- renderUI({
        region <- input$select_Region
        if (region == "ARECIBO") selectInput("select_Distrito", label = "Distrito", choices = choices_Region_ARECIBO)
        else if (region == "BAYAMÓN") selectInput("select_Distrito", label = "Distrito", choices = choices_Region_BAYAMON)
        else if (region == "CAGUAS") selectInput("select_Distrito", label = "Distrito", choices = choices_Region_CAGUAS)
        else if (region == "HUMACAO") selectInput("select_Distrito", label = "Distrito", choices = choices_Region_HUMACAO)
        else if (region == "MAYAGÜEZ") selectInput("select_Distrito", label = "Distrito", choices = choices_Region_MAYAGUEZ)
        else if (region == "PONCE") selectInput("select_Distrito", label = "Distrito", choices = choices_Region_PONCE)
        else if (region == "SAN JUAN") selectInput("select_Distrito", label = "Distrito", choices = choices_Region_SAN_JUAN)
    })
    output$municipios_pulldown <- renderUI({
        if (is.null(input$select_Distrito))
            return()
        
        repeated <- 'selectInput("select_Municipio", label = "Municipio",'
        distrito <- input$select_Distrito
        if (distrito == "ARECIBO") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_ARECIBO)
        else if (distrito == "CAMUY") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_CAMUY)
        else if (distrito == "MANATÍ") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_MANATI)
        else if (distrito == "VEGA ALTA") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_VEGA_ALTA)
        else if (distrito == "BAYAMÓN") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_BAYAMON)
        else if (distrito == "COROZAL") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_COROZAL)
        else if (distrito == "OROCOVIS") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_OROCOVIS)
        else if (distrito == "TOA BAJA") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_TOA_BAJA)
        else if (distrito == "BARRANQUITAS") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_BARRANQUITAS)
        else if (distrito == "CIDRA") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_CIDRA)
        else if (distrito == "GUAYAMA") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_GUAYAMA)
        else if (distrito == "GURABO") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_GURABO)
        else if (distrito == "CANÓVANAS") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_CANOVANAS)
        else if (distrito == "FAJARDO") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_FAJARDO)
        else if (distrito == "LAS PIEDRAS") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_LAS_PIEDRAS)
        else if (distrito == "YABUCOA") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_YABUCOA)
        else if (distrito == "AGUADILLA") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_AGUADILLA)
        else if (distrito == "CABO ROJO") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_CABO_ROJO)
        else if (distrito == "MAYAGÜEZ") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_MAYAGUEZ)
        else if (distrito == "SAN SEBASTIÁN") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_SAN_SEBASTIAN)
        else if (distrito == "PONCE") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_PONCE)
        else if (distrito == "SANTA ISABEL") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_SANTA_ISABEL)
        else if (distrito == "UTUADO") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_UTUADO)
        else if (distrito == "YAUCO") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_YAUCO)
        else if (distrito == "CAROLINA") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_CAROLINA)
        else if (distrito == "GUAYNABO") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_GUAYNABO)
        else if (distrito == "SAN JUAN I") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_SAN_JUAN_I)
        else if (distrito == "SAN JUAN II") selectInput("select_Municipio", label = "Municipio", choices = choices_Distrito_SAN_JUAN_II)

    })
    output$debug <- renderPrint({
        x <- switch(input$select_Region, "ARECIBO" = 4, "BAYAMÓN" = 5)
        x
        # z <- "ARECIBO"
        # z <- "BAYAMÓN"
        # y <- switch(z, "ARECIBO" = 4, "BAYAMÓN" = 5)
        # y
    })
})