Feature: Ver consumo en tiempo real
  Como usuario de EnergyAlert
  Quiero ver mi consumo eléctrico actual en tiempo real
  Para detectar en qué momento del día consumo más energía

  Scenario: Ver consumo en tiempo real con medidor conectado
    Given el usuario tiene un medidor conectado
    When accede al Home o al dashboard de Consumo
    Then ve el consumo actual en kW actualizado cada 30 segundos

  Scenario: Indicador de consumo alto en tiempo real
    Given el consumo actual supera el promedio diario
    When el usuario ve el indicador en tiempo real
    Then el valor aparece en color rojo o naranja como alerta visual

  Scenario: Sin medidor conectado
    Given el usuario no tiene medidor vinculado a su cuenta
    When accede al dashboard
    Then ve el mensaje "Conecta tu medidor para ver datos en tiempo real"
