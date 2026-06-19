Feature: Ver proyección de consumo para fin de mes
  Como usuario de EnergyAlert
  Quiero ver una proyección de mi consumo en kWh para fin de mes
  Para tomar acciones antes de que llegue el recibo

  Scenario: Proyección disponible con suficiente historial
    Given el usuario tiene al menos 7 días de historial de consumo registrado
    When observa la tarjeta de proyección en el Home
    Then ve el consumo proyectado en kWh y el costo estimado en soles

  Scenario: Proyección indica consumo excesivo
    Given la proyección supera el umbral mensual configurado por el usuario
    When el usuario ve la tarjeta de proyección
    Then aparece en rojo "Vas a superar tu límite. Considera reducir tu consumo."

  Scenario: Sin historial suficiente para proyectar
    Given el usuario tiene menos de 7 días de historial registrado
    When observa la sección de proyección en el Home
    Then muestra "Necesitamos más datos para proyectar tu consumo."
