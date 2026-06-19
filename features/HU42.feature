Feature: Configurar umbral de alerta de consumo
  Como usuario de EnergyAlert
  Quiero definir un límite de consumo mensual en kWh
  Para recibir alertas automáticas antes de exceder mi presupuesto eléctrico

  Scenario: Configurar umbral exitosamente
    Given el usuario accede a Perfil y luego a Umbral de alerta
    When ingresa el valor "200 kWh" y presiona "Guardar"
    Then el sistema guarda el umbral y muestra confirmación "Umbral configurado: 200 kWh"
    And comienza a monitorear el consumo en relación a ese límite

  Scenario: Alerta al alcanzar el 80% del umbral
    Given el usuario tiene configurado un umbral de 200 kWh
    And su consumo mensual llega a 160 kWh que equivale al 80% del umbral
    When el sistema detecta el nivel de consumo
    Then genera una advertencia naranja "Has alcanzado el 80% de tu límite mensual"
    And la alerta aparece en la bandeja como tipo advertencia

  Scenario: Valor de umbral inválido
    Given el usuario accede a la pantalla de configuración de umbral
    When ingresa un valor negativo o texto no numérico en el campo
    And presiona "Guardar"
    Then el sistema muestra "Ingresa un valor numérico positivo para el umbral."
    And no guarda ningún cambio
