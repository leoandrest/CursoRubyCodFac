# grupo de codigo que se puede reciclcar #metodo
# inicializa con la palabra reservada def y despues el nombre del metodo.
# end y terminas el metodo.
# parentesis para remarcar el metodo, sin embargo cuando estamos utilizando o pasando argumentos a un metodo
# la recomendacion es pasar parentesis a menos que usemos un DSL(Domain-Specific Language, es un término que
# se refiere a un lenguaje de programación diseñado para resolver problemas en un dominio específico en lugar
# de ser general y ampliamente aplicable. En Ruby, DSL se refiere específicamente a la capacidad del lenguaje
# para crear mini-lenguajes específicos para un dominio de aplicación particular.)
def square(x)
    #retorna el cuadrado de un numero
    return 0 unless x.is_a? Integer  # ejemplo que termina la ejecucion antes 
    x * x
end
puts square("3")


#metodo saludar 

def saludar 
    puts "hola tatico"
end

saludar()

# se utilizan los parentesis mas comunmente cuando hay argumentos.
# los metodos de ruby siempre retornan lo ultimo que esta en la linea.
# cuando se puede usar return ?? cuando quieres terminar la ejecucion del programa antes y no en la ultima linea
