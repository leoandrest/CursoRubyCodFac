# ciclo each

# buena practica : en ruby rara vez se utiliza el ciclo for para iterar por eso la mayoria de veces se utiliza each.
calificaciones = %w[10 9 8 7 6 5 4]
print calificaciones

suma = 0  #suma los elementos.

#promedio
calificaciones.each do |calificacion|
    suma += calificacion.to_i  #para convertir a entero por el %w
end

puts "el promedio de tus calificaciones es #{suma.to_f / calificaciones.length}"  # to_f para decimales.

#posicion y calificacion

# calificaciones.each_with_index do |calificacion,posicion|  #para saber la posicion que se encuentra cada arreglo.
#     puts "en la posicion #{posicion} tenemos: #{calificacion}"
# end

#calificacion

# calificaciones.each do |calificacion|
#     puts "ahora calificacion vale: #{calificacion}"
# end8