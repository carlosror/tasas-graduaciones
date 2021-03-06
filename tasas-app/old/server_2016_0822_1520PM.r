library(shiny)
library(ggplot2)

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

    # tasas is a golbal data frame, we denote it's global with "<<-"
    tasas <<- read.csv("tasas.csv", encoding="UTF-8")
    
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
    
    output$regiones <- renderPlot({
        
        relevant_data <- subset(tasas, Region != "OFICINA CENTRAL")
        
        # Base plot
        base_plot <- ggplot(relevant_data)
        
        # Color scheme
        # Color blind palette: http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/
        # removed black
        color_blind_palette <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
        
        # color_scheme <- scale_colour_brewer(palette="Accent")
        # color_fill_scheme <- scale_fill_brewer(palette="Accent")
        color_scheme <- scale_colour_manual(values = color_blind_palette)
        color_fill_scheme <- scale_fill_manual(values = color_blind_palette)
        
        # legend position
        legend_theme <- theme(legend.position = "top") 
        # Arranging legend list in two rows:
        # http://stackoverflow.com/questions/27130610/legend-on-bottom-two-rows-wrapped-in-ggplot2-in-r
        legend_arrange <- guides(fill=guide_legend(nrow=1))
                        
        regiones_boxplot <- base_plot + geom_boxplot(aes(x = Region, y = Tasa, fill = Categoria), outlier.colour = "red") + color_fill_scheme + xlab("Regiones") + ylab("Tasa de graduación")+ labs(fill=NULL) + legend_theme + legend_arrange
        
        regiones_barplot <- base_plot + geom_bar(aes(x = Tasa_bucket, fill = Categoria), position = "dodge") + color_fill_scheme + xlab("Tasa de graduación") + ylab("Escuelas")+ labs(fill=NULL) + legend_theme + legend_arrange
        
        multiplot(regiones_boxplot, regiones_barplot, cols=1)

    })
    
    output$distritos <- renderPlot({
        
        relevant_data <- subset(tasas, Region == input$select_Region)
        
        # Base plot
        base_plot <- ggplot(relevant_data)
        
        # Color scheme
        # Color blind palette: http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/
        # removed black
        color_blind_palette <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
        
        # color_scheme <- scale_colour_brewer(palette="Accent")
        # color_fill_scheme <- scale_fill_brewer(palette="Accent")
        color_scheme <- scale_colour_manual(values = color_blind_palette)
        color_fill_scheme <- scale_fill_manual(values = color_blind_palette)
        
        # legend position
        legend_theme <- theme(legend.position = "top") 
        # Arranging legend list in two rows:
        # http://stackoverflow.com/questions/27130610/legend-on-bottom-two-rows-wrapped-in-ggplot2-in-r
        legend_arrange <- guides(fill=guide_legend(nrow=1))
        
        distrito_boxplot <- base_plot + geom_boxplot(aes(x = Distrito, y = Tasa, fill = Categoria), outlier.colour = "red") + color_fill_scheme + xlab(paste("Distritos en región de", input$select_Region)) + ylab("Tasa de graduación")+ labs(fill=NULL) + legend_theme + legend_arrange
        
        distrito_barplot <- base_plot + geom_bar(aes(x = Tasa_bucket, fill = Categoria), position = "dodge") + color_fill_scheme + xlab("Tasa de graduación") + ylab(paste("Escuelas en región de", input$select_Region))+ labs(fill=NULL) + scale_y_discrete() + legend_theme + legend_arrange
        
        multiplot(distrito_boxplot, distrito_barplot, cols=1)

    })

    output$municipios <- renderPlot({
        
        relevant_data <- subset(tasas, Region == input$select_Region & Distrito == input$select_Distrito)
        
        # Base plot
        base_plot <- ggplot(relevant_data)
        
        # Color scheme
        # Color blind palette: http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/
        # removed black
        color_blind_palette <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
        
        # color_scheme <- scale_colour_brewer(palette="Accent")
        # color_fill_scheme <- scale_fill_brewer(palette="Accent")
        color_scheme <- scale_colour_manual(values = color_blind_palette)
        color_fill_scheme <- scale_fill_manual(values = color_blind_palette)
        
        # legend position
        legend_theme <- theme(legend.position = "top") 
        # Arranging legend list in two rows:
        # http://stackoverflow.com/questions/27130610/legend-on-bottom-two-rows-wrapped-in-ggplot2-in-r
        legend_arrange <- guides(fill=guide_legend(nrow=1))
        
        municipios_boxplot <- base_plot + geom_boxplot(aes(x = Municipio, y = Tasa, fill = Categoria), outlier.colour = "red") + color_fill_scheme + xlab(paste("Municipios en distrito de", input$select_Distrito)) + ylab("Tasa de graduación")+ labs(fill=NULL) + legend_theme + legend_arrange
        municipios_barplot <- base_plot + geom_bar(aes(x = Tasa_bucket, fill = Categoria), position = "dodge") + color_fill_scheme + xlab("Tasa de graduación") + ylab(paste("Escuelas en distrito de", input$select_Distrito)) + labs(fill=NULL) + scale_y_discrete() + legend_theme + legend_arrange
        
        municipios_table <- table(relevant_data$Municipio)
        municipios_table <- municipios_table[municipios_table > 0]
        # print(municipios_table)
        
        muni_plot_list = list()
        for (muni in names(municipios_table)) {
            relevant_data_muni <- subset(relevant_data, Municipio == muni)
            base_plot_muni <- ggplot(relevant_data_muni)
            muni_escuelas_plot <- base_plot_muni + geom_bar(aes(x = Escuela, y = Tasa, fill = Categoria), position = "dodge", stat="identity") + labs(fill=NULL) + color_fill_scheme + legend_theme + legend_arrange
            muni_escuelas_plot <- muni_escuelas_plot + xlab(paste("Escuelas en municipio de", muni)) + ylab("Tasa de graduación")
            muni_plot_list <- c(muni_plot_list, list(muni_escuelas_plot))
        }
        print("ok")
        # multiplot(municipios_boxplot, municipios_barplot, cols=1)
        multiplot(plotlist = muni_plot_list)
        
        # escuelas_barplot <- base_plot + geom_bar(aes(x = Escuela, y = Tasa, fill = Categoria), position = "dodge", stat="identity") + facet_wrap(~ Municipio) + color_fill_scheme + legend_theme + legend_arrange
        # escuelas_barplot

    })
    
    output$debug <- renderPrint({
        x <- switch(input$select_Region, "ARECIBO" = 4, "BAYAMÓN" = 5)
        x
        # z <- "ARECIBO"
        # z <- "BAYAMÓN"
        # y <- switch(z, "ARECIBO" = 4, "BAYAMÓN" = 5)
        # y
    })
    
    # Multiple plot function
    # http://www.cookbook-r.com/Graphs/Multiple_graphs_on_one_page_(ggplot2)/
    #
    # ggplot objects can be passed in ..., or to plotlist (as a list of ggplot objects)
    # - cols:   Number of columns in layout
    # - layout: A matrix specifying the layout. If present, 'cols' is ignored.
    #
    # If the layout is something like matrix(c(1,2,3,3), nrow=2, byrow=TRUE),
    # then plot 1 will go in the upper left, 2 will go in the upper right, and
    # 3 will go all the way across the bottom.
    #
    multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) {
      library(grid)

      # Make a list from the ... arguments and plotlist
      plots <- c(list(...), plotlist)

      numPlots = length(plots)

      # If layout is NULL, then use 'cols' to determine layout
      if (is.null(layout)) {
        # Make the panel
        # ncol: Number of columns of plots
        # nrow: Number of rows needed, calculated from # of cols
        layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                        ncol = cols, nrow = ceiling(numPlots/cols))
      }

     if (numPlots==1) {
        print(plots[[1]])

      } else {
        # Set up the page
        grid.newpage()
        pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))

        # Make each plot, in the correct location
        for (i in 1:numPlots) {
          # Get the i,j matrix positions of the regions that contain this subplot
          matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))

          print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                          layout.pos.col = matchidx$col))
        }
      }
    }
})