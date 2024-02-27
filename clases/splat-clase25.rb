# SPLAT OPERATOR:

# El operador splat (*) en Ruby se utiliza para desempaquetar elementos de un arreglo o parámetros de un método.
# usos principales:

# Desempaquetar elementos de un arreglo.
# Puedes utilizar el operador splat para desempaquetar los elementos de un arreglo en variables individuales.
# Por ejemplo:


arreglo = [1, 2, 3]
a, b, c = *arreglo
puts a  # Imprime 1
puts b  # Imprime 2
puts c  # Imprime 3   #Esto es útil cuando quieres asignar cada elemento del arreglo a una variable separada.

def hola_personas(personas)
    personas.each {|persona| puts "hola #{persona}"}
end

hola_personas(["tatico", "vale"])

# es raro usar la sintaxis de arriba, ya en ruby eso importa bastante.
# aqui como se usa:

def hola_personas(*personas) #el operador splat dice a este metodo puedes pasarle cualquier cantida de argumentos y yo los recibire como un arreglo.
    personas es un arreglo
    personas.each {|persona| puts "hola #{persona}"}
end

hola_personas"tatico", "vale" #$ ruby splat-clase25.rb retorna hola tatico , hola vale.
hola_personas 23   # retorna hola 23 

#splat se puede combinar con otros argumentos que sean fijos.

def hola_gente(mensaje, *personas)
    personas.each { |persona| puts "#{mensaje} #{persona}" }
end

hola_gente "hey como vas", "Tatico", "Vale"

# toda la lista de nombres se almacena en *personas
# el splat dice que puede recibir los argumentos que sean. eso hace fuerte a ruby

#se puede usar tambien de forma inversa para convertir un arreglo en un argumento.

def hola_gente(mensaje, *personas)
    personas.each { |persona| puts "#{mensaje} #{persona}" }
end

nombres = ["tatico" , "vale", ":)"]
hola_gente "quiubo ome ", *nombres