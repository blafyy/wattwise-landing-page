Feature: Configurar tarifa eléctrica
  Como usuario de EnergyAlert
  Quiero ingresar mi tarifa eléctrica en soles por kWh
  Para que la app calcule correctamente mis costos en soles peruanos

  Scenario: Configurar tarifa exitosamente
    Given el usuario accede a Perfil y luego a Tarifa eléctrica
    When ingresa "0.74" y toca "Guardar"
    Then el sistema guarda la tarifa y confirma el guardado
    And los cálculos de costo del dashboard se actualizan

  Scenario: Tarifa con valor inválido
    Given el usuario está en la pantalla de configuración de tarifa
    When ingresa un valor negativo o texto no numérico
    Then muestra "Ingresa un valor numérico positivo para la tarifa"

  Scenario: Tooltip de ayuda para encontrar la tarifa
    Given el usuario no sabe qué valor ingresar
    When toca el ícono de información junto al campo
    Then aparece un tooltip explicando dónde encontrar ese valor en el recibo de luz
