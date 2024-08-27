# VARIABLE DE CLASE
# Las variables de clase en Ruby se definen con @@ y son compartidas entre todas las instancias de una clase.
# Esto significa que si cambias una variable de clase en una instancia, el cambio se reflejará en todas las instancias de esa clase.

# DIFERENCIAS :

# Alcance:
# Variable de Clase: Compartida entre todas las instancias de la clase.
# Variable de Instancia: Cada instancia de la clase tiene su propia copia.
# Sintaxis:

# Variable de Clase: Prefijada con @@.
# Variable de Instancia: Prefijada con @.
# Visibilidad:

# Variable de Clase: Se puede acceder a ella desde métodos de clase y métodos de instancia.
# Variable de Instancia: Se accede principalmente desde métodos de instancia.
# Modificación:

# Variable de Clase: Cambios afectan a todas las instancias.
# Variable de Instancia: Cambios solo afectan a la instancia específica.s1

# class Video
#     @@type = "video/mp4"  # si type fuese de instancia entonces no se podria acceder a ella solo la variable de clase.

#     def self.type_desde_clase
#         p @@type
#     end

#     def type_desde_objeto
#         p @@type
#     end
# end


# Video.type_desde_clase
# Video.new.type_desde_objeto

class Video
    @@de_clase = "woo"
    @de_instancia = "instancia yeii"
    def self.test
        p @@de_clase
        p @de_instancia
    end
end

class Youtube < Video
  def self.test
    @@de_clase = "clase cambiada"
    p @@de_clase
    p @de_instancia
  end
end

Youtube.test
Video.test

# salida en consola:

# ruby variablesDeClase-clase33.rb
# "clase cambiada"
# nil
# "clase cambiada"
# "instancia yeii"

# cuando usar variables de clase ?

# cuando se quiere almacenar una variable que le pertenece a la clase y no al objeto

# cuando usar de instancia y cuando usar de clase ?

# se usa de instancia cuando no se quiere que la variable herede a las clases hija. si se quiere tener el befeficio de la herencia hay que usar variables de clase.
