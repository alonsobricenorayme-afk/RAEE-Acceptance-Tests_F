# language: es
@HUN07 @no_funcional @integridad
Característica: HUN07 Integridad del historial de entregas
  Como ciudadano que genera RAEE en su hogar
  Quiero que el historial de mi entrega no pueda alterarse
  Para confiar en las pruebas de su destino

  @positivo
  Escenario: Registro completo de cada cambio de estado
    Dado que un gestor cambia una entrega del estado "Recolección" a "Centro de Acopio"
    Cuando el sistema registra el cambio
    Entonces el sistema guarda el usuario, la fecha y la hora en el 100 % de los cambios de estado
    Y el sistema bloquea la edición y la eliminación del registro, incluso para el administrador

  @negativo
  Escenario: Intento de alteración del historial
    Dado que existe un cambio de estado registrado
    Cuando un usuario intenta editar o borrar el registro
    Entonces el sistema rechaza la acción
    Y el sistema guarda el intento en un registro de auditoría
