Feature: Ver consejos de ahorro con estimado en soles
  Como usuario de EnergyAlert
  Quiero ver recomendaciones con el ahorro estimado en soles
  Para motivarme a cambiar hábitos al ver el beneficio económico concreto

  Scenario: Ver consejo con ahorro en soles
    Given el usuario accede a la sección Consejos
    When observa la lista de recomendaciones
    Then cada consejo muestra el ahorro estimado en soles y kWh al mes

  Scenario: Aplicar recomendación desde el detalle
    Given el usuario abrió el detalle de un consejo
    When toca "Aplicar recomendación"
    Then el consejo se marca como aplicado y aparece en su historial de consejos

  Scenario: Consejos sin datos suficientes para personalizar
    Given el usuario tiene menos de 7 días de historial registrado
    When accede a la sección Consejos
    Then ve consejos genéricos y el mensaje "Aún estamos aprendiendo tus hábitos"
