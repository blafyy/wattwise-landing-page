Feature: Buscar dispositivo por nombre
  Como usuario de EnergyAlert
  Quiero buscar un dispositivo específico en mi lista
  Para encontrarlo rápidamente cuando tengo muchos registrados

  Scenario: Búsqueda exitosa de dispositivo
    Given el usuario tiene varios dispositivos registrados
    When escribe "lavadora" en el buscador
    Then la lista filtra y muestra solo los dispositivos que coinciden con el nombre

  Scenario: Búsqueda sin resultados
    Given el usuario busca un nombre que no existe en su lista
    When escribe el nombre en el buscador
    Then muestra "No encontramos dispositivos con ese nombre"

  Scenario: Limpiar búsqueda
    Given el usuario tiene una búsqueda activa en el buscador
    When borra el texto del campo
    Then la lista vuelve a mostrar todos los dispositivos registrados
