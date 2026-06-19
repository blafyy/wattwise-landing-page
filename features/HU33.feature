Feature: Ver consejos de ahorro personalizados
  Como usuario de EnergyAlert
  Quiero ver recomendaciones de ahorro basadas en mi consumo
  Para reducir mi gasto eléctrico mensual de forma práctica

  Scenario: Ver lista de consejos ordenados por ahorro
    Given el usuario tiene historial de consumo registrado
    When accede a la sección Consejos
    Then ve recomendaciones ordenadas de mayor a menor ahorro estimado en soles

  Scenario: Ver detalle de un consejo
    Given el usuario está en la lista de Consejos
    When toca "Usa la lavadora en ciclo corto"
    Then ve descripción, ahorro estimado en soles y kWh y el botón "Aplicar"

  Scenario: Consejos generales sin historial suficiente
    Given el usuario tiene menos de 7 días de historial
    When accede a la sección Consejos
    Then ve consejos generales y el mensaje "Aún estamos aprendiendo tus hábitos"
