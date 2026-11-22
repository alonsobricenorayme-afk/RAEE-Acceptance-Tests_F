# language: es
@EP02 @HU04 @funcional
Característica: HU04 Generación de código QR único
  Como ciudadano que genera RAEE en su hogar
  Quiero que mi entrega genere un código QR único
  Para identificar mi aparato a lo largo de todo el proceso

  @positivo
  Escenario: Generación del QR al confirmar la entrega
    Dado que el ciudadano registró el siguiente aparato:
      | categoría | estado     | foto       |
      | Tablet    | Registrado | tablet.jpg |
    Cuando el ciudadano confirma la entrega
    Entonces el sistema genera un código QR único para la entrega
    Y el código queda en el historial del ciudadano

  @negativo
  Escenario: Registro incompleto
    Dado que el ciudadano registró el siguiente aparato:
      | categoría | estado     | foto |
      |           | Registrado |      |
    Cuando el ciudadano confirma la entrega
    Entonces el sistema no genera ningún código QR
    Y el sistema indica los datos faltantes:
      | campo     |
      | categoría |
      | foto      |
