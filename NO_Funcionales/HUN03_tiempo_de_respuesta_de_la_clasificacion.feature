# language: es
@HUN03 @no_funcional @rendimiento
Característica: HUN03 Tiempo de respuesta de la clasificación por foto
  Como ciudadano que genera RAEE en su hogar
  Quiero que la clasificación por foto responda rápido
  Para no esperar con la cámara en la mano

  @verificable
  Escenario: Respuesta de la clasificación en 3 segundos
    Dado que el ciudadano tiene una conexión móvil 4G de al menos 5 Mbps
    Y que la foto pesa 3 MB o menos
    Cuando el ciudadano envía la foto para clasificarla
    Entonces el sistema responde en 3 segundos o menos en el 95 % de las solicitudes
    Y el sistema mantiene ese tiempo con hasta 50 solicitudes simultáneas
    Y el equipo verifica el tiempo con una prueba de carga de 100 solicitudes
