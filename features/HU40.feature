Feature: Recibir notificación push de alerta crítica
  Como usuario de EnergyAlert
  Quiero recibir una notificación push cuando haya un consumo crítico
  Para enterarme del problema aunque no tenga la app abierta

  Scenario: Push recibido con app en segundo plano
    Given el consumo del usuario supera el umbral crítico configurado
    And la aplicación EnergyAlert está en segundo plano
    When el sistema genera la alerta crítica
    Then el dispositivo recibe una notificación push con título "EnergyAlert - Consumo elevado"

  Scenario: Redirección al tocar la notificación push
    Given el usuario recibe un push de alerta crítica en la barra de notificaciones
    When lo toca para abrirlo
    Then la aplicación se abre directamente en la pantalla de Alertas
    And la alerta crítica aparece en la parte superior de la bandeja

  Scenario: Notificaciones desactivadas por el usuario
    Given el usuario tiene los permisos de notificación desactivados en su dispositivo
    When el sistema genera una alerta crítica
    Then no se envía notificación push al dispositivo
    And la alerta queda registrada en la bandeja con indicador de no leída
