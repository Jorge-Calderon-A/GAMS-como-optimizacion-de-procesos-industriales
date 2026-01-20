# Despacho de energía eléctrica

Un sistema eléctrico tiene dos centrales de generación que abastecen dos centros de consumo durante un período horario.

Centrales generadoras
- Central 1
- Central 2
  
Capacidad máxima de generación
- Central 1: 50 MWh
- Central 2: 80 MWh

Centros de consumo
- Nodo A: 60 MWh
- Nodo B: 70 MWh

Costo de generación + transporte (USD/MWh)
- Central 1 / Nodo A: 20
- Central 1 / Nodo B: 25
- Central 2 / Nodo A: 22
- Central 2/ Nodo B: 18

El objetivo es minimizar el costo total del suministro eléctrico

### Procedimiento

- Los sets identificados son las centrales y los nodos del sistema
- Los parametros son:
  
      - Capacidad de generación en cada central
      - Consumo de cada nodo
      - Costos de generación y transporte en cada central y nodo

  - Las variables de decisión son las siguientes:
 
      - $X1_ab$

