Feature: Ver proyección de consumo para fin de mes
  Como usuario de EnergyAlert
  Quiero ver una proyección de mi consumo y costo para fin de mes
  Para tomar acciones antes de que llegue el recibo

  Scenario: Proyección disponible con suficiente historial
    Given el usuario tiene al menos 7 días de historial de consumo
    When visualiza la tarjeta de proyección en el Home
    Then ve el consumo proyectado en kWh y el costo estimado en soles

  Scenario: Proyección indica consumo excesivo
    Given la proyección supera el umbral mensual configurado
    When el usuario ve la tarjeta de proyección
    Then la tarjeta se muestra en color rojo o naranja de alerta
    And muestra "Vas a superar tu límite. Considera reducir tu consumo."

  Scenario: Sin suficiente historial para proyectar
    Given el usuario tiene menos de 7 días de historial
    When observa la sección de proyección
    Then muestra "Necesitamos más datos para proyectar tu consumo."
