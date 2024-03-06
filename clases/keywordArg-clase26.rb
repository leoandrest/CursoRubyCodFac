# En Ruby, los "argumentos de palabra clave" permiten especificar los argumentos de un método
# por su nombre en lugar de por su posición. Esto proporciona más claridad y flexibilidad a la
# hora de llamar a métodos, especialmente en el caso de métodos que aceptan un gran número de argumentos.
# Los argumentos de palabra clave se introdujeron en Ruby 2.0.

# He aquí un ejemplo básico de cómo funcionan los argumentos de palabra clave:


# def saludar(nombre:, edad:)
#   puts "¡Hola, #{nombre}! Tienes #{edad} años".
# end

# Llamar al método usando argumentos de palabra clave:

greet(nombre: "Juan", edad: 30)  # nombre: y edad: son los parámetros con nombre o argumentos de palabra clave del metodo

# def hola(nombre,edad)
#     if edad > 30
#         puts "hola señor #{nombre}"
#     elsif edad < 30
#         puts "hola joven #{nombre}"
#     end
# end

#ahora ya con el ruby mas actual se puede llamar el parametro con nombre

def hola(nombre:"",edad:0)
    if edad > 30
        puts "hola señor #{nombre}"
    elsif edad < 30
        puts "hola joven #{nombre}"
    end
end

hola(nombre:"tatico", edad:26)

#ventaja de utilizar este enfoque de parametros de nombre:

# 1. tienes valores opcionales. (parametros opciones)
# 2. valores por default. ejemplo= edad:0
# 3. el orden de los parametros es arbitrario, puedo pasar primero la edad y despues el nombre

# si quiero recibir parametros y valores sin fin:


def hola(nombre:"", edad:0 ,apellido:"", **options)
    if edad > 30
        puts "hola señor #{nombre}"
    elsif edad < 30
        puts "hola joven #{nombre}"
    end
    puts options[:frase_fav]
end

hola( nombre:"tatico", apellido:"algarin", edad:26, color_fav:"negro", frase_fav:"ome")

#salida : hola joven tatico   {:color_fav=>"negro", :frase_fav=>"ome"} # me lo manda como un hash y se accede de esta manera:

puts options[:frase_fav]
# asi accedemos a el valor que queramos.
# se add en ruby 2.1 los argumentos requeridos u obligatorios.



