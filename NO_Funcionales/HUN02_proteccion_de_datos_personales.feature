# language: es
@HUN02 @no_funcional @seguridad
Característica: HUN02 Protección de datos personales
  Como usuario registrado de RAEE Track
  Quiero que mis datos personales estén protegidos y se usen solo con mi consentimiento
  Para sentirme seguro de usar la aplicación

  @verificable
  Escenario: Cifrado y consentimiento de los datos
    Dado que un usuario de prueba registra sus datos personales en la aplicación
    Cuando el sistema transmite y almacena los datos
    Entonces se verifica lo siguiente:
      | verificación                          | resultado esperado           |
      | tráfico transmitido por HTTPS con TLS | 100 %, TLS 1.2 o superior    |
      | datos personales en la base de datos  | cifrados con AES-256         |
      | contraseña almacenada                 | hash con sal, no texto plano |
      | consentimiento del usuario            | registrado con fecha y hora  |
