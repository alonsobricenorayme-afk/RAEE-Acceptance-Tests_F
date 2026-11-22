# language: es
@EP02 @HU07 @funcional
Característica: HU07 Avance de etapa en la cadena de custodia
  Como gestor de un centro de acopio autorizado
  Quiero volver a escanear el QR para registrar el avance de una entrega ya recibida a la siguiente etapa (Valorización o Destino Final)
  Para mantener actualizada la cadena de custodia

  @positivo
  Escenario: Avance a la siguiente etapa
    Dado que la entrega está en estado "Recibido en centro de acopio"
    Cuando el gestor escanea el QR con la etapa "Valorización"
    Entonces la entrega pasa al estado "Valorización"
    Y el historial de la entrega contiene la etapa "Valorización"

  @negativo
  Escenario: Entrega sin recepción previa
    Dado que la entrega está en estado "Recolección"
    Cuando el gestor escanea el QR con la etapa "Valorización"
    Entonces la entrega conserva el estado "Recolección"
    Y la pantalla muestra el mensaje "Registre primero la recepción de la entrega"
