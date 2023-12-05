# IO => Input / Output

print "dame tu nombre: "



nombre = gets

nombre = nombre.chomp 



puts " Hola #{nombre}"

puts "#{nombre} tiene #{nombre.length} letras"
#print "nombre #{nombre} n/"

#En Ruby, es común utilizar el prefijo "get" en el nombre de un método para indicar que este método 
#se utiliza para obtener el valor de una propiedad o atributo de un objeto.

#En Ruby, el método chomp se utiliza para eliminar los caracteres de nueva línea (\n) 
#al final de una cadena. Este método es útil cuando estás trabajando con entrada de
#usuario o datos que pueden contener saltos de línea, y deseas limpiar la cadena
#eliminando esos caracteres finales.