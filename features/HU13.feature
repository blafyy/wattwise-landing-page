Feature: Ver resumen de consumo en Home
  Como usuario registrado
  Quiero ver un resumen de mi consumo eléctrico en la pantalla principal
  Para tener una visión rápida de mi situación energética actual

  Scenario: Home muestra consumo actual correctamente
    Given el usuario ha iniciado sesión en EnergyAlert
    When navega a la pantalla principal Home
    Then visualiza una tarjeta con el consumo actual del mes en kWh
    And visualiza los accesos rápidos a Monitoreo, Alertas y Consejos

  Scenario: Navegar a Consumo desde Home
    Given el usuario se encuentra en el Home
    When toca la tarjeta de consumo o el acceso rápido "Monitoreo"
    Then la aplicación navega al dashboard de Consumo detallado

  Scenario: Home sin datos de consumo del mes
    Given el usuario se registra por primera vez y no tiene historial
    When accede a la pantalla principal
    Then la tarjeta de consumo muestra "0.00 kWh este mes"
    And muestra el mensaje "Conecta tu medidor para comenzar a monitorear"
