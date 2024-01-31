#En Ruby, el operador ternario es una forma concisa de expresar una condición y 
#asignar un valor en función de si la condición es verdadera o falsa. La sintaxis básica 
#del operador ternario en Ruby es la siguiente:

user = "leonardo"

if user == "leonardo"
    puts " tutor ome"
else 
    puts "visitante"
end


#con then y else para una sola linea de codigo.

puts (if user == "leonardo" then "tutor" else "visitante" end)

#si_condicion_verdadero ? entonces_resultado : si_no_esto
if true then algo else otra_cosa end

#ejemplo con la condicion

puts user == "leonardo" ? "tutor" : "visitante"

#almacenandola en una variable

respuesta = if user == "leonardo" then
    "tutor"
else
    "visitante"
end

puts respuesta

