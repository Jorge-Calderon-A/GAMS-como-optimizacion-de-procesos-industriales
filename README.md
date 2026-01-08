# GAMS como optimizacion de procesos industriales
### Desarrollo de script en GAMS para la optimización de problemas de programación lineal.

Este proyecto contiene mis primeros pasos en GAMS para optimizar procesos, se demostrara las competencias que tengo en la investigación de operaciones, la aplicación sera en ejecutada en GAMS y llevada a Visual Studio Code con la extensión GAMS de Eunseong Park.

Carpeta nombrada "proyecto 1" es el incio, un PPL clasico desarrollado en GAMS.

🎬 Video: https://www.youtube.com/watch?v=epcg0_m7Ir8

<p align="center">
  ▶️ <strong>Ver en YouTube</strong>
</p>


GAMS sirve como programación de sistemas de optimización, es un lenguaje de alto nivel con un solver robusto, los detalles basicos que siempre sigo para crear un sistema de excelencia es similar al planteamiento de la modelación de sistemas, es decir, la clasica modelación textual que se tiene en optimización, esto es identificar 5 grandes aspectos del problema:

1. Sets: Los sets que identifico son caracteristicas que me permiten adjuntarlos a ciertos parametros, es decir, cuantas cosas tengo en el problema, si tengo x trenes o ciertos dias, evidentemente se convierte en un  set;

        Sets
           tr "Trenes" /t1*t30/   (cantidad de trenes de 1 a 40, por ello t1*t40, si fuera de 1 a 20, seria t1*t20)
           d  "dias"   /1*30/     (cantidad de dias del mes);

2. Los siguientes datos a analizar son los parameters, son datos asignados a los cuales se le pueden incluir sets y que juntos pueden generar una combinación de datos;

        Parameters
           c(d) "costo por dia"
           cap(d) "capacidad por dia"
           req(tr) "cantidad de mantenciones por cada tren";
   

