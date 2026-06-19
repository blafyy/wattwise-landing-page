Feature: Eliminar dispositivo registrado
  Como usuario de EnergyAlert
  Quiero eliminar un dispositivo que ya no uso
  Para mantener mi lista de dispositivos actualizada

  Scenario: Eliminar dispositivo exitosamente
    Given el usuario está en "Mis dispositivos"
    When desliza el dispositivo y toca "Eliminar"
    And confirma la acción en el diálogo de confirmación
    Then el dispositivo desaparece de la lista permanentemente

  Scenario: Cancelar eliminación
    Given el usuario inició el proceso de eliminación
    When toca "Cancelar" en el diálogo de confirmación
    Then el dispositivo permanece en la lista sin cambios

  Scenario: Eliminar dispositivo con historial
    Given el dispositivo tiene historial de consumo registrado
    When el usuario lo elimina
    Then el historial previo se conserva pero el dispositivo ya no genera nuevos datos
