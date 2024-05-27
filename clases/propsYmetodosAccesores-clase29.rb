# attr_accessor es una forma conveniente de definir atributos y sus métodos de acceso en Ruby,
# evitando tener que escribir los métodos de lectura y escritura manualmente. Esto ayuda a mantener el código limpio y legible.
# las variables de instancia inician con un arroba (@)
# las variables de instancia no pueden ser modificadas ni observadas fuera del objeto es decir no podemos leerlas ni acceder a su valor 
# a menos que sea dentro de la definicion de la clase.

# las propiedades se identifican con variables de instancia que estas son identificadores que le pertenecen al objeto y no a
# la clase por eso son de instancia
# puedes acceder a las variables de instancia ddesde cualquier parte del objeto.
# ej de 2 objetos de propiedad nombre con valor distinto.

class Tutor
    attr_accessor  :nombre
    def initialize(name)
        @nombre = name
    end

    #def nombre
    #    @nombre
    # end

    #def nombre=(nombre)
    #     @nombre = nombre
    # end
end 

tatico = Tutor.new("tatico")
uriel = Tutor.new("uriel")  #dos objetos que son instancia de una clase pero cada uno de ellos con un valor distinto

# puts tatico
# puts uriel

puts uriel.nombre

uriel.nombre = ("marcos")

puts uriel.nombre

# como modificamos una propiedad del objeto si no podemos acceder a el ?
# :utilizamos metodos accesores
# los metodos accesores son de 2 tipos: los setter y los getter.
# los getter sirven para leer propiedades. ejem get_nombre
# los setter sirven para asignar o modificar una propiedad ejem set_nombre

# los getter se ven iguales al nombre de la propiedad
# los setter tienen el mismo nombre de la propiedad con el signo igual " = ".
# con estos el codigo es mucho mas legible mas de ruby.

# ruby tiene metodos para no escribir tanto codigo eje:

# class Tutor
#     attr_accessor : nombre  # define tanto el getter como el setter.
#     attr_reader : nombre    # solo define getter
#     attr_writer : nombre    # solo define el setter
# end

 