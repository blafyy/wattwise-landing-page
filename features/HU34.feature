Feature: Calcular ahorro potencial de una recomendación
  Como usuario de EnergyAlert
  Quiero ver cuánto dinero puedo ahorrar si aplico un consejo
  Para motivarme a cambiar mis hábitos al ver el beneficio económico

  Scenario: Ver ahorro estimado en soles
    Given el usuario abre el detalle de una recomendación
    When observa la sección de ahorro estimado
    Then ve el monto en soles y kWh que puede ahorrar al mes si la aplica

  Scenario: Ahorro acumulado de consejos aplicados
    Given el usuario ha marcado varios consejos como aplicados
    When accede al resumen de su perfil
    Then ve el ahorro total acumulado en soles de las recomendaciones aplicadas

  Scenario: Consejo sin cálculo disponible
    Given el consejo no tiene datos suficientes para calcular el ahorro
    When el usuario abre el detalle
    Then ve "Ahorro estimado no disponible aún. Necesitamos más datos de consumo."
