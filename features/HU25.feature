Feature: Ver dashboard de consumo detallado
  Como usuario de EnergyAlert
  Quiero ver gráficos detallados de mi consumo eléctrico por periodo
  Para entender mis patrones de uso y tomar decisiones informadas

  Scenario: Dashboard carga correctamente con datos del mes
    Given el usuario navega a la sección Consumo
    When la pantalla carga con datos disponibles del mes actual
    Then visualiza un gráfico de barras con el consumo por día
    And visualiza el total del mes en kWh y en soles peruanos

  Scenario: Cambiar rango de fechas en el dashboard
    Given el usuario se encuentra en el dashboard de Consumo
    When selecciona el filtro "Semana" en el selector de rango
    Then el gráfico se actualiza mostrando solo los 7 días anteriores
    And el total se recalcula para el nuevo periodo seleccionado

  Scenario: Dashboard sin conexión a internet
    Given el usuario intenta acceder al dashboard sin conexión
    When la aplicación no puede obtener datos del servidor
    Then muestra los últimos datos en caché disponibles
    And muestra un banner "Mostrando datos sin conexión."
