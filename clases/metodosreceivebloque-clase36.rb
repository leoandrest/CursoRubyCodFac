
# En Ruby, los bloques son una parte fundamental del lenguaje, permitiendo pasar código como argumentos a los métodos y ejecutarlos
# en un contexto específico.

def hola
    yield
end

hola { puts "hola TATICO"}
# Explicación:
# El método hola no recibe ningún argumento explícito, pero dentro del cuerpo del método hay una llamada a yield.
# yield ejecuta el bloque que se le pasa al método.
# En este caso, el bloque { puts "hola TATICO" } se pasa al método hola, y es ejecutado cuando yield es invocado.

def hola
    yield if block_given?
end

hola { puts "hola tatico" }
# Explicación:
# Aquí, block_given? es un método que verifica si se ha pasado un bloque al método.
# Solo si se pasa un bloque, se invocará yield. Si no, el método simplemente no hace nada.
# Esto es útil para evitar errores si llamas a hola sin un bloque.


def hola &bloque
    yield if block_given?
end

hola { puts "hola taticooo" }
# def hola(&bloque):

# El método hola recibe un bloque de código, y el parámetro &bloque convierte ese bloque en un objeto Proc.
# Esto significa que ahora puedes manipular ese bloque como si fuera un objeto en Ruby.
# Sin embargo, en este caso, el parámetro &bloque no se utiliza dentro del cuerpo del método.
# yield if block_given?:Aquí se usa yield para ejecutar el bloque que se pasó al método.
# La condición block_given? verifica si realmente se pasó un bloque al método, evitando que se produzca un error si llamas a hola sin un bloque.
# llamada del metodo:
# El bloque { puts "hola taticooo" } se pasa al método hola. Luego, yield lo ejecuta, y se imprime el mensaje "hola taticooo".


# Diferencia entre &bloque y yield en este caso:
# Aunque el método acepta el bloque con &bloque, no se usa ese objeto Proc directamente en este caso, sino que yield es el que ejecuta el bloque.
# Podrías eliminar el parámetro &bloque porque en realidad no se utiliza dentro del cuerpo del método. Sería equivalente a escribir esto:
# def hola
#     yield if block_given?
# end


def hola &bloque
    otro_hola(&bloque)
end

def otro_hola &block
    puts "mandando a llamar desde otro_hola"
    block.call
end

hola { puts "hola tatico"}
# Explicación:
# El símbolo & en &bloque convierte un bloque en un objeto Proc que puedes almacenar y pasar entre métodos.
# El método hola recibe el bloque, lo convierte en un Proc y lo pasa a otro método (otro_hola).
# Dentro de otro_hola, el bloque es ejecutado mediante bloque.call.
# Esto permite mayor flexibilidad, ya que puedes manipular el bloque como cualquier otro objeto y pasarlo a múltiples métodos.


# dos ejemplos mas fuera de clase:

# bloques con each:
[1, 2, 3].each { |num| puts num } #Aquí, el método each pasa cada elemento del array al bloque, donde num es impreso.

# apuntes extras:
# Un Proc es un objeto que encapsula un bloque de código en Ruby.
# Se puede almacenar en una variable, pasarlo a otros métodos y ejecutarlo en cualquier momento.
# Los bloques son más simples y no son objetos, pero puedes convertirlos en objetos Proc usando &.
# Esto te da mayor flexibilidad para trabajar con bloques y código reutilizable en Ruby.

#lista de casos donde se pueda usar metodos de bloque:

#1. Iteración y manejo de colecciones
# Ruby es famoso por su uso de bloques en métodos como each, map, select, etc., para iterar sobre colecciones.

# Ejemplo: Iterar sobre una colección como anteriormente arriba vimos.
# [1, 2, 3].each { |num| puts num }

# Este uso es común en situaciones donde quieres ejecutar una operación sobre cada elemento de una lista o colección,
# como mostrar, transformar o filtrar elementos.


# Transformar elementos (usando map) :

# nombres = ["Ana", "Pedro", "Luis"]
# mayusculas = nombres.map { |nombre| nombre.upcase }
# puts mayusculas
# Aquí, el bloque transforma cada nombre a mayúsculas.

# 2. Diferir la ejecución de código
# Puedes usar métodos con bloques para diferir la ejecución de una operación hasta el momento en que sea necesaria.
# Esto es útil cuando no quieres ejecutar el código inmediatamente, sino en un contexto específico.

# Ejemplo: Código ejecutado bajo condición

# def realizar_operacion(importante)
#     if importante
#       yield if block_given?  # Ejecutar el bloque solo si se pasa y la condición se cumple
#     else
#       puts "Operación no importante"
#     end
# end
  
# realizar_operacion(true) { puts "Operación importante ejecutada" }
# realizar_operacion(false) { puts "Esta línea no se ejecutará" }

# Esto es útil para condiciones donde una operación puede o no ejecutarse dependiendo del estado de algo.


# 3.Configuración personalizada
# Muchas bibliotecas y APIs en Ruby usan bloques para permitir una configuración flexible de objetos o sistemas. En lugar de pasar múltiples parámetros, puedes usar un bloque para personalizar un comportamiento o configuración.

# Ejemplo: Configuración de un objeto:

# class Configuracion
#     attr_accessor :opcion1, :opcion2
  
#     def initialize
#       yield(self) if block_given? # El bloque modifica el objeto
#     end
# end
  
# conf = Configuracion.new do |c|
#     c.opcion1 = true
#     c.opcion2 = "Valor predeterminado"
# end
  
# puts conf.opcion1 # true
# puts conf.opcion2 # "Valor predeterminado"

# Aquí, el bloque permite configurar el objeto Configuracion de manera flexible.

  

  



