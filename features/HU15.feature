Feature: Ver distribución de consumo por categoría
  Como usuario de EnergyAlert
  Quiero ver cuánto consume cada categoría de dispositivos en mi hogar
  Para identificar qué está consumiendo más y tomar decisiones de ahorro

  Scenario: Ver distribución por categoría
    Given el usuario navega a la sección Consumo
    When accede al módulo de distribución por categoría
    Then ve Electrodomésticos, Climatización e Iluminación con su porcentaje
    And cada categoría tiene un ícono representativo

  Scenario: Ingresar al detalle de una categoría
    Given el usuario ve la distribución por categoría
    When toca "Electrodomésticos"
    Then ve la lista de dispositivos registrados con su consumo individual

  Scenario: Categoría sin dispositivos registrados
    Given el usuario no tiene dispositivos en la categoría "Climatización"
    When accede al detalle de esa categoría
    Then ve el mensaje "No hay dispositivos registrados en esta categoría"
