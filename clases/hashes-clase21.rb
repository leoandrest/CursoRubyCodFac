# Hashes :

# En Ruby, un hash es una estructura de datos que almacena pares clave-valor.
# almacena datos como un diccionario lo haria.
# Cada elemento en un hash tiene una clave única y un valor asociado.
# tambien son llamados arreglos asociativos.
# la ventaja de un hash es que se puede acceder a la informacion mas rapido utilizando la clave.

tutor = {"nombre" => "tatico", "edad" => 26, 20 => "veinte", [] => "arreglo"}
puts tutor ["nombre"]

# para modificar el hash:

tutor = {"nombre" => "tatico", "edad" => 26, 20 => "veinte", [] => "arreglo"}
tutor["cursos"] = 10
puts tutor ["cursos"]

# definir un valor por default para las posiciones que no hay nada;

tutor.default = ":)"
puts tutor[5]

# una alternativa de sintaxis de manejo de hashes mas limpia y comun es cuando las claves son simbolos:

tutor = {nombre: "tatico", edad: "26", cursos: 10}
puts tutor[:nombre]

# iterar hash:
tutor = {nombre: "tatico", edad: "26", cursos: 10}

tutor.each do |clave,valor| 
  puts "en #{clave} esta guardado #{valor}"
end

# Eliminación de elementos de un hash:
# Puedes eliminar pares clave-valor de un hash utilizando el método delete. Aquí hay un ejemplo:


persona = {
  "nombre" => "Juan",
  "edad" => 30,
  "ciudad" => "Ciudad de México"
}

persona.delete("edad")  # Elimina el par clave-valor con la clave "edad" 

# Los hashes en Ruby son utilizados en una amplia variedad de situaciones en la programación 
# debido a su flexibilidad y eficiencia para almacenar datos estructurados en pares clave-valor.
# Aquí tienes algunos casos comunes en los que se utilizan los hashes en Ruby:

# Almacenamiento de datos estructurados: Los hashes son ideales para almacenar datos estructurados
# donde necesitas asociar información con claves específicas. Por ejemplo, podrías usar un hash para
# representar información de un usuario, donde las claves podrían ser "nombre", "edad", "email", etc.

# Configuración y opciones de programa: Los hashes son útiles para almacenar opciones de configuración
# y parámetros de programa. Por ejemplo, podrías usar un hash para almacenar opciones de configuración 
# de una aplicación, como colores de fondo, tamaños de fuente, etc.

# Conteo y agrupación de datos: Los hashes son excelentes para contar y agrupar datos. Por ejemplo,
# podrías usar un hash para contar la frecuencia de ocurrencia de palabras en un texto, donde las claves
# serían las palabras y los valores serían el número de veces que aparecen.

# Búsqueda eficiente de datos: Los hashes proporcionan una búsqueda rápida y eficiente de datos basada en 
# claves. En lugar de recorrer una lista o array para encontrar un valor, puedes acceder directamente al 
# valor correspondiente a una clave específica en un hash.

# Representación de datos complejos: Los hashes pueden contener otros hashes, matrices u otros objetos Ruby
# como valores. Esto los hace ideales para representar datos complejos y anidados. Por ejemplo, podrías usar
# un hash para representar la estructura de un árbol de directorios en un sistema de archivos.

# Cache de datos: Los hashes se utilizan comúnmente para almacenar datos en caché en aplicaciones web y otros
# sistemas. Esto ayuda a mejorar el rendimiento al evitar la necesidad de recalcular datos que ya han sido 
# calculados previamente.

# Estos son solo algunos ejemplos de los casos comunes en los que se utilizan los hashes en Ruby. En general,
# los hashes son una herramienta muy versátil y se pueden utilizar en una amplia variedad de situaciones en 
# la programación para almacenar y manipular datos de manera eficiente.