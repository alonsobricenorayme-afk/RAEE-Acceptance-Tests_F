# language: es
@EP02 @HU10 @funcional
Característica: HU10 Notificación de cambios de estado
  Como usuario de RAEE Track que entrega sus RAEE por un canal formal
  Quiero recibir una notificación cuando cambie el estado de mi entrega
  Para enterarme del avance sin tener que revisar la aplicación

  @positivo
  Escenario: Notificación por cambio de estado
    Dado que el usuario tiene las notificaciones activadas
    Y que el usuario tiene una entrega registrada
    Cuando el sistema registra el estado "Valorización" para la entrega
    Entonces el sistema envía una notificación al usuario
    Y la notificación contiene el estado "Valorización" y el código de la entrega

  @negativo
  Escenario: Notificaciones desactivadas
    Dado que el usuario tiene las notificaciones desactivadas
    Cuando el sistema registra el estado "Valorización" para la entrega
    Entonces el sistema no envía ninguna notificación
    Y el historial del usuario muestra el estado "Valorización"
