# uno de los secretos de ruby es que las clase tambien son objetos.

class SoyObjetoLoJuro
    @nombre_clase ="SoyObjetoLoJuro"

    def self.nombre_clase
        @nombre_clase
    end
    
    def self.nombre_clase=(nombre_clase)
        @nombre_clase = nombre_clase
    end
end

#la particularidad de los metodos de clase es que se referencian con self.
SoyObjetoLoJuro.nombre_clase = "otra vaina" # actualizando valor de variable de instancia.

puts SoyObjetoLoJuro.nombre_clase

# otro metodo para definir metodo de clase:

# class << self
#     def nombre_clase
#         @nombre_clase
#     end
    
#     def nombre_clase=(nombre_clase)
#         @nombre_clase = nombre_clase
#     end
# end

# cuando usar metodos de clase :
# usalos cuando la funcionalidad que estas escribiendo no le pertene a ninguna instancia o a ningun objeto.

# ejemplo 
# class user
# end
# user.new().find()
# user.find()

