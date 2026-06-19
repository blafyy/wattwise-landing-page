Feature: Ver estado de conexión del medidor
  Como usuario de EnergyAlert
  Quiero saber si mi medidor está conectado y enviando datos
  Para asegurarme de que el monitoreo está funcionando correctamente

  Scenario: Medidor conectado y activo
    Given el medidor del usuario está enviando datos correctamente
    When accede a la pantalla de "Mis dispositivos"
    Then ve el indicador verde "Conectado" junto al nombre del medidor

  Scenario: Medidor desconectado
    Given el medidor perdió conexión hace más de 30 minutos
    When el usuario accede a "Mis dispositivos"
    Then ve el indicador rojo "Sin conexión" y el tiempo desde la última actualización

  Scenario: Reconectar medidor desconectado
    Given el medidor aparece como desconectado en la lista
    When el usuario toca "Reconectar"
    Then el sistema intenta restablecer la conexión y muestra el resultado del intento
