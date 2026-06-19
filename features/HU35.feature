Feature: Compartir reporte de consumo
  Como usuario de EnergyAlert
  Quiero compartir mi reporte de consumo con otra persona
  Para enviarlo a mi contador, propietario o familiar

  Scenario: Compartir reporte por WhatsApp
    Given el usuario generó un reporte en PDF
    When toca "Compartir" y selecciona WhatsApp
    Then el sistema abre WhatsApp con el archivo adjunto listo para enviar

  Scenario: Compartir reporte por correo electrónico
    Given el usuario generó un reporte en PDF
    When toca "Compartir" y selecciona "Correo electrónico"
    Then el sistema abre el cliente de correo con el archivo adjunto

  Scenario: Error al compartir sin reporte generado
    Given el usuario no ha generado ningún reporte
    When toca "Compartir"
    Then el sistema muestra "Primero debes generar un reporte para compartirlo"
