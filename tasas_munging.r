################################
# Tidying up the data
################################

# There's very little tidying up needed
# I fixed the tildes on the file. There are no NA's in the file

tasas <- read.csv("Tasas_de_graduacion_escuelas_superiores_PR_2013-2014.csv", encoding="UTF-8")

# We don't need the Codigo (high school code) column so throw it out
tasas$Codigo <- NULL

# Will only use some of the categories
tasas <- subset(tasas, Categoria == "TODOS" | Categoria == "IMPEDIDOS" | Categoria == "BAJO NIVEL DE POBREZA" | Categoria == "FEMENINO" | Categoria == "MASCULINO")

# Will remove schools that show 0 total Graduados, under the assumption that the data simply wasn't collected
# Someone must have graduated unless the school was closed or something
escuela_to_remove_1 <- "FRANCISCO GARCÍA BOYRIE"
Encoding(escuela_to_remove_1) <- "UTF-8"
escuela_to_remove_2 <- "EDUCACIÓN BILINGÜE DE CIDRA"
Encoding(escuela_to_remove_2) <- "UTF-8"
escuela_to_remove_3 <- "ANTONIO R. BARCELÓ"
Encoding(escuela_to_remove_3) <- "UTF-8"
escuela_to_remove_4 <- "ARSENIO MARTÍNEZ"
Encoding(escuela_to_remove_4) <- "UTF-8"

tasas <- subset(tasas, Escuela != escuela_to_remove_1 & Escuela != escuela_to_remove_2 & 
                       Escuela != escuela_to_remove_3 & Escuela != escuela_to_remove_4)
# The schools removed:
# "Region: CAGUAS, FRANCISCO GARCÍA BOYRIE"    
# "Region: CAGUAS, EDUCACIÓN BILINGÜE DE CIDRA"
# "Region: HUMACAO, ANTONIO R. BARCELÓ"
# "Region: MAYAGÜEZ, ARSENIO MARTÍNEZ"

# Will remove rows where both Graduados and Cohorte equal zero.
# All are handicapped rows, implying the school had no handicapped students that year
tasas <- subset(tasas, !(Graduados == 0 & Cohorte == 0))
# Rows removed:
# "Region: ARECIBO Escuela: NUEVA BRÍGIDA ÁLVAREZ (ESPECIALIZADA) Categoria: IMPEDIDOS"
# "Region: MAYAGÜEZ Escuela: CENTRO RES. OPORTUNIDADES EDUC. (ESPECIALIZADA) Categoria: IMPEDIDOS"
# "Region: SAN JUAN Escuela: JULIÁN BLANCO (ESPECIALIZADA BALLET) Categoria: IMPEDIDOS"

# Change Tasa format from "75.23%" to "75"
tasas$Tasa <- round(100 * tasas$Graduados/(tasas$Cohorte + 0.001)) # 0.001 handles division by zero

# Create Tasa de Graduacion buckets
# http://stackoverflow.com/questions/23316161/the-condition-has-length-1-and-only-the-first-element-will-be-used
# Not as straightforward as it seems
bucket_1 <- tasas$Tasa < 50
bucket_2 <- tasas$Tasa >= 50 & tasas$Tasa < 60
bucket_3 <- tasas$Tasa >= 60 & tasas$Tasa < 70
bucket_4 <- tasas$Tasa >= 70 & tasas$Tasa < 80
bucket_5 <- tasas$Tasa >= 80
tasas[bucket_1, "Tasa_bucket"] <- "< 50%"
tasas[bucket_2, "Tasa_bucket"] <- "50% - 59%"
tasas[bucket_3, "Tasa_bucket"] <- "60% - 69%"
tasas[bucket_4, "Tasa_bucket"] <- "70% - 79%"
tasas[bucket_5, "Tasa_bucket"] <- "80% - 100%"

write.table(tasas, "tasas.csv", sep=",", row.names=FALSE, fileEncoding = "UTF-8")