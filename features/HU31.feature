Feature: Ver detalle de alerta crítica
  Como usuario de EnergyAlert
  Quiero ver el detalle de una alerta crítica
  Para entender qué ocurrió y qué puedo hacer para resolverlo

  Scenario: Ver detalle con información completa
    Given el usuario toca una alerta crítica en la bandeja
    When se abre la pantalla de detalle
    Then ve el dispositivo involucrado, hora del evento y porcentaje de exceso
    And ve un gráfico del pico de consumo registrado

  Scenario: Ver recomendación asociada a la alerta
    Given el usuario está en el detalle de la alerta
    When observa la sección de acciones recomendadas
    Then ve al menos una acción concreta para reducir el consumo

  Scenario: Volver a la bandeja desde el detalle
    Given el usuario está en el detalle de la alerta
    When toca el botón "Volver"
    Then regresa a la bandeja de alertas con la alerta marcada como leída
