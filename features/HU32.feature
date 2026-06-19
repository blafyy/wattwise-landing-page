Feature: Recibir alerta de consumo por encima del umbral
  Como usuario de EnergyAlert
  Quiero recibir una alerta cuando mi consumo supere el umbral configurado
  Para actuar antes de que mi gasto mensual se salga de control

  Scenario: Alerta generada al superar el 100% del umbral
    Given el usuario tiene configurado un umbral de 150 kWh
    When su consumo mensual supera los 150 kWh
    Then el sistema genera una alerta crítica roja en la bandeja
    And se envía una notificación push de consumo crítico

  Scenario: Advertencia al alcanzar el 80% del umbral
    Given el consumo llega al 80% del umbral configurado
    When el sistema detecta el nivel de consumo
    Then genera una advertencia naranja "Has alcanzado el 80% de tu límite mensual"

  Scenario: Sin umbral configurado
    Given el usuario no ha configurado ningún umbral mensual
    When su consumo aumenta significativamente
    Then el sistema no genera alertas por umbral
    And muestra "Configura tu umbral para recibir alertas personalizadas"
