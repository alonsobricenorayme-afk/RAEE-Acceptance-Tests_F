# language: es
@EP01 @HU03 @funcional
Característica: HU03 Corrección manual de la categoría
  Como ciudadano que genera RAEE en su hogar
  Quiero corregir la categoría cuando la IA se equivoca o no está segura
  Para no quedar bloqueado en el proceso

  @positivo
  Escenario: Corrección por baja confianza de la clasificación
    Dado que la confianza de la clasificación del aparato es baja
    Cuando el ciudadano elige la categoría "Teléfono móvil"
    Entonces el flujo continúa con la categoría "Teléfono móvil"
    Y el origen de la categoría queda registrado como "MANUAL"

  @negativo
  Escenario: Rechazo del resultado sugerido
    Dado que la aplicación sugiere la categoría "Refrigeradora"
    Y que el aparato real es un microondas
    Cuando el ciudadano rechaza la sugerencia
    Y elige la categoría "Microondas"
    Entonces el aparato queda con la categoría "Microondas"
    Y la corrección queda registrada como "MANUAL"
