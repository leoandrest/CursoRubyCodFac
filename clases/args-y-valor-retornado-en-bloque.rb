# Bloques en Ruby:
# Un bloque en Ruby es una porción de código encerrada entre llaves {} o entre do...end, que puede ser pasada a un método.
# Los bloques no son objetos, pero pueden recibir argumentos y retornar valores.

# Argumentos en bloques:
# Puedes pasar argumentos a un bloque usando |argumentos|. El bloque puede recibir estos argumentos cuando el método que lo llama los proporciona.
# Valor retornado en bloques:
# El valor de un bloque es el valor de la última expresión evaluada dentro del bloque. Ruby devuelve automáticamente este valor sin necesidad de
# la palabra clave return.


class Usuario
    attr_accessor  :nombre
    
    def saludar_with
        saludo = yield(@nombre)
        puts saludo
        # yield(nombre) # ademas que un bloque puede retornar un valor.
    end  # ademas que no se utiliza return ya que no es valido ya que es exclusivo de los metodos y no puede ser usado dentro de un bloque.

end

tatico = Usuario.new
tatico.nombre = "tatico"
tatico.saludar {|nombre| puts "hola #{nombre}"}   # dentro de las paredes va siempre todos los argumentos para mandar a llamar.
tatico.saludar {|nombre| puts "hellow #{nombre}"}


#ejemplo 2:
def suma
    resultado = yield(2, 3)
    puts "La suma es: #{resultado}"# El método suma pasa 2 y 3 al bloque.
                                     # El bloque devuelve la suma de a y b, que se asigna a resultado.
                                    # El método imprime el resultado.
end
  
suma { |a, b| a + b }

# puntos claves:
# Argumentos en bloques: Se pasan entre | | y los valores son proporcionados por el método que llama al bloque.
# Valor retornado: El bloque devuelve el resultado de la última línea evaluada.
# Bloques y yield: Los métodos pueden invocar bloques con yield y pasarles valores.
# Flexibilidad: Los bloques son usados para iteraciones, manipulaciones de datos y callbacks, proporcionando gran flexibilidad en Ruby.

