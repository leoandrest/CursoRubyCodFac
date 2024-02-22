# simbolos:

# los símbolos en Ruby son objetos inmutables y únicos que se utilizan comúnmente como identificadores
# y claves en los hashes. Los símbolos comienzan con dos puntos (:) seguidos de un identificador, 
# como :nombre o :edad. Aquí tienes una introducción a los símbolos en Ruby y cómo se utilizan:
# es una cadena inmutable ; no puedes modificar la cadena en tiempo de ejecucion.

#Creación de símbolos:
#Los símbolos se crean colocando un colon " : " seguido de un identificador. Por ejemplo:

:simbolo
:nombre
:edad

# Uso de símbolos como claves en hashes:
# Los símbolos son comúnmente utilizados como claves en los hashes, ya que son más eficientes en términos 
# de memoria y procesamiento que las cadenas de texto. Por ejemplo:

persona = {
  nombre: "tatico",
  edad: 26,
  ciudad: "ba/quilla"
}

# Acceso a valores en un hash con símbolos como claves:
# Puedes acceder a los valores en un hash utilizando símbolos como claves de la misma manera
# que lo harías con cadenas de texto:


puts persona[:nombre]  # Imprime "tatico"
puts persona[:edad]    # Imprime 26
puts persona[:ciudad]  # Imprime "ba/quilla"



cadena = "tatico"

#cadena.capitalize! #primera letra en mayusculas.
cadena2 = "tatico"

simbolo = :Tatico

simbolo2 = :Tatico


puts cadena.object_id # object.id numero que identifica el objeto en ruby
puts cadena2.object_id
puts simbolo.object_id
puts simbolo2.object_id

# salida :

$ ruby simbolos-clase23.rb #(resultado en consola)
60
80
1166948
1166948

# nota: cuando creo dos cadenas en ruby aunque tengan lo mismo ruby crea dos objetos al contrario al simbolo que ruby no lo vuelve a crear y desecha el anterior.
# cuando debo usarlos;
# cuando no necesito modificar el string.
# cuando no necesito los metodos del string.
# los simbolos se usan como nombres.

