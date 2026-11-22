# language: es
@EP01 @HU02 @funcional
Característica: HU02 Consulta de peligrosidad y recomendaciones
  Como ciudadano que genera RAEE en su hogar
  Quiero ver el nivel de peligrosidad y las recomendaciones de reciclaje de mi aparato
  Para manejarlo de forma segura y entender por qué no debo botarlo

  @positivo
  Esquema del escenario: Visualización de peligrosidad y recomendaciones
    Dado que el aparato fue clasificado como "<categoría>" con peligrosidad "<peligrosidad>"
    Cuando el ciudadano abre el resultado de la clasificación
    Entonces la pantalla muestra la categoría "<categoría>"
    Y la pantalla muestra la peligrosidad "<peligrosidad>"
    Y la pantalla muestra al menos una recomendación de manejo

    Ejemplos:
      | categoría | peligrosidad |
      | Laptop    | media        |
      | Televisor | media        |

  @negativo
  Escenario: Aparato de peligrosidad alta
    Dado que el aparato fue clasificado como "Batería de litio" con peligrosidad "alta"
    Cuando el ciudadano abre el resultado de la clasificación
    Entonces la pantalla resalta la advertencia de manejo seguro
    Y el mensaje indica que "no debe desecharse con la basura común"
