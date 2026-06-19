Feature: Recibir recomendación al detectar consumo inusual
  Como usuario de EnergyAlert
  Quiero recibir una recomendación automática cuando se detecte consumo inusual
  Para saber qué hacer cuando hay un pico inesperado de consumo

  Scenario: Recomendación generada tras pico de consumo
    Given el sistema detecta un pico de consumo inusual en un dispositivo
    When el análisis identifica el patrón
    Then aparece una recomendación en la sección de Consejos
    And se envía una notificación push informativa

  Scenario: Ver recomendación en detalle
    Given la recomendación aparece en la lista de Consejos
    When el usuario toca la recomendación
    Then ve el detalle con el dispositivo involucrado y el ahorro estimado en soles

  Scenario: Marcar recomendación como aplicada
    Given el usuario ha aplicado la recomendación
    When toca "Aplicar recomendación"
    Then la recomendación se marca como aplicada y queda en el historial
