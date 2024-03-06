#orientado a objetos.

# clases : definen el comportamiento que nuesto objeto tendran en el programa.
# a partir de esas clases creamos todo los objetos.
# digamos que en terminos sencillos nuestro programa es un restaurante con una serie de platillos en el menu
# las clases en ese contexto representan la receta del platillo y cada platillo un objeto.

# se encarga de definir atributos, metodos, campos y eventos. #toda esta informacion la debe de tenr el objeto.
# las clases utilizan camelcase y la primera letra es mayuscula.

class Video
    attr_accessor :minutes, :title
    
    def play
    end

    def pause
    end

    def stop
    end
end

video_30_curso_ruby = Video.new

video_30_curso_ruby.title = "Objetos y clases"

video_31_curso_ruby = Video.new

video_31_curso_ruby.title = "Atributos"

puts video_30_curso_ruby.title

puts video_31_curso_ruby.title


# en poo se cuida mucho el estado de las cosas.
# cada uno de los objetos guarda un estado propio para sus atributos.
# Objetos: Un objeto en Ruby es una instancia de una clase. Se crea a partir de la clase utilizando el método new.
# Cada objeto tiene sus propias copias de las variables de instancia de la clase y puede llamar a los métodos definidos en la clase.

# Herencia:
# Ruby también admite herencia, lo que significa que una clase puede heredar propiedades y comportamientos de otra clase. Por ejemplo:


class Estudiante < Persona
  def estudiar
    puts "#{@nombre} está estudiando."
  end
end

estudiante = Estudiante.new("tatico", 20)
estudiante.saludar  # Imprime "Hola, mi nombre es tatico y tengo 20 años."
estudiante.estudiar # Imprime "tatico está estudiando."
# En este ejemplo, la clase Estudiante hereda de la clase Persona y también define un método adicional estudiar.

# En resumen, las clases y los objetos en Ruby son los bloques de construcción básicos de la programación orientada
# a objetos. Las clases definen las propiedades y comportamientos comunes, mientras que los objetos son las instancias
# específicas de esas clases que pueden tener sus propias características y realizar acciones específicas.




