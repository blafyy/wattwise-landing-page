Feature: Registrarse en la aplicación
  Como visitante de EnergyAlert
  Quiero poder crear una cuenta con mi correo y contraseña
  Para acceder a las funcionalidades personalizadas de monitoreo

  Scenario: Registro exitoso con datos válidos
    Given el usuario se encuentra en la pantalla de Registro
    When ingresa nombre, correo válido y contraseña segura
    And toca el botón "Registrarse"
    Then el sistema crea la cuenta exitosamente
    And navega a la pantalla de Onboarding 1

  Scenario: Correo ya registrado
    Given el usuario se encuentra en la pantalla de Registro
    When ingresa un correo que ya está registrado en el sistema
    Then el sistema muestra "Este correo ya está registrado. Inicia sesión."
    And permanece en la pantalla de Registro

  Scenario: Campos vacíos en el registro
    Given el usuario se encuentra en la pantalla de Registro
    When deja campos obligatorios en blanco y toca "Registrarse"
    Then los campos vacíos se resaltan en rojo
    And se muestra "Por favor, completa todos los campos."
