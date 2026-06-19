Feature: Enviar mensaje desde el formulario de contacto
  Como visitante o usuario
  Quiero enviar un mensaje al equipo WattWise desde la Landing Page
  Para resolver dudas o solicitar información antes de registrarme

  Scenario: Envío exitoso del formulario de contacto
    Given el visitante se encuentra en la sección Contacto
    When completa los campos requeridos y acepta los términos
    And toca el botón "Enviar mensaje"
    Then el formulario desaparece y aparece el mensaje de éxito
    And se muestra "¡Mensaje enviado! Te respondemos en menos de 24 horas."

  Scenario: Intento de envío con campos vacíos
    Given el visitante se encuentra en el formulario de Contacto
    When deja campos obligatorios vacíos y toca "Enviar mensaje"
    Then los campos vacíos se resaltan en rojo
    And se muestran los mensajes de error por campo

  Scenario: Envío sin aceptar términos
    Given el formulario de Contacto está completo
    When el visitante no marca el checkbox de términos y toca "Enviar"
    Then se muestra el toast "Debes aceptar los términos"
    And el formulario no se envía
