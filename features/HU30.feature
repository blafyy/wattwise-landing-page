Feature: Marcar alerta como leída
  Como usuario de EnergyAlert
  Quiero marcar una alerta como leída
  Para mantener mi bandeja organizada y saber cuáles ya atendí

  Scenario: Marcar alerta como leída automáticamente
    Given el usuario abre el detalle de una alerta no leída
    When visualiza el detalle completo
    Then la alerta queda marcada automáticamente como leída
    And el indicador de no leída desaparece en la bandeja

  Scenario: Limpiar todas las alertas leídas
    Given el usuario tiene alertas leídas en la bandeja
    When toca "Limpiar leídas"
    Then solo permanecen las alertas no leídas en la bandeja

  Scenario: Eliminar alerta individual
    Given el usuario ve una alerta en la bandeja
    When desliza la alerta y toca "Eliminar"
    Then la alerta desaparece de la bandeja permanentemente
