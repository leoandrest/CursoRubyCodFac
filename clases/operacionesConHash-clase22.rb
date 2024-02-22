# Mas operaciones con hash

# .size o .length

tutor = {nombre: "tatico", edad: "26", cursos: 10}

puts tutor.length

puts tutor.has_key?(:parametros) # nos devuelve (v) cuando pasamos clave que existe dentro del hash y falso cuando no
 
# .keys,.hash,.value:

tutor = {nombre: "tatico", edad: "26", cursos: 10}

puts tutor.has_key?(:nombre) #devuelve (v) cuando pasamos clave que es verdadera
puts tutor.keys #devuelve todas las llaves.
puts tutor.values #devuelve los valores de las llaves.


# para deshacernos de todo lo del hash.

tutor = {nombre: "tatico", edad: "26", cursos: 10}

tutor.clear

puts tutor
puts tutor.empty?  # para saber si el hash esta vacio o no.


# para eliminar un elemento en una posicion especifica.

tutor = {nombre: "tatico", edad: "26", cursos: 10}

tutor.delete(:cursos)  # borrar elemento del hash

puts tutor
puts tutor.key("26") #para saber el valor por si no recuerdo la clave.

puts tutor.has_value?("tatico") # nos devuelve (v) si el valor existe.

puts tutor.invert # transforma los valores en claves y las claves en valores.

# combinar dos hashes.

tutor = {nombre: "tatico", edad: "26", cursos: 10}

user_info = {apellido: "algarin" , segundo_apellido: "gonzalez"}

puts tutor.merge(user_info)

#iterar de otra manera:

personaje = {
  "nombre" => "Juan",
  "edad" => 30,
  "ciudad" => "Ciudad de México"
}

personaje.each do |clave, valor|
  puts "#{clave}: #{valor}"
end


