# El alcance de las variables en un bloque en Ruby define dónde pueden ser usadas y modificadas.
# Las variables dentro de un bloque tienen un comportamiento especial dependiendo de si fueron definidas dentro o fuera del bloque.
# un bloque hereda el concepto  donde es usado.
# recibe las variables locales de donde se esta ejecutando.

def hola
    yield "leo"
end



# hola {puts "hola #{nombre}"}
hola do |nombre|
  puts "hola #{nombre}"
end

puts nombre

# el valor de la variable nombre dentro del bloque se mantiene incluso
# cuando estamos fuera del bloque y la ejecucion finzalizo.

# a su vez los bloques pueden definir varibales locales que solo pueden usadas dentro del bloque mismo
# a partir de nuevas versiones de ruby los bloques tambien pueden defiinir variables locales que no sean argumentos utilizando esta sintaxis:

def hola
    yield
end

nombre = "leo"

hola do |; nombre| # punto y coma separa los argumentos de la separacion de las variables locales. pero si viene un argumento primero se ponen estos.
  nombre = "marcos" # vean como la variable local mantiene el nombre marcos en vez de leo en el bloque mismo.
  puts "hola #{nombre}"

end
puts nombre

# otro ejemplo:

# Acceso y modificación de una variable externa dentro de un bloque:

contador = 0

5.times do
  contador += 1
end

puts contador  # Salida: 5

# La variable contador es definida fuera del bloque.
# Dentro del bloque, se incrementa en cada iteración.
# Después de que el bloque se ejecuta, el valor de contador se ha actualizado globalmente a 5.

# otro ejemplo ;
# Variable interna del bloque no accesible fuera :

3.times do
    numero = 42
    puts numero  # Salida: 42
end
  
puts numero  # Error: undefined local variable or method `numero`
  
# La variable numero es creada dentro del bloque.
# Puede ser usada dentro del bloque, pero fuera de él, no existe y provoca un error cuando intentas acceder a ella.

# ejemplo con variable externa que es modificada dentro de un bloque:
mensaje = "Hola"

3.times do
  mensaje += " tatico"
end

puts mensaje  # Salida: "Hola tatico tatico tatico"

# La variable mensaje se define fuera del bloque con el valor "Hola".
# Dentro del bloque, el valor de mensaje se va concatenando con " tatico " en cada iteración.
# Al finalizar las 3 iteraciones, el valor de mensaje ha sido modificado y al final se imprime "Hola tatico tatico tatico".



# Puntos clave sobre el alcance de variables en bloques:
# Variables locales externas: Las variables definidas fuera del bloque pueden ser accedidas y modificadas dentro del bloque.
# Variables locales internas: Las variables definidas dentro de un bloque no son accesibles fuera de él.
# Ámbito aislado: Un bloque no crea un nuevo ámbito para las variables, lo que significa que las variables
# definidas fuera del bloque pueden ser modificadas dentro de él

# Puntos clave finales:
# Las variables definidas fuera del bloque pueden ser modificadas dentro de él.
# Las variables creadas dentro de un bloque solo existen dentro del bloque; no están disponibles fuera.
# El bloque no crea un nuevo ámbito para las variables externas, pero sí lo hace para las variables que se crean dentro del bloque.





