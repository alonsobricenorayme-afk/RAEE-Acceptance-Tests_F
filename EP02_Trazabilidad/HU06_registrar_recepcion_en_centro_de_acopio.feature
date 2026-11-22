# language: es
@EP02 @HU06 @funcional
Característica: HU06 Registro de recepción en el centro de acopio
  Como gestor de un centro de acopio autorizado
  Quiero escanear el QR al recibir una entrega
  Para registrar su ingreso al centro de acopio

  @positivo
  Escenario: Recepción de una entrega con QR válido
    Dado que la entrega está en estado "Recolección"
    Y que el gestor autorizado tiene el QR de la entrega
    Cuando el gestor escanea el QR con la acción "recepción"
    Entonces la entrega pasa al estado "Recibido en centro de acopio"
    Y el historial de la entrega registra el evento de recepción

  @negativo
  Escenario: Entrega ya recibida
    Dado que la entrega ya está en estado "Recibido en centro de acopio"
    Cuando el gestor escanea el QR con la acción "recepción"
    Entonces la pantalla muestra el mensaje "La entrega ya fue recibida"
    Y el historial conserva un solo evento de recepción
