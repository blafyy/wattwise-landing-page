Feature: Ver proyección de costo para el recibo del mes
  Como usuario de EnergyAlert
  Quiero ver cuánto va a costar mi recibo de luz a fin de mes
  Para planificar mi presupuesto mensual con anticipación

  Scenario: Ver proyección de costo disponible
    Given el usuario tiene tarifa configurada y al menos 7 días de historial
    When accede al Home o al dashboard de Consumo
    Then ve el costo proyectado para el recibo del mes en soles peruanos

  Scenario: Proyección indica gasto excesivo
    Given la proyección supera el límite de gasto que el usuario puede pagar
    When ve la tarjeta de proyección de costo
    Then el monto aparece en rojo con el mensaje "Reduce tu consumo para no pasarte"

  Scenario: Proyección sin tarifa configurada
    Given el usuario no ha ingresado su tarifa eléctrica en Perfil
    When accede al Home
    Then ve "Configura tu tarifa en Perfil para ver el costo estimado"
