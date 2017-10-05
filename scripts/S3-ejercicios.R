
library(tidyverse)


# 1. tidy datos medicos simulados ----

# http://barryrowlingson.github.io/hadleyverse/#16

# Presion arterial sistólica y diastólica ("datos/blood_pressure.csv")
df.bp <- read_csv()

# ¿Cuáles son las variables? 
# Presión sistólica y diastólica por semana y paciente
df.bp.long <- df.bp %>% 
  gather(week, bp,)

# ¿Cómo separo las dos variable? 
# Obtén dos variables ("sys", "dia")
df.bp.tidy <- df.bp.long %>% 
  separate(col = , into = , sep =)

# ¿Cómo cambia las variables a valores numéricos y fechas?
df.bp.useful <- df.bp.tidy %>% 
  mutate(week = parse_number(),
         sys = as.numeric(),
         dia = as.numeric(),
         start = as.Date(, "%m/%d/%y"))

# Mas de un tipo de observación en una misma tabla (d)
df.bp.sys <- df.bp.useful %>% 
  dplyr::select(name, age, start, week, )

df.bp.dia <- df.bp.useful %>% 
  dplyr::select(name, age, start, week, )

# ¿Cómo se ve el progreso de cada persona por semana?
# Grafica la presión arterial sistólica por persona
# Usa un color (color) y tipo de línea (linetype) por nombre
ggplot(df.bp.sys, aes(x = , 
                      y = ,
                      color = name,
                      linetype = name) ) + 
  geom_point(size = 2) +
  geom_line(size = 1) 


# Facetting de tipo de presión arterial
df.bp.facet <- df.bp.useful %>% 
  gather(type, bp, c(sys, dia))

ggplot(df.bp.facet, aes(x = week, 
                        y = bp,
                        color = name,
                        linetype = name) ) + 
  geom_point(size = 2) +
  geom_line(size = 1) + 
  facet_wrap(~type, scales = "free_y")





# 2. Casos de tuberculosis ----

# https://github.com/rstudio/EDAWR

# Número de casos confirmados de tuberculosis por país y año
# Organización Mundial de la Salud

# Variables:
# iso2,iso2: 2 & 3 letter ISO country codes

# method of diagnosis 
# (rel = relapse, sn = negative pulmonary smear, sp = positive pulmonary smear, ep = extrapulmonary)

# gender 
# (f = female, m = male) 

# age group 
# (014 = 0-14 yrs of age, 
# 1524 = 15-24 years of age, 
# 2534 = 25 to 34 years of age, 
# 3544 = 35 to 44 years of age, 
# 4554 = 45 to 54 years of age, 
# 5564 = 55 to 64 years of age, 
# 65 = 65 years of age or older)

# Cargar .RData ("datos/who.RData")
load()

# ¿Cuál es la dimensión de who?
dim(who)

# ¿Cuántos NA's tiene cada columna del dataframe?
apply(is.na(), 2, sum)

# Únicamente analizaremos diagnostico smear-positive pulmonary (sp)
df.who.sp <- who %>% 
  dplyr::select(country:year, starts_with())
df.who.sp

# Long data sin NA's (na.rm = T)
df.who.long <- df.who.sp %>% 
  gather(key = variable, value = count, , na.rm = T) 

# Separa las variables: gender y age 
df.who.separate <- df.who.long %>% 
  separate(col = variable, into = , sep = 8) 

df.who.tidy <-  %>% 
  mutate( gender = sub("new_sp_", "", gender), 
          age = factor(age, 
                       levels = c("014", "04", "1524", "2534", "3544",
                                  "4554", "514",  "5564", "65","u"),
                       labels = c("0-14", "0-4", "15-24", "25-34", "35-44",
                                  "45-54", "5-14",  "55-64", "65+","unknown")
          )
  )

# Calcula los conteos mundiales por grupo de edad
df.summ <- df.who.tidy %>% 
  group_by() %>% 
  summarise(acumulado = sum())

# Grafica los conteos mundiales por grupo de edad
ggplot(df.summ, aes(x = , 
                    y = ,
                    color = factor(age),
                    linetype = factor(age))) + 
  geom_line(size = 1)




# 3. Efecto simulado de una intervención ----

# https://stackoverflow.com/questions/29775461/how-can-i-spread-repeated-measures-of-multiple-variables-into-wide-format

# Resultados de dos pruebas antes y después de una intervención

# Leer datos: ("datos/test_scores.txt")
df.scores <- read_table()

# ¿Cuales son las variables?
str(df.scores)

# person
# time: pre intervention score and post intervention score
# test: test scores

# Variables almacenadas en filas y columnas (c)
# Es necesario tener los resultados de cada prueba como una variable
df.scores.long <- df.scores %>% 
  gather(test, score, )

# Los scores antes y despues de la intervención deben ser una columna
df.scores.tidy <- df.scores.long %>% 
  spread()

# Calcula la diferencia antes y despues de intervención
df.scores.dif <- df.scores.tidy %>% 
  mutate(dif = )

# Grafica la diferencia entre pruebas por persona
ggplot(df.scores.dif, 
       aes(x = , 
           y = , 
           color = test,
           group = person)) + 
  geom_path(arrow = arrow(length = unit(0.25, "cm")), 
            color = "gray50") +
  geom_point(size = 2) 



# 4. Relación entre ingreso y afiliación religiosa ----

# http://www.pewforum.org/2009/01/30/income-distribution-within-us-religious-groups/

# Leer datos: http://stat405.had.co.nz/data/pew.txt
df.pew <- read_delim(file = , 
                     delim = "\t")

# ¿Cuáles son las variables-?
df.pew %>% str()
df.pew %>% head

# Datos en versión larga
pew.long <- df.pew %>% 
  gather(income, frequency, )

pew.long

# Obtén el la proporción de afiliados por cada nivel de 
# ingreso de cada religión y 
# convierte la variable `income` un factor con los niveles `income.levels`.

income.levels <- c('<$10k','$10-20k','$20-30k','$30-40k',
                   '$40-50k','$50-75k','$75-100k',
                   '$100-150k',">150k','Don't know/refused")
df.pew.prop <- pew.long %>% 
  group_by() %>% 
  mutate(total = sum(frequency),
         prop = frequency/total,
         income = factor(labels = income, 
                         levels = )) 

# Grafica la proporción de miembros por nivel de ingreso y 
# cada religion debe tener un color
ggplot(df.pew.prop, aes(x = ,
                        y = , 
                        group = ,
                        color = )) +
  geom_line(size = 1) + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) 




# 5. Vuelos de NY ----

# Para este ejercicio será necesario descargar el paquete `nycflights13`

# install.packages("nycflights13")
# library(nycflights13)

# Crea una tabla únicamente con los vuelos del primero de enero
flights %>% 
  filter(month == , 
         day == ) 

# Calcula el retraso de salida promedio
flights %>% 
  summarise(delay = mean(, na.rm = T))

# Calcula el retraso de salida promedio por mes y hora
tab <- flights %>% 
  group_by() %>% 
  summarise(delay_mean = ) 

# Realiza una serie de tiempo del retraso de salida promedio por cada hora
# Cada mes debe ser una serie con un color distinto
 %>% 
  ggplot(aes(x = hour, y = ,
             color = factor()) ) + 
  geom_line() 


# Calcula el numero de vuelos, la distancia promedio recorrida (distance) y 
# el retraso de llegada (arr_delay) promedio por cada destino (dest)
df.arrdelay <- 
  flights %>% 
  group_by() %>% 
  summarise(count = n(),
            dist = ,
            arr_delay =)

# En un grafico de dispersión la distancia vs el retraso de llegada promedio.
# Agrega un valor estetico de tamaño (size) del número de vuelos.
# Filtra los destinos con mas de 20 vuelos (count) y elimina el destino "HNL".
# Agrega un suavizamiento
df.arrdelay %>% 
  filter() %>% 
  ggplot( aes(x = dist, y = )) +
  geom_point(aes(size = ), alpha = .3) +
  geom_smooth(se = FALSE)



# 6. Marginacion de entidades ----

# Una misma unidad observacional está almacenada en múltiples tablas. 

# Extraemos todos los archivos por entidad: "datos/conapo/"
conapo.files.vec <- list.files()

# 32 entidades 
length(conapo.files.vec)

# Iteración sobre el vector de archivos para extraerlos
read.conapo.l <- lapply(, function(file){
  path.read <- paste0("datos/conapo/", file)
  df.file <- read_csv(path.read) %>% 
    mutate(CVE_ENT = as.character(CVE_ENT))
})

# Características de elementos de la lista 
lapply(read.conapo.l, head)
sapply(read.conapo.l, names)

# Union de las diferentes tablas `bind_rows()`
df.conapo <-  %>% 
  bind_rows()

df.conapo %>% str

# Calcula el promedio de cada indicador por entidad federativa
tab <- df.conapo %>% 
  group_by() %>% 
  summarise()

# Crea un gráfico de dispersión de proporción sin primaria (sin_primaria) vs 
# proporción analfabeta (analfabeta) de la población.
# Agrega una variable estética de tamaño (size) sobre la proporción de hogares
# con hacinamiento (con_hacinamiento)

ggplot(tab, aes(x = , 
                y = )) + 
  geom_point(aes(size = ),
             alpha = .5, color = "blue")  + 
  geom_text(aes(label = NOM_ENT), 
            check_overlap = T)
