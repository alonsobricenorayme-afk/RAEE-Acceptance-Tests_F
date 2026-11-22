# language: es
@HUN05 @no_funcional @disponibilidad
Característica: HUN05 Disponibilidad de la plataforma
  Como usuario registrado de RAEE Track
  Quiero que la plataforma esté disponible cuando la necesite
  Para registrar o consultar mis entregas

  @verificable
  Escenario: Disponibilidad mensual mínima
    Dado que un monitor verifica la plataforma cada 5 minutos durante 30 días
    Y que el mantenimiento programado se avisa con 24 horas de anticipación
    Cuando se calcula la disponibilidad del período
    Entonces la disponibilidad es de 99 % o más
    Y el tiempo total de caída es de 7 horas y 12 minutos o menos
