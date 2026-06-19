Feature: Ver notificación de consejo de ahorro programado
  Como usuario de EnergyAlert
  Quiero recibir una notificación programada con un consejo de ahorro
  Para recordarme buenas prácticas sin tener que abrir la app

  Scenario: Recibir notificación de consejo diario
    Given el usuario tiene activados los consejos diarios en Notificaciones
    When llega la hora programada configurada por el usuario
    Then recibe una notificación push con un consejo de ahorro del día

  Scenario: Abrir consejo desde la notificación
    Given el usuario toca la notificación del consejo
    When la aplicación se abre
    Then navega directamente al detalle del consejo notificado

  Scenario: Desactivar consejos programados
    Given el usuario no quiere recibir consejos programados diarios
    When desactiva "Consejos diarios" en la configuración de Notificaciones
    Then deja de recibir la notificación diaria de consejos
