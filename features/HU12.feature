Feature: Ver onboarding al registrarse por primera vez
  Como usuario nuevo
  Quiero ver pantallas de introducción al registrarme
  Para entender las funcionalidades principales antes de usar la app

  Scenario: Visualización completa del onboarding
    Given el usuario completó el registro exitosamente
    When navega a la primera pantalla de onboarding
    Then se muestra la pantalla "Monitoreo en tiempo real" con imagen y descripción
    And se muestra un indicador de progreso con 3 dots
    And se muestra el botón "Siguiente"

  Scenario: Avanzar entre pantallas de onboarding
    Given el usuario está en la pantalla de Onboarding 1
    When toca el botón "Siguiente"
    Then navega a Onboarding 2 "Alertas inteligentes"
    And el segundo dot queda activo en el indicador de progreso

  Scenario: Omitir el onboarding
    Given el usuario está en cualquier pantalla de onboarding
    When toca el botón "Omitir"
    Then la aplicación navega directamente al Home
    And no vuelve a mostrar el onboarding en futuros accesos
