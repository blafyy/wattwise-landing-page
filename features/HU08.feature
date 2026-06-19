Feature: Ver sección Nosotros en la Landing Page
  Como visitante
  Quiero conocer al equipo detrás de WattWise
  Para generar confianza en la empresa y el producto

  Scenario: Ver información del equipo
    Given el visitante accede a la sección Nosotros
    When la sección carga correctamente
    Then se muestra la descripción de WattWise y su misión
    And se muestran las tarjetas de los 6 integrantes con foto, nombre y rol

  Scenario: Ver tarjeta de integrante con hover
    Given el visitante está en la sección Nosotros en Desktop
    When coloca el cursor sobre una tarjeta de integrante
    Then la tarjeta eleva su sombra y resalta el borde en azul

  Scenario: Ver estadísticas del equipo
    Given el visitante está en la sección Nosotros
    When observa la columna de estadísticas
    Then puede ver año de fundación, número de integrantes, usuarios activos y país de origen
