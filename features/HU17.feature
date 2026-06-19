Feature: Exportar reporte de consumo
  Como usuario de EnergyAlert
  Quiero exportar un reporte de mi consumo en PDF o Excel
  Para compartirlo con mi contador o archivar mi historial energético

  Scenario: Exportar reporte en PDF exitosamente
    Given el usuario está en el dashboard de Consumo
    When toca "Exportar reporte" y selecciona "PDF"
    Then el sistema genera el archivo y lo descarga al dispositivo
    And muestra "Reporte generado correctamente"

  Scenario: Seleccionar rango para el reporte
    Given el usuario inicia la exportación del reporte
    When selecciona el rango "Mes actual"
    Then el reporte incluye solo los datos del mes en curso

  Scenario: Error al exportar sin datos
    Given el usuario intenta exportar sin tener datos de consumo
    When toca "Exportar reporte"
    Then el sistema muestra "No hay datos disponibles para exportar"
