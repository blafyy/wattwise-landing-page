Feature: Ver sección de testimonios en la Landing Page
  Como visitante
  Quiero leer testimonios de usuarios que ya usan EnergyAlert
  Para generar confianza en el producto antes de registrarme

  Scenario: Ver tarjetas de testimonios
    Given el visitante accede a la sección Testimonios
    When la sección carga correctamente
    Then se muestran 3 tarjetas con nombre, ubicación y plan de cada usuario
    And cada tarjeta muestra la calificación en estrellas

  Scenario: Ver testimonio completo
    Given el visitante ve las tarjetas de testimonios
    When lee la reseña completa de un usuario
    Then puede ver el texto completo de la cita, nombre y plan del usuario

  Scenario: Testimonios visibles en móvil
    Given el visitante accede desde móvil
    When llega a la sección Testimonios
    Then las tarjetas se muestran en una sola columna apilada
    And el contenido es legible sin necesidad de zoom
