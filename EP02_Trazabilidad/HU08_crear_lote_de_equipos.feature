# language: es
@EP02 @HU08 @funcional
Característica: HU08 Creación de un lote de equipos
  Como empresa generadora de RAEE
  Quiero crear un lote con varios equipos dados de baja
  Para registrarlos juntos en una sola operación

  @positivo
  Escenario: Creación de un lote con equipos
    Dado que la empresa tiene los siguientes equipos de baja:
      | equipo    |
      | Monitor   |
      | Monitor   |
      | Impresora |
    Cuando la empresa agrega los equipos al lote y lo guarda
    Entonces el lote muestra el detalle de los 3 equipos
    Y el total del lote es 3

  @negativo
  Escenario: Lote sin equipos
    Dado que la empresa abrió la creación de un lote
    Cuando la empresa intenta guardar el lote sin equipos
    Entonces el sistema no crea el lote
    Y la pantalla muestra el mensaje "Agregue al menos un equipo"
