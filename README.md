# GAMS como optimizacion de procesos industriales
### Desarrollo de script en GAMS para la optimización de problemas de programación lineal.

Este proyecto contiene mis primeros pasos en GAMS para optimizar procesos, se demostrara las competencias que tengo en la investigación de operaciones, la aplicación sera en ejecutada en GAMS y llevada a Visual Studio Code con la extensión GAMS de Eunseong Park.

Carpeta nombrada "proyecto 1" es el incio, un PPL clasico desarrollado en GAMS.

🎬 Video: https://www.youtube.com/watch?v=epcg0_m7Ir8

GAMS sirve como programación de sistemas de optimización, es un lenguaje de alto nivel con un solver robusto, los detalles basicos que siempre sigo para crear un sistema de excelencia es similar al planteamiento de la modelación de sistemas, es decir, la clasica modelación textual que se tiene en optimización, esto es identificar 5 grandes aspectos del problema:

1. Sets: Los sets que identifico son caracteristicas que me permiten adjuntarlos a ciertos parametros, es decir, cuantas cosas tengo en el problema, si tengo x trenes o ciertos dias, evidentemente se convierte en un  set;

        Sets
           tr "Trenes" /t1*t30/   (cantidad de trenes de 1 a 30, por ello t1*t30, si fuera de 1 a 20, seria t1*t20)
           d  "dias"   /1*30/     (cantidad de dias del mes);

2. Los siguientes datos a analizar son los parameters, son datos asignados a los cuales se le pueden incluir sets y que juntos pueden generar una combinación de datos;

        Parameters
           c(d) "costo por dia"
           cap(d) "capacidad por dia"
           req(tr) "cantidad de mantenciones por cada tren";

Notese que en parameters definimos un costo (c) al cual lo llevamos junto a dias (d), es decir, el costo depende netamente de los dias involucrados entre el 1 al 30,
un set esta ligado de manera especial a los parametros, muchas veces es complejo comprender estos parametros ya que pueden ser demasiados cuando tenemos un modelamiento
muy extenso.

3. Una variable es una cantidad desconocida cuyo valor elige el solver para cumplir las ecuaciones y optimizar un objetivo, si el valor depende de una decision del modelo es porque es una variable, si el valor es un dato conocido es porque es un parametro. "variables" puede tomar cualquier numero real.

        variables
           x(tr,d) "¿El tren tr se mantiene el dia d?"
           z "costo total"

   Las variables pueden ser positivas solamente, esto generalmente se utiliza en PPL (Problemas de Programación Lineal) donde las variables no pueden causar efectos
   negativos, ya que se verian involucrada directamente en nuestra función objetivo.

        Positive variables
           x(tr,d);

   La siguiente variable puede tomar un numero binario, es decir, solo puede ser 0 o 1

        Binary variable
           x(tr,d);

   Por ultimo, esta variable puede tomar numeros enteros, es decir, no pueden ser decimales

        Integer variable
           x(tr,d);

   En las variables podemos asignar cotas superiores, inferiores, niveladas y marginales (x.l, x.up, x.lo, x.m)

        Variables
           P.up("solar")=50;        *El maximo para la planta (P) solar es 50
           P.lo("solar")=0;         *El minimo para la planta (P) solar es 0

   Por ultimo, se tienen que definir las restricciones para el PPL

           requerido(tr) .. sum(d, x(tr,d)) =e= req(tr);

           

       
        



   

