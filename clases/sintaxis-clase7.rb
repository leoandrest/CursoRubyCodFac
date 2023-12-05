# se pueden obviar los puntos y coma al final de la linea de codigo. no se utilizan, cuando rara
# vez pase eso es porque tendremos dos lineas de codigo pegada en la misma linea.

#- los comentarios son con gato(#) una sola linea de codigo.
#- en ruby al pasar o al ejecutar una funcion o un metodo son opcionales los parametros.
#- en cualquier funcion por default se deben usar () y solo no usarlos cuando estemos en frente de
# (dsl)
#- la recomendacion en ruby es siempre usar snakecase con la clara excepcion de las clases.

# Variables locales
x = 5
y = "Hola"

# Variables de instancia
@variable_instancia = "Soy una variable de instancia"

# Variables de clase
@@variable_clase = "Soy una variable de clase"

# Constantes (mayúsculas)
MI_CONSTANTE = 3.14


# Números
numero_entero = 42
numero_decimal = 3.14

# Cadenas
cadena = "Hola, Ruby!"

# Símbolos (inmutables y eficientes para identificadores)
simbolo = :mi_simbolo

# Arreglos
mi_arreglo = [1, 2, 3, 4]

# Hashes (diccionarios)
mi_hash = { "nombre" => "Juan", "edad" => 25 }

# Condicionales
if condicion
    # código si la condición es verdadera
  elsif otra_condicion
    # código si la otra condición es verdadera
  else
    # código si ninguna condición es verdadera
  end
  
  # Bucles
  while condicion
    # código mientras la condición sea verdadera
  end
  
  for elemento in lista
    # código para cada elemento en la lista
  end
  
  # Iteradores
  mi_arreglo.each do |elemento|
    # código para cada elemento en el arreglo
end

# Definición de un método
def saludar(nombre)
    puts "Hola, #{nombre}!"
  end
  
  # Llamada a un método
saludar("Juan")

# clases y objetos 
class Persona
    attr_accessor :nombre, :edad
  
    def initialize(nombre, edad)
      @nombre = nombre
      @edad = edad
    end
  
    def saludar
      puts "Hola, soy #{@nombre} y tengo #{@edad} años."
    end
end
  
# Crear un objeto
juan = Persona.new("Juan", 25)
  
# Acceder a los atributos y llamar a un método
puts juan.nombre
juan.saludar
  
  
  
