Feature: Navegar entre secciones con barra inferior
  Como usuario de EnergyAlert
  Quiero navegar entre las 4 secciones principales desde la barra inferior
  Para acceder rápidamente a cualquier funcionalidad desde cualquier pantalla

  Scenario: Navegación entre pestañas
    Given el usuario está en cualquier pantalla principal
    When toca el ícono "Consumo" en la barra de navegación inferior
    Then navega al dashboard de Consumo
    And el ícono de Consumo queda resaltado en azul

  Scenario: Pestaña activa destacada
    Given el usuario está en la pantalla de Alertas
    When observa la barra de navegación inferior
    Then el ícono y label "Alertas" están en color azul con texto en negrita

  Scenario: Volver al inicio desde otra sección
    Given el usuario está en la sección Perfil
    When toca el ícono "Inicio" en la barra inferior
    Then regresa al Home sin perder su sesión
