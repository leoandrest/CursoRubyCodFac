# Cadenas
# -son una serie de carasteres.
# -incluso el espacio es un caracter.
# -usualmente tendremos cadenas que vamos a incluir variables,procesos,operaciones y para esta esta
# la concatenacion y interpolacion
# ejemplo:

# la concatenación de cadenas se refiere a la operación de unir dos o más cadenas para 
# formar una cadena más larga. En Ruby, puedes concatenar cadenas utilizando el operador 
# + o utilizando el método concat o el método concat o el método <<. ejemplos de como hacerlo :

cadena1 = "Hola, "
cadena2 = "mundo!"
concatenacion = cadena1 + cadena2
puts concatenacion
# Output: Hola, mundo!


# En programación, la concatenación de cadenas se 
# refiere a la operación de unir dos o más cadenas para formar una cadena más larga. 
# En Ruby, puedes concatenar cadenas utilizando el operador + o utilizando el método concat 
# o el método <<. Aquí tienes ejemplos de cómo puedes hacerlo:

# Usando el operador +:

cadena1 = "Hola, "
cadena2 = "mundo!"
concatenacion = cadena1 + cadena2
puts concatenacion
# Output: Hola, mundo!


#Usando el método concat:


cadena1 = "Hola, "
cadena2 = "mundo!"
cadena1.concat(cadena2)
puts cadena1
# Output: Hola, mundo!


#Usando el método << (también conocido como el operador de inserción):

cadena1 = "Hola, "
cadena2 = "mundo!"
cadena1 << cadena2
puts cadena1
# Output: Hola, mundo

#Puedes elegir el método que te resulte más cómodo para tu código.

# Interpolacion;
# La interpolación de cadenas es una técnica en la que puedes insertar valores de variables
# directamente en una cadena de texto. En Ruby, puedes realizar la interpolación de cadenas 
# utilizando el símbolo #{} dentro de una cadena delimitada por comillas dobles (" "). Aquí 
# tienes un ejemplo:

nombre = "leo"
edad = 26
saludo = "Hola, #{nombre}! Tienes #{edad} años de edad."
puts saludo
# Output: Hola, Leo! Tienes 26 años de edad.

# En el ejemplo anterior, #{nombre} y #{edad} son lugares dentro de la cadena 
# saludo donde los valores de las variables nombre y edad se insertan dinámicamente 
# durante la ejecución del programa. La interpolación de cadenas es una forma más 
# concisa y legible de construir cadenas que contienen valores de variables.

# La interpolación de cadenas también se puede realizar con expresiones y no solo con 
# variables. Puedes realizar operaciones dentro del #{} para insertar el resultado en 
# la cadena. Por ejemplo:

numero = 10
doble = "El doble de #{numero} es #{numero * 2}."
puts doble
# Output: El doble de 10 es 20.

# En este caso, la expresión #{numero * 2} se evalúa y se inserta en la cadena como parte del mensaje.
# La interpolación de cadenas es una característica poderosa y útil en Ruby para construir cadenas 
# dinámicas de manera clara y efectiva.

#ejemplo con metodo upcase: (usando consola de ruby)

irb(main):010:0> "hola #{ nombre.upcase}"
=> "hola LEO"

#diferencia entre comillas "" y simples ''
# cuando usas comillas simples estas diciendo que lo que hay dentro de esas comillas 
# es puro y simple texto, es decir no vas a introducir variables dentro de este, cosa
# que si se puede con las dobles.

