calificaciones = [10,7,8,9,5,8,6]



#puts calificaciones * 3 # el array se triplica
#puts calificaciones * " - "       #se hace un join al multiplicar por una cadena.
#puts calificaciones.join("")     # join convierte un arreglo en una cadena

#join recibe como argumento un string que separa los elementos de una cadena

#puts calificaciones.sort
#puts calificaciones.reverse # para invertir el arreglo.
#puts calificaciones.include?(10) #para buscar el elemento en mi arreglo.
#puts calificaciones.first #(primer arreglo)
#puts calificaciones.last   #(ultimo arreglo)
#puts calificaciones.uniq #me devuelve el mismo arreglo pero sin elementos repetidos.
puts calificaciones.sample #devuelve uno de los elementos de forma aleatoria

#Nota sobre la mutabilidad:

#Es importante tener en cuenta que el método .sort no modifica el objeto original,
#sino que devuelve un nuevo objeto ordenado. Si deseas modificar el objeto original,puedes utilizar el método .sort!

#numeros = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
#numeros.sort!
#puts numeros.inspect  # Output: [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]

#En resumen, el método .sort es una forma conveniente de ordenar elementos en Ruby,
#ya sea en arreglos, rangos, hashes u otros tipos de enumerables.

