Feature: Ver bandeja de alertas
  Como usuario de EnergyAlert
  Quiero ver todas mis alertas de consumo organizadas por severidad
  Para saber cuáles requieren atención inmediata y cuáles son informativas

  Scenario: Bandeja de alertas con alertas mixtas
    Given el usuario tiene alertas de distintos tipos en su bandeja
    When navega a la sección Alertas
    Then visualiza las alertas críticas primero en color rojo con ícono de peligro
    And visualiza las advertencias en naranja y las informativas en azul

  Scenario: Abrir detalle de una alerta crítica
    Given el usuario ve una alerta crítica "Consumo elevado detectado" en su bandeja
    When toca la alerta
    Then se muestra el detalle con gráfico del pico, hora y dispositivo probable
    And la alerta queda marcada automáticamente como leída

  Scenario: Bandeja vacía
    Given el usuario no tiene alertas activas
    When navega a la sección Alertas
    Then visualiza la ilustración de bandeja vacía
    And el mensaje "Sin alertas por ahora. Tu consumo está dentro de lo normal."
