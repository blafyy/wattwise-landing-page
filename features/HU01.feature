Feature: Visualizar la Landing Page de EnergyAlert
  Como visitante
  Quiero ver una Landing Page informativa sobre EnergyAlert
  Para conocer el producto y decidir si quiero registrarme

  Scenario: Landing Page carga correctamente
    Given el visitante accede a la URL de la Landing Page
    When la página termina de cargar
    Then se muestra el Hero con el título principal y botón CTA
    And se visualizan las secciones: Servicios, Cómo funciona, Precios, Testimonios y Contacto

  Scenario: Navegación por anclas desde el menú
    Given el visitante se encuentra en la Landing Page
    When toca un enlace del menú de navegación como "Precios"
    Then la página hace scroll suave hasta la sección correspondiente

  Scenario: Landing Page responsiva en móvil
    Given el visitante accede desde un dispositivo móvil
    When la página carga en resolución inferior a 600px
    Then el menú de navegación se colapsa en un botón hamburguesa
    And el contenido se adapta correctamente al ancho de la pantalla
