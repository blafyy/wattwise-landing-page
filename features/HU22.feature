Feature: Ver comparativa de consumo vs mes anterior
  Como usuario de EnergyAlert
  Quiero comparar mi consumo actual con el del mes anterior
  Para evaluar si estoy mejorando en mi eficiencia energética

  Scenario: Ver comparativa mensual disponible
    Given el usuario tiene datos de al menos 2 meses
    When accede al dashboard de Consumo
    Then ve el porcentaje de variación vs el mes anterior
    And el indicador es verde si bajó o rojo si subió

  Scenario: Comparativa favorable
    Given el consumo del mes actual es menor al anterior
    When el usuario ve el indicador de variación
    Then aparece "-18% vs mes anterior" en color verde con flecha hacia abajo

  Scenario: Sin datos del mes anterior
    Given el usuario solo tiene datos del mes actual
    When accede al dashboard
    Then el campo de comparativa muestra "Sin comparativa disponible"
