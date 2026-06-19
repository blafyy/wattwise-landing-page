Feature: Agregar dispositivo del hogar
  Como usuario de EnergyAlert
  Quiero registrar un dispositivo eléctrico en la aplicación
  Para hacer seguimiento individual de su consumo

  Scenario: Agregar dispositivo exitosamente
    Given el usuario accede a "Mis dispositivos"
    When selecciona el tipo, ingresa el nombre y toca "Guardar"
    Then el dispositivo queda registrado en la lista
    And aparece en la distribución por categoría correspondiente

  Scenario: Agregar dispositivo sin nombre
    Given el usuario está en el formulario de agregar dispositivo
    When deja el campo de nombre vacío y toca "Guardar"
    Then el campo se resalta en rojo
    And muestra "Ingresa un nombre para el dispositivo"

  Scenario: Dispositivo duplicado
    Given el usuario ya tiene registrada una "Lavadora"
    When intenta agregar otro dispositivo con el mismo nombre
    Then el sistema muestra "Ya tienes un dispositivo con ese nombre"
