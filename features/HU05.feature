Feature: Ver planes y precios en la Landing Page
  Como visitante
  Quiero comparar los planes disponibles de EnergyAlert
  Para elegir el plan que mejor se adapte a mis necesidades antes de registrarme

  Scenario: Ver planes en modalidad mensual
    Given el visitante se encuentra en la sección Precios
    When la sección carga por defecto
    Then se muestran los tres planes: Gratuito, Pro y Empresa
    And los precios se muestran en modalidad mensual

  Scenario: Cambiar a modalidad anual
    Given el visitante está en la sección Precios con modalidad mensual activa
    When activa el toggle "Anual"
    Then los precios cambian a la modalidad anual con descuento del 20%

  Scenario: Iniciar contratación del plan Pro
    Given el visitante ve la sección de Precios
    When toca el botón "Contratar Pro"
    Then se abre el modal de registro para crear una cuenta
