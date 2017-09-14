Curso de Introducción a R
========================================================
author: SGMC
date: 7 de septiembre de 2017
autosize: false



<img src="figures/rchainsheets.jpeg" title="plot of chunk unnamed-chunk-2" alt="plot of chunk unnamed-chunk-2" width="70%" style="display: block; margin: auto;" />





Plan de trabajo
=====

  **I. Introducción a herramientas**
  
  **II. Tipos de datos**
  
  **III. Funciones e interaciones**
  
  **IV. Visualización**
  
  **V. Manipulación**
  
  **VI. Caso Práctico**
  
  
  
Bookdown: https://songeo.github.io/introduccion-r-bookdown/

Github: https://github.com/Songeo/introduccion-r-bookdown  
  
  
¿Qué es R?
========================================================


**Es un lenguaje de programación con enfoque al análisis estadístico.**

- Software libre (no dice qué puedes o no hacer con el software)

- De código abierto (todo el código de R se inspecciona)

- Funcionalidad adicional está en **paquetes** que la comunidad contribuye.

<img src="figures/Rlogo.png" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" width="20%" style="display: block; margin: auto;" />


R Console
========================================================

<img src="figures/rconsole.png" title="plot of chunk unnamed-chunk-4" alt="plot of chunk unnamed-chunk-4" width="80%" style="display: block; margin: auto;" />


RStudio 
========================================================
title: false

<img src="figures/RStudio-Logo-Blue-Gray-125.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" width="30%" style="display: block; margin: auto auto auto 0;" />

RStudio es una compañía que crea productos relacionados
a R.

El producto más conocido es el ambiente de desarrollo: 
**RStudioIDE (Integrated Development Environment)**

<img src="figures/rstudio-types-2.png" title="plot of chunk unnamed-chunk-6" alt="plot of chunk unnamed-chunk-6" width="80%" style="display: block; margin: auto;" />



Descarga e instalación
========================================================
title: false

<img src="figures/free-download.png" title="plot of chunk unnamed-chunk-7" alt="plot of chunk unnamed-chunk-7" width="30%" style="display: block; margin: auto auto auto 0;" />


Necesitamos instalar:

* R: **Comprenhensive R Archive Network** (CRAN)

https://cran.r-project.org/

* RStudio IDE

https://www.rstudio.com/products/rstudio/download/


  
  
Paneles RStudio
=====

<img src="figures/console-descr.png" title="plot of chunk unnamed-chunk-8" alt="plot of chunk unnamed-chunk-8" width="100%" style="display: block; margin: auto;" />


1. Consola
=====

Escribir en línea de comandos.

**Shortcuts:**
<img src="figures/shortcuts-commandline.png" title="plot of chunk unnamed-chunk-9" alt="plot of chunk unnamed-chunk-9" width="100%" style="display: block; margin: auto;" />

2. Código
=====

Desarrollo de código.

Documento **RScript**

**Shortcuts:**

<img src="figures/shortcuts-code.png" title="plot of chunk unnamed-chunk-10" alt="plot of chunk unnamed-chunk-10" width="100%" style="display: block; margin: auto;" />



Shorcuts para escribir
==== 
title: false

**Writting shortcuts:**

<img src="figures/shortcuts-writting.png" title="plot of chunk unnamed-chunk-11" alt="plot of chunk unnamed-chunk-11" width="100%" style="display: block; margin: auto;" />





TIPOS DE DATOS
===

En R existen cinco tipos de datos básicos:
  
    1. Vector
    2. Matriz
    3. Factor
    4. Dataframe
    5. Lista

