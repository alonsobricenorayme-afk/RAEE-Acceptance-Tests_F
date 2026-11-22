# language: es
@EP02 @HU09 @funcional
Característica: HU09 Generación del QR de lote
  Como empresa generadora de RAEE
  Quiero generar un único código QR para el lote ya creado
  Para identificarlo a lo largo de todo el proceso

  @positivo
  Escenario: Generación del QR al confirmar el lote
    Dado que existe el lote "L-001" con 3 equipos y sin código QR
    Cuando la empresa confirma el lote
    Entonces el sistema genera el código QR del lote
    Y el código queda vinculado al detalle del lote

  @negativo
  Escenario: Lote ya confirmado
    Dado que el lote "L-001" ya tiene el código QR "QR-L001"
    Cuando la empresa confirma el lote por segunda vez
    Entonces el lote conserva un solo código QR
    Y la pantalla muestra el código "QR-L001"
