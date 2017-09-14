


## Ejercicios ##


# Tipo de datos ----


### Ej: Hidden Figures IMDB ----

# Usando los siguientes objetos crea una lista 
# de tres elementos con nombres: director, stars y reviews.


director_hf <- "Theodore Melfi"
stars_hf <- c( "Taraji P. Henson", "Octavia Spencer", "Janelle Monáe",
               "Kirsten Dunst", "Kevin Costner", "Jim Parsons", 
               "Mahershala Ali")
reviews_hf <- data.frame(
  scores = c(9, 6, 5, 10),
  source = c( rep("IMDB", 4) ),
  comments = c("It made for an old-fashioned movie going experience...",
               "Evident Heroism, Hidden Doubts",
               "OK, but very disappointing",
               "Don't let Hidden Figures be a hidden treasure!")
)

# La lista se llama `hidden_figures`:
  

hidden_figures <- list(
  director = ,
  stars = ,
  reviews = 
)
str(hidden_figures)




### Ej: Calificación promedio ----
  
# Extrae los scores de la película `hidden_figures` y 
# con la función `mean()` calcula el promedio. 
# 
# 1. Primero deberás extraer el elemento que contiene los scores. Es un dataframe.
# 2. Después deberás seleccionar la columna de *scores*.
# 3. Por último calcular el promedio y asignarlo a `avg_reviews_hf`.
# 
# 
# Tip: Usando la función `str()` sobre la lista ubica el nivel
# en el que esta el valor *scores*.


reviews_df <- hidden_figures
reviews_vec <- 
  avg_reviews_hf <- mean(  )
avg_reviews_hf



### Ej: Pesos a dolares ----
  
# El siguiente vector presenta el precio de 
# la gasolina en diferentes localidades. 

gas_cdmx <- c(15.82, 15.77, 15.83, 15.23, 14.95, 15.42, 15.55)
gas_cdmx


# Usando la siguiente lista de tipo de cambio por mes:
  
# - Julio: 17.3808 
# - Agosto: 17.6084  
# - Septiembre: 17.7659 

# Crea un dataframe donde cada 
# variable/columna sea el precio en dolares 
# por cada mes. 

gas_usd_df <- data.frame(
  julio = gas_cdmx/
    agosto = 
    septiembre = 
)
print(gas_usd_df)




# Funciones ----

### Ej: Suma de valores absolutos 

# Crea una función que sume los valores
# absolutos de dos números. Los argumentos 
# deben ser estos números. 
# 
# Tip: Usa la función `abs()` para obtener 
# el valor absoluto de la función.

suma_abs_fun <- function(a, b){
  
}
suma_abs_fun(-4, 2) 



  
  
### Ej: Likes  ----
  
# Considerando el siguiente vector de likes
# de cada día de la semana.

likes <- c(16, 7, 9, 20, 2, 17, 11)
names(likes) <-  c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
likes

# Crea una función en la
# imprima *Hoy fuiste popular* si
# los likes del día fueron mayores a 15 y
# regrese el número de likes.
# 
# Si el número de likes es menor a 15, entonces
# imprime *:(* y regresa 0.
# 
# Usa la función `print()`.


likes_fun <- function(num) {
 if (num > ) {
   print()
   return()
 } else {
   print()    
   return()
 }
}

# Prueba la función para el primer elemento 
# del vector `likes`.


likes_fun(likes[1])



### Ej: Grafica de gasolina ----
 
# El siguiente vector presenta el precio de 
# la gasolina en diferentes localidades. 


gas_cdmx <- c(15.82, 15.77, 15.83, 15.23, 14.95, 15.42, 15.55)
gas_cdmx


# Completa la siguiente función tal que 
# considerando el argumento tipo de cambio, 
# imprima una grafica del vector en dolares y regrese este vector.


grafica_dolar_fun <- function(precio, tipo_cambio){
 precio_en_dolar <- precio/
   print(plot())
 return()
}


# Considerando el tipo de cambio 
# de los siguientes meses obten
# el vector y la grafica de cada mes. 
# 
# - Julio: 17.3808 
# - Agosto: 17.6084  


gas_dolar_julio <- grafica_dolar_fun(, 17.3808)
gas_dolar_agosto <- grafica_dolar_fun(, 17.6084)





### Ej: Instala y carga ----
 
# Instala y carga en tu computadora los paquetes
# en listados antes.

install.packages(readr)
install.packages(readxl)
install.packages(tidyr)
install.packages(dplyr)
install.packages(stringr)
install.packages(ggplot)
install.packages(lubridate)

library(readr)
library(readxl)
library(lubridate)
library(stringr)
library(tidyr)
library(dplyr)
library(ggplot)


### Ej: Search ----
 
# Después de cargar los paquetes 
# llama el comando `search()`

# ¿Observas las nuevas librerías de la sesión?





# Iteraciones ----

### Ej: Ciudad de México ----

# Considerando la lista siguiente,

cdmx_list <- list(
  pop = 8918653,
  delegaciones = c("Alvaro Obregón", "Azcapotzalco" ,"Benito Juárez" ,
                   "Coyoacán" ,"Cuajimalpa de Morelos" ,"Cuauhtémoc" ,
                   "Gustavo A. Madero" ,
                   "Iztacalco" ,"Iztapalapa" ,
                   "Magdalena Contreras" ,"Miguel Hidalgo" ,"Milpa Alta" ,
                   "Tláhuac" ,"Tlalpan" ,
                   "Venustiano Carranza" ,"Xochimilco"),
  capital = TRUE
)


# obten la clase 
# de cada elemento con la función `lapply()`.

lapply( , class)



### Ej: Mínimo y máximo ----
  
# La siguiente función extrae la letra de menor posicion
# y mayor posicion en orden alfabético. 

min_max_fun <- function(nombre){
  nombre_sinespacios <- gsub(" ", "", nombre)
  letras <- strsplit(nombre_sinespacios, split = "")[[1]]
  c(minimo = min(letras), maximo = max(letras))
}

# Es decir, si incluímos las letras `abcz` la letra 
# *mínima* es a y la *máxima* es z.


min_max_fun("abcz")


# El siguiente vector incluye el nombre 
# de las 16 delegaciones de la Ciudad de México.

delegaciones <- c("Alvaro Obregon", "Azcapotzalco" ,"Benito Juarez" ,
                  "Coyoacan" ,"Cuajimalpa de Morelos" ,"Cuauhtemoc" ,
                  "Gustavo Madero" ,
                  "Iztacalco" ,"Iztapalapa" ,
                  "Magdalena Contreras" ,"Miguel Hidalgo" ,"Milpa Alta" ,
                  "Tlahuac" ,"Tlalpan" ,
                  "Venustiano Carranza" ,"Xochimilco")

# Aplica la función `sapply()` para obtener un 
# arreglo con la letra máxima y mínima de cada nombre. 

sapply(, )



### Ej: Precio de la gasolina ----
  
# El siguiente vector incluye el precio de la
# gasolina en diferentes estados del país en julio 
# de 2017. 

gas_cdmx <- c(15.82, 15.77, 15.83, 15.23, 14.95, 15.42, 15.55)
gas_cdmx

# 1. Crea una función que convierta el precio a dolares
# suponiendo que un dolar equivale a 17.76 pesos.

conv_fun <- function(precio){
  /17.76
  return()
}


# 2. Usando la función `lapply()`
# convierte el precio de la gasolina a dolares.

gas_cdmx_usd_lista <- lapply(, conv_fun)


# 3. Usa la función `unlist()` para convertir la 
# lista a un vector. 

gas_cdmx_usd <- unlist()
print(gas_cdmx_usd)



### Ej: Estadísticos importantes ----

estadisticos <- c("GAUSS:1777", "BAYES:1702", "FISHER:1890", "PEARSON:1857")
split_estadisticos <- strsplit(estadisticos, split = ":")
split_estadisticos

# Usa la función predefinida `tolower()` y 
# `lapply()` para convertir a minúsculas 
# cada letra de la lista `split_estadisticos`.

split_lower <- lapply( , )
print(split_lower)




### Ej: Nombres y fechas ----
  
# Usando el vector `split_estadísticos` del 
# ejercicio anterior.

str(split_estadisticos)

# 1. Crea una función que regrese la 
# primera posición. 

primera_pos_fun <- function(lista){
  
}

# 2. Crea una función que 
# regrese la segunda posición.

segunda_pos_fun <- function(lista){
  
}

# 3. Usando `lapply()` crea una lista con los
# nombres de los estadísticos
# y otra con la fecha de nacimiento. 

nombres <- lapply()
fechas <- lapply()



### Ej: Función anónima ----
  
# Usando una función anónima y el vector `split_estadísticos` 
# en un solo `lapply()` o `sapply()` obten 
# un vector compuesto de la primera posición, es decir el nombre,
# en minúsculas. 
# 
# Tip: si usas `lapply()` recuerda usar la función `unlist()`.

nombre_estadisticos <- (split_estadisticos, function(elemento){
  tolower()
})
nombre_estadisticos



### Ej: Tempraturas ----
  
# En la siguiente lista se presenta el registro 
# de temperatura de tres ciudades
# a las 07:00 am, 10:00 am, 01:00 pm, 
# 04:00 pm y  07:00 pm.

temp_lista <- list(
  cdmx = c(13, 15, 19, 22, 20),
  guadalajara = c(18, 18, 22, 26, 27),
  tuxtla_gtz = c(22, 24, 29, 32, 28)
)
str(temp_lista)

# Completa la siguiente función que obtiene el promedio entre
# el valor mínimo y máximo registrados. 

promedio_extremos_fun <-  function(x) {
  ( min() + max() ) / 2
}

# Implementa la función a la lista y obten
# la temperatura promedio de extremos para cada
# ciudad usando `lapply()` y `sapply()`.

lapply(,)

sapply(,)




### Ej: ¡Demasiado Rápido! ----
  
# Crea una función del tipo `while` en la que 
# mientras la velocidad sea mayor a 50 km/hr 
# se reduzca de la siguiente forma:
#   
#   - Si es mayor a 80 km/hr se reducen 20 km/hr e imprime
# **¡Demasido rápido!**.
# 
# - Si es menor o igual a 80km/hr se reducen únicamente 
# 5 km/hr.

velocidad_act <- 140
while(velocidad_act > ){
  
  if(velocidad_act > ){
    print()
    velocidad_act <- 
  }
  if(velocidad_act < ){
    velocidad_act <- 
  }
  
  velocidad_act
}
