# language: es
@EP02 @HU05 @funcional
Característica: HU05 Consulta del estado de la entrega
  Como ciudadano que genera RAEE en su hogar
  Quiero consultar el estado de mi entrega (Registro, Recolección, Centro de Acopio, Valorización o Destino Final)
  Para saber qué hacen realmente con mi equipo

  @positivo
  Escenario: Consulta del estado con un QR válido
    Dado que el ciudadano tiene el QR de una entrega en estado "Centro de Acopio"
    Y que la entrega registra las fechas de "Registro" y "Recolección"
    Cuando el ciudadano escanea el código QR
    Entonces la pantalla muestra el estado "Centro de Acopio"
    Y la pantalla muestra las fechas de "Registro" y "Recolección"

  @negativo
  Esquema del escenario: Código QR no reconocido
    Dado que el ciudadano tiene un código "<código>" que no corresponde a ninguna entrega
    Cuando el ciudadano escanea el código
    Entonces la pantalla muestra el mensaje "El código no es válido"
    Y la pantalla no muestra datos de ninguna entrega

    Ejemplos:
      | código                   |
      | código de barras de caja |
      | QR alterado              |
