# Los arreglos en Ruby son estructuras de datos que pueden contener múltiples elementos de cualquier tipo, 
# incluidos números, cadenas, objetos y otros arreglos. Se definen utilizando corchetes [] y pueden ser
# modificados dinámicamente. Aquí hay algunas características y ejemplos de cómo trabajar con arreglos en Ruby:

#puede almacenar cualquier tipo de dato.
#no tiene una dimension definida.


arreglo = %w[ 1, 40 "strings"]  #inicializar un arreglo que contiene una cadena.
arreglo << 'hola'  #es otra forma, significa insercta lo que este a la derecha en mi arreglo de la izquierda.
arreglo = [3, "perro" , true]
arreglo [3] = ":)" #agregar elemento al array.
arreglo_dos = Array.new(5)  #inicializa un arreglo con 5 posiciones pero vacias.


puts arreglo

puts arreglo_dos

puts arreglo.length

puts arreglo [1] 

