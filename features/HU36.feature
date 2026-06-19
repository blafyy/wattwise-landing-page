Feature: Ver historial de alertas pasadas
  Como usuario de EnergyAlert
  Quiero revisar el historial de alertas de los últimos meses
  Para identificar patrones recurrentes en mi consumo

  Scenario: Ver historial completo de alertas
    Given el usuario accede al historial de alertas
    When la lista carga correctamente
    Then ve todas las alertas pasadas ordenadas por fecha, más recientes primero

  Scenario: Filtrar historial por mes
    Given el usuario está en el historial de alertas
    When selecciona el mes "Mayo 2026"
    Then la lista filtra solo las alertas generadas ese mes

  Scenario: Historial vacío
    Given el usuario nunca ha tenido alertas generadas
    When accede al historial
    Then ve la ilustración de bandeja vacía y "Aún no tienes alertas en tu historial"
