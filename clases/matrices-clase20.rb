# Matrices

# si tenemos un arreglo que no tiene otro arreglo adentro no califica como una matriz.
# los arreglos internos tienen que ser del mismo tamaño
# matrix => todos los elementos deben ser numeros.
# En Ruby, las matrices son colecciones bidimensionales de elementos que se organizan en
# filas y columnas. Pueden contener cualquier tipo de objeto como elementos, incluidos números,
# cadenas, otros arreglos, etc. Aquí tienes una introducción a las matrices en Ruby:


# Creación de una matriz:
# Puedes crear una matriz en Ruby utilizando el constructor Array.new o utilizando corchetes [].
# Aquí tienes algunos ejemplos:


# # Crear una matriz vacía
matriz_vacia = Array.new

# Crear una matriz con elementos
matriz = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

# Acceso a elementos de una matriz:

# Puedes acceder a elementos específicos de una matriz utilizando índices.
# Los índices en Ruby comienzan en 0. Aquí hay algunos ejemplos:

matriz = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

puts matriz[0][0]  # Imprime el primer elemento de la primera fila (1)
puts matriz[1][2]  # Imprime el tercer elemento de la segunda fila (6)


# Operaciones comunes en matrices:
# Puedes realizar varias operaciones comunes en matrices, como agregar elementos, eliminar elementos,
# cambiar elementos, etc. Aquí hay algunos ejemplos:

matriz = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

# Agregar una nueva fila a la matriz
matriz << [10, 11, 12]

# Cambiar un elemento de la matriz
matriz[1][1] = 99

# Eliminar una fila de la matriz
matriz.delete_at(0)

# Obtener el número de filas y columnas de la matriz
num_filas = matriz.length
num_columnas = matriz[0].length

require 'matrix'

# [
#     1 8 3
#     5 2 2
#     5 2 2
# ]

matriz = Matrix[[1,0,0],[0,2,0],[0,0,2]]
puts matriz.diagonal?

matriz.each do |i|
    puts i 
end 

# para hallar diagonal de matrix:

matriz.each(:diagonal) do |i|
    puts i
end

# para hallar elementos abajo de la diagonal

matriz.each(:strict_lower) do |i|
    puts i
end

# para hallar elementos arriba de la diagonal

matriz.each(:strict_upper) do |i|
    puts i
end
