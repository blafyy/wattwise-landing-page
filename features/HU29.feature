Feature: Ver lista de alertas con filtros
  Como usuario de EnergyAlert
  Quiero filtrar mis alertas por tipo de severidad
  Para enfocarme en las alertas más urgentes primero

  Scenario: Filtrar alertas por tipo Crítica
    Given el usuario está en la bandeja de Alertas
    When toca el filtro "Críticas"
    Then la lista muestra solo las alertas de tipo crítico en rojo

  Scenario: Ver todas las alertas
    Given el usuario tiene un filtro activo en la bandeja
    When toca el filtro "Todas"
    Then la lista muestra todas las alertas ordenadas por fecha y severidad

  Scenario: Filtro sin alertas del tipo seleccionado
    Given el usuario no tiene alertas informativas
    When toca el filtro "Info"
    Then la lista muestra "No tienes alertas de este tipo"
