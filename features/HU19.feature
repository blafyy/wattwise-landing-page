Feature: Ver y editar perfil de usuario
  Como usuario registrado
  Quiero ver y editar los datos de mi perfil
  Para mantener mi información actualizada y configurar mis preferencias

  Scenario: Ver datos del perfil correctamente
    Given el usuario ha iniciado sesión en EnergyAlert
    When navega a la sección Perfil desde la barra inferior
    Then visualiza su nombre, correo electrónico y foto de perfil
    And visualiza las opciones de configuración de cuenta

  Scenario: Editar datos personales exitosamente
    Given el usuario se encuentra en la pantalla de Perfil
    When toca el botón "Editar datos", modifica su nombre y toca "Guardar"
    Then el sistema actualiza los datos correctamente
    And muestra la confirmación "Datos actualizados correctamente"

  Scenario: Cerrar sesión desde el perfil
    Given el usuario se encuentra en la pantalla de Perfil
    When toca la opción "Cerrar sesión" y confirma
    Then el sistema cierra la sesión
    And navega a la pantalla de Login
