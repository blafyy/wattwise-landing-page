Feature: Ver sección Cómo funciona en la Landing Page
  Como visitante
  Quiero entender el proceso de uso de EnergyAlert en pasos simples
  Para saber qué debo hacer para empezar a usar la aplicación

  Scenario: Ver los 4 pasos del proceso
    Given el visitante accede a la sección "Cómo funciona"
    When la sección carga correctamente
    Then se muestran 4 pasos numerados con título y descripción
    And cada paso tiene un número circular en azul como indicador visual

  Scenario: Navegación al CTA desde la sección
    Given el visitante ha leído la sección "Cómo funciona"
    When toca el botón "Ver demo"
    Then la página hace scroll hasta la siguiente sección relevante

  Scenario: Visualización en dispositivo móvil
    Given el visitante accede desde un dispositivo móvil
    When llega a la sección "Cómo funciona"
    Then los pasos se muestran en una sola columna vertical
    And el contenido es legible y bien espaciado
