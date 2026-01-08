# GAMS como optimizacion de procesos industriales
### Desarrollo de script en GAMS para la optimización de problemas de programación lineal.

Este proyecto contiene mis primeros pasos en GAMS para optimizar procesos, se demostrara las competencias que tengo en la investigación de operaciones, la aplicación sera en ejecutada en GAMS y llevada a Visual Studio Code con la extensión GAMS de Eunseong Park.

Carpeta nombrada "proyecto 1" es el incio, un PPL clasico desarrollado en GAMS.

<p align="center">
  <a href="https://www.youtube.com/watch?v=epcg0_m7Ir8" target="_blank">
    <img
      width="700"
      alt="Ver video"
      src="data:image/svg+xml;utf8,
<svg xmlns='http://www.w3.org/2000/svg' width='1280' height='720' viewBox='0 0 1280 720'>
  <image href='https://img.youtube.com/vi/VIDEO_ID/hqdefault.jpg' width='1280' height='720'/>
  <circle cx='640' cy='360' r='95' fill='black' fill-opacity='0.55'/>
  <polygon points='620,310 620,410 715,360' fill='white'/>
</svg>"
    />
  </a>
</p>


[![Mira el video en YouTube](https://img.youtube.com/vi/epcg0_m7Ir8/hqdefault.jpg)](https://www.youtube.com/watch?v=epcg0_m7Ir8)




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
   

