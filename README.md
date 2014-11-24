# Prct09

Propiedad de:

Iván García Campos
Fabian Díaz Lorenzo

Practica 9. Programacion orientada a objetos. Metodos Singletons

El objetivo de la practica es la implementacion de una clase Ruby Examen, 
una clase Interfaz, una clase Lista enlazada y una clase pregunta de la que 
heredan dos mas, una verdadera/falso y una preguntas correctas/incorrectas.

El objetivo de la practica sera que el usuario interactue con la interfaz
para responder a las preguntas de examen. Al finalizar, se dirá la nota 
que ha obtenido el usuario.

NOTA:

Se guardan los resultados del usuario en el examen. Consideramos examen por usuario.
De esta forma, si queremos cambiar las opciones marcadas, se tendra que hacer de la siguiente forma:

@exameninterfaz.examen.opcion_marcada = ["Verdadero","Una instancia de la clase Class", "Ninguna de las anteriores", "Cierto", "nil"]
@exameninterfaz.calcular_nota(@exameninterfaz.examen.opcion_marcada)
expect(@exameninterfaz.mostrar_resultado)== (true)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
