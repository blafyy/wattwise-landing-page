Feature: Ver historial de consumo por periodo
  Como usuario de EnergyAlert
  Quiero revisar mi historial de consumo por día, semana o mes
  Para comparar mis periodos y detectar tendencias

  Scenario: Cambiar filtro de periodo
    Given el usuario está en el dashboard de Consumo
    When selecciona el filtro "Semana"
    Then el gráfico muestra los últimos 7 días
    And el total se recalcula para el periodo seleccionado

  Scenario: Ver comparativa con periodo anterior
    Given el usuario está viendo el consumo semanal
    When observa el indicador de variación
    Then ve el porcentaje de cambio respecto a la semana anterior
    And el indicador es verde si bajó o rojo si subió

  Scenario: Historial sin datos del periodo
    Given el usuario selecciona "Mes" y no tiene datos del mes actual
    When el gráfico intenta cargar
    Then muestra el mensaje "Sin datos disponibles para este periodo"
