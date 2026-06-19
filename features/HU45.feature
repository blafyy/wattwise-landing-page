Feature: Ver comparativa de consumo con el vecindario
  Como usuario de EnergyAlert
  Quiero comparar mi consumo con el promedio de hogares similares
  Para saber si consumo más o menos que otros hogares de mi zona

  Scenario: Ver comparativa disponible con historial
    Given el usuario tiene al menos un mes de historial registrado
    When accede a la sección de comparativa en el dashboard
    Then ve su consumo vs el promedio de hogares similares en kWh y soles

  Scenario: Consumo por debajo del promedio
    Given el consumo del usuario es menor al promedio de su zona
    When observa el indicador de comparativa
    Then aparece "¡Bien hecho! Consumes menos que el promedio de tu zona" en color verde

  Scenario: Sin datos suficientes para comparativa
    Given no hay suficientes datos del vecindario para generar comparativa
    When el usuario accede a esa sección
    Then muestra "Comparativa no disponible para tu zona aún"
