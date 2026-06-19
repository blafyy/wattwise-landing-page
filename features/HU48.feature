Feature: Ver reporte mensual automático
  Como usuario de EnergyAlert
  Quiero recibir un reporte mensual automático de mi consumo
  Para tener un resumen sin tener que generarlo manualmente

  Scenario: Recibir reporte mensual automático por email
    Given el usuario tiene activados los reportes automáticos en Configuración
    When llega el primer día del nuevo mes
    Then recibe un email con el reporte PDF del mes anterior adjunto

  Scenario: Ver reporte mensual en la app
    Given el mes anterior tiene datos completos de consumo
    When el usuario accede a "Historial de reportes"
    Then ve el reporte del mes anterior disponible para descargar

  Scenario: Desactivar reportes automáticos
    Given el usuario no quiere recibir reportes automáticos por email
    When desactiva "Reporte mensual automático" en Configuración
    Then deja de recibir el email mensual pero puede generar reportes manualmente
