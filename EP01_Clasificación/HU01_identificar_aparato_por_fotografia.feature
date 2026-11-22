# language: es
@EP01 @HU01 @funcional
Característica: HU01 Identificación de aparato por fotografía
  Como ciudadano que genera RAEE en su hogar
  Quiero tomar una foto de mi aparato en desuso
  Para saber qué tipo de RAEE es sin buscar información

  Antecedentes:
    Dado que el ciudadano abrió el escáner de la aplicación

  @positivo
  Esquema del escenario: Clasificación exitosa del aparato
    Dado que el ciudadano concedió el permiso de la cámara
    Cuando captura la foto "<archivo>"
    Entonces la aplicación muestra la categoría "<categoría>"
    Y la aplicación muestra el nivel de confianza de la clasificación

    Ejemplos:
      | archivo            | categoría      |
      | tv_led_nitida.jpg  | Televisor      |
      | celular_nitido.jpg | Teléfono móvil |

  @negativo
  Esquema del escenario: Fotografía no nítida
    Cuando captura la foto "<archivo>"
    Entonces la aplicación muestra el mensaje "No se pudo identificar el aparato"
    Y la aplicación solicita tomar una nueva foto

    Ejemplos:
      | archivo                         |
      | microondas_borroso_poca_luz.jpg |
      | laptop_oscura.jpg               |
