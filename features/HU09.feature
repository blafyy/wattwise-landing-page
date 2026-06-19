Feature: Visualizar pantalla de bienvenida
  Como usuario nuevo de EnergyAlert
  Quiero ver una pantalla de bienvenida al abrir la aplicación
  Para saber que estoy en la aplicación correcta y sentirme bienvenido

  Scenario: Carga exitosa del splash screen
    Given el usuario abre la aplicación EnergyAlert por primera vez
    When la aplicación se inicia correctamente
    Then se muestra el logo de EnergyAlert centrado en pantalla
    And después de 2 segundos navega automáticamente a la pantalla de registro

  Scenario: Navegación manual desde splash
    Given el usuario ve el splash screen
    When toca la pantalla antes de que termine la animación
    Then la aplicación navega inmediatamente a la pantalla de registro

  Scenario: Splash con conexión lenta
    Given el usuario abre la aplicación con conexión inestable
    When la carga tarda más de 3 segundos
    Then el splash screen permanece visible hasta que los recursos cargan
    And no se muestra pantalla en blanco ni error
