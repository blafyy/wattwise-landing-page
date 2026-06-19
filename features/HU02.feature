Feature: Iniciar sesión desde la Landing Page
  Como usuario registrado
  Quiero acceder al modal de inicio de sesión desde la Landing Page
  Para entrar a mi cuenta sin navegar a una pantalla separada

  Scenario: Abrir modal de login
    Given el usuario se encuentra en la Landing Page
    When toca el botón "Iniciar sesión" en el navbar
    Then se abre el modal de login con campos de correo y contraseña

  Scenario: Login exitoso desde modal
    Given el modal de login está abierto
    When ingresa correo y contraseña correctos y toca "Iniciar sesión"
    Then el sistema muestra el mensaje de confirmación de bienvenida
    And cierra el modal

  Scenario: Login con credenciales incorrectas
    Given el modal de login está abierto
    When ingresa un correo o contraseña incorrectos
    Then el campo con error se resalta en rojo
    And se muestra el mensaje de error correspondiente
