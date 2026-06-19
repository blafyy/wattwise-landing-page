Feature: Registrarse desde la Landing Page
  Como visitante
  Quiero crear una cuenta desde el modal de registro de la Landing Page
  Para comenzar a usar EnergyAlert sin salir de la página informativa

  Scenario: Abrir modal de registro
    Given el visitante se encuentra en la Landing Page
    When toca el botón "Comenzar gratis" en el navbar o en el Hero
    Then se abre el modal de registro con los campos requeridos

  Scenario: Registro exitoso con datos válidos
    Given el modal de registro está abierto
    When completa todos los campos correctamente y acepta los términos
    Then se crea la cuenta y se muestra confirmación de éxito

  Scenario: Registro con contraseñas que no coinciden
    Given el modal de registro está abierto
    When ingresa contraseñas distintas en "Contraseña" y "Confirmar contraseña"
    Then el campo "Confirmar contraseña" se resalta en rojo
    And se muestra "Las contraseñas no coinciden"
