Feature: Ver pico de consumo diario
  Como usuario de EnergyAlert
  Quiero ver en qué hora del día consumo más energía
  Para identificar en qué momento puedo reducir mejor mi consumo

  Scenario: Ver gráfico de consumo por hora
    Given el usuario accede al detalle del día actual en el dashboard
    When la pantalla carga correctamente
    Then ve un gráfico de consumo hora por hora con el pico destacado visualmente

  Scenario: Identificar hora pico con tooltip
    Given el usuario ve el gráfico horario
    When toca la barra más alta del gráfico
    Then ve el tooltip con la hora exacta y el consumo en kWh de ese pico

  Scenario: Sin datos horarios disponibles
    Given el usuario no tiene medidor inteligente conectado
    When accede al detalle horario
    Then ve "Conecta un medidor inteligente para ver datos por hora"
