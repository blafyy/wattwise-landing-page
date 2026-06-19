Feature: Ver resumen semanal de consumo
  Como usuario de EnergyAlert
  Quiero recibir un resumen semanal de mi consumo
  Para mantenerme informado sobre mis hábitos sin tener que abrir la app

  Scenario: Recibir notificación del resumen semanal
    Given el usuario tiene activados los resúmenes semanales en Notificaciones
    When llega el lunes de cada semana
    Then recibe una notificación push con el consumo de la semana anterior en kWh y soles

  Scenario: Ver resumen semanal dentro de la app
    Given el usuario abre la notificación del resumen
    When es redirigido a la app
    Then ve la pantalla de resumen semanal con comparativa vs la semana anterior

  Scenario: Desactivar resúmenes semanales
    Given el usuario no quiere recibir resúmenes semanales
    When desactiva "Resumen semanal" en Perfil y luego en Notificaciones
    Then deja de recibir la notificación semanal automática
