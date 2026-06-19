Feature: Ver detalle de consumo por dispositivo
  Como usuario de EnergyAlert
  Quiero ver cuánto consume cada dispositivo registrado
  Para identificar los aparatos que más gastan en mi hogar

  Scenario: Ver lista de dispositivos con consumo
    Given el usuario tiene dispositivos registrados
    When accede al detalle de una categoría
    Then ve cada dispositivo con su consumo en kWh y costo en soles del mes

  Scenario: Ordenar dispositivos por consumo
    Given el usuario ve la lista de dispositivos
    When toca "Ordenar por consumo"
    Then los dispositivos se reordenan de mayor a menor consumo

  Scenario: Sin dispositivos en la categoría
    Given el usuario no tiene dispositivos en "Iluminación"
    When accede al detalle de esa categoría
    Then ve "No hay dispositivos en esta categoría. ¿Deseas agregar uno?"
