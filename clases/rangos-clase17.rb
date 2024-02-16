#numeros = (1..10)

numeros.each do |numero|
    puts numero
end

#otra forma para ahorrar codigo

(1..20).each do |numero|
    puts numero
end

# para ir contando el rango de 2 en 2

(0..20).step(2).each do |numero|
    puts numero
end

# contar letras

('a'..'z').each do |numero|
    puts numero + " , "
end
 
maximo numero
puts (0..20).max
minimo numero
puts (0..20).min

#nota: los rangos no son arreglos por lo tanto no van a funcionar los metodos de los arreglos.

# para convertir un rango en un arreglo hacemos lo siguiente:

puts (0..20).to_a.reverse

# los rangos no almacenan todos los datos si convertimos el rango a arreglo hay si podemos
#  acceder a todos los datos.
# usualmente los rangos son los que vamos a utilizar para hacer la clase de cosas que se hacia con el for en otros lenguajes