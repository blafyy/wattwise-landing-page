Feature: Configurar preferencias de notificaciones push
  Como usuario de EnergyAlert
  Quiero elegir qué tipo de notificaciones push quiero recibir
  Para controlar las alertas que llegan a mi celular

  Scenario: Activar solo notificaciones críticas
    Given el usuario accede a Perfil y luego a Notificaciones
    When desactiva "Advertencias" e "Informativas" y deja activa solo "Críticas"
    Then el sistema guarda las preferencias
    And solo envía push para alertas de tipo crítico

  Scenario: Desactivar todas las notificaciones
    Given el usuario está en la pantalla de configuración de Notificaciones
    When desactiva todos los toggles disponibles
    Then no recibe ninguna notificación push de EnergyAlert

  Scenario: Reactivar notificaciones previamente desactivadas
    Given el usuario tenía las notificaciones desactivadas
    When activa el toggle de "Alertas críticas"
    Then vuelve a recibir notificaciones push para ese tipo de alerta
