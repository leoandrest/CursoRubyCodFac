# initialize es un método especial que se llama automáticamente cuando se crea una nueva instancia de una clase.
# Es similar al constructor en otros lenguajes de programación orientados a objetos.
# Cuando defines un método initialize dentro de una clase en Ruby, ese método se ejecutará automáticamente cada 
# vez que uses el método new para crear un nuevo objeto de esa clase. Esto te permite realizar cualquier inicialización
# necesaria en el objeto recién creado.

class Video
    attr_accessor :minutes, :title

    def initialize(title)
        self.title = title
        puts "soy initialize"
    end
    
    def play
    end

    def pause
    end

    def stop
    end
end

video_30_curso_ruby = Video.new(" initialize ")

# self.title = title se refiere a la llamada al método title= de la instancia actual de la clase Video.
# self en este contexto es una forma de especificar que estás llamando al método title= del objeto actual.

# En resumen, self en este contexto es una forma de referirse al objeto actual dentro de la clase.
# Se utiliza para distinguir entre métodos de instancia y variables de clase, especialmente cuando
# los nombres son iguales. En este caso, se usa para asignar el título pasado como argumento al método
# initialize a la variable de instancia title.

# Buena practica : no dejarle mucho trabajo al metodo constructor(initialize) porque
# eso haria mas dificil probar el comportamiento de nuestro metodo.

# Es importante destacar que initialize es solo un método como cualquier otro en Ruby,
# pero tiene un comportamiento especial debido a que se llama automáticamente al crear 
# un nuevo objeto de la clase. Esto permite que el objeto se inicialice correctamente antes
# de que se utilice en el programa.