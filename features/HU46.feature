Feature: Agregar múltiples medidores
  Como usuario de Plan Pro o Empresa
  Quiero registrar hasta 5 medidores o circuitos distintos
  Para controlar el consumo de distintas áreas de mi hogar o negocio

  Scenario: Agregar segundo medidor exitosamente
    Given el usuario Plan Pro tiene un medidor ya registrado
    When agrega un segundo medidor con un nombre y código de suministro válidos
    Then el medidor queda registrado y aparece en el selector del dashboard

  Scenario: Superar el límite de medidores del plan
    Given el usuario Plan Gratuito tiene 1 medidor registrado
    When intenta agregar un segundo medidor
    Then muestra "Actualiza a Plan Pro para conectar más medidores"

  Scenario: Cambiar medidor activo en el dashboard
    Given el usuario tiene 2 medidores registrados en su cuenta
    When selecciona "Medidor 2" en el selector del dashboard
    Then todos los gráficos y datos del dashboard cambian al medidor seleccionado
