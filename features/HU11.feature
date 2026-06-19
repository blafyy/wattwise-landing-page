Feature: Iniciar sesión en la aplicación
  Como usuario registrado
  Quiero iniciar sesión con mi correo y contraseña
  Para acceder a mi cuenta y mis datos de consumo

  Scenario: Inicio de sesión exitoso
    Given el usuario está en la pantalla de Login
    When ingresa correo y contraseña correctos
    And toca el botón "Iniciar sesión"
    Then el sistema autentica al usuario
    And navega a la pantalla principal Home

  Scenario: Credenciales inválidas
    Given el usuario está en la pantalla de Login
    When ingresa un correo o contraseña incorrectos
    Then el sistema muestra "Correo o contraseña incorrectos."
    And permanece en la pantalla de Login

  Scenario: Campos vacíos en login
    Given el usuario está en la pantalla de Login
    When deja campos en blanco y toca "Iniciar sesión"
    Then los campos vacíos se resaltan en rojo
    And se muestra "Por favor, completa todos los campos."
