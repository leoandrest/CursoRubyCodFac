#sintaxis :

# while expresion
#   #instrucciones
# end

# while y until son bucles en Ruby que controlan la ejecución repetida de un bloque
# de código mientras se cumpla (o no se cumpla) una determinada condición. Aquí tienes
# una explicación detallada de cada uno:


# while Se utiliza para ejecutar un bloque de código mientras una condición sea verdadera:

i = 0 

while i < 10 
    #instrucciones
    puts i
    i += 1
end

# ejemplo #1

playlist = ["first song", "second song","third song"]
playing = true

index_song = 0

# si hay canciones en la lista de reproduccion y
# se esta reproduciendo (playing es verdadero)
# entonces debe ejecutar las canciones


while (index_song < playlist.length) && playing
    puts "reproduciendo #{playlist[index_song]}"

    index_song += 1

    # si nos manda 0, hacemos stop, si no seguimos reproduciendo
    print "coloca 0 para detener la reproduccion : "
    respuesta = gets().chomp.to_i
    # reescrito de forma mas ruby
    # playing = false if respuesta == 0
    # otra forma con menos codigo
    playing = respuesta != 0
    #     playing = false
    # end
    
    
end

#ejemplo 2:

numero_magico = 20

print "Adivina el numerito y te ganas un tico: "
numero_usuario = gets().chomp.to_i

while numero_usuario != numero_magico
    print "incorrecto ome, si no adivinas no hay tico, dale de nuevo: "
    numero_usuario = gets().chomp.to_i
end

puts "congratulations burrito, aqui tienes tu tico XD... "

# until

# Se utiliza para ejecutar un bloque de código mientras una condición sea falsa. Una vez que la condición se 
# vuelve verdadera, el bucle termina y la ejecución continúa fuera del bucle.
# hasta que el numero de usuario sea igual al numero magico pasa.
numero_magico = 20

print "Adivina el numerito y te ganas un tico: "
numero_usuario = gets().chomp.to_i

until numero_usuario == numero_magico
    print "incorrecto ome, si no adivinas no hay tico, dale de nuevo: "
    numero_usuario = gets().chomp.to_i
end

puts "congratulations burrito, aqui tienes tu tico XD... "


#do while

# La estructura begin define un bloque de código que se ejecutará al menos una vez,
# independientemente de la condición. Entonces, al combinar begin con while, puedes
# lograr un comportamiento similar a do while.


begin
    numero = gest().chomp.to_i
end while numero < 0

# NOTA:

# es importante tener en cuenta que el uso de begin con while de esta manera no es tan 
# común en Ruby como en otros lenguajes, y generalmente se prefieren las estructuras 
# de control más explícitas como while y until. Por lo tanto, se recomienda utilizar
#  while o until cuando sea posible para mantener el código más claro y legible.


