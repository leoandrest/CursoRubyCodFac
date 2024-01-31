numero_uno = gets.chomp.to_i
numero_dos = gets.chomp.to_i
edad = gets.chomp.to_i


if numero_uno > numero_dos && numero_dos < numero_uno
    puts "#{numero_uno} es mayor que #{numero_dos}"
elsif numero_uno == numero_dos
    puts " ambos numeros son iguales"
else
    puts "#{numero_uno} es menor que #{numero_dos}"
end

# si el if solo ocupa una linea:
puts "#{numero_uno} es mayor que #{numero_dos}" if numero_uno > numero_dos

puts "hola mundo" unless false    #(solo se ejecuta si el resultado es falso) 
#(solo se utiliza unless cuando hay un caso y una linea de codigo del resto if-else)

puts "Numero uno: #{numero_uno} y numero dos #{numero_dos}"

#ejemplo con edades
if edad < 18 
    puts "eres un menor ome, no puedes entrar"
end

# A menos que:
unless edad >= 18 
    puts "eres un menor ome, no puedes entrar"
end

#buena practica : si veo en mi programa el signo de negacion (!) es mejor
#reemplazarlo por un Unless y quitar el operador:

