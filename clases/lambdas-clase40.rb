
# Una lambda es un tipo especial de Proc en Ruby que se utiliza para encapsular un bloque de código.
# A diferencia de un Proc, las lambdas tienen reglas estrictas sobre el número de argumentos y el uso de return.
# es una funcion anonima.
# metodos que no tienen nombre.
# mismo tipo de un proc. sabiendo que las lambdas se comportan como un metodo.

# Puntos clave de las lambdas:
# Argumentos estrictos: Las lambdas validan estrictamente el número de argumentos. Si se pasa el número incorrecto de argumentos,
# lanzará un error.
# Comportamiento de return: En una lambda, return solo regresa desde la lambda misma, no desde el método que la contiene,
# a diferencia de los Procs.
# Creación: Las lambdas se crean con la sintaxis -> o lambda.
# Ejecutar una lambda: Puedes ejecutar una lambda con call.
# Uso típico: Las lambdas son útiles cuando necesitas bloques reutilizables de código que siguen un comportamiento específico y 
# estricto.

# (lambda {puts "hola tatico"}).call

# para mandarla a llamar en una funcion.

# myLambda = lambda {puts "hola leo"}
# myLambda.call

# # para usar keyword ya que las lambdas funcionan como un metodo.
# myLambda = -> (nombre){puts "hola #{nombre}"}
# myLambda.call("vale")

# # para saber que un lambda es un objeto de la clase proc
# myLambda = ->(nombre){ puts "hola #{nombre}" }
# puts myLambda.class.name  # Salida: "Proc"

# diferencia entre proc y lambda:
# un proc se comporta como un bloque y un lambda como un metodo.

# diferencia entre comportamientos de un metodo y un bloque:
# - los argumentos que se le pasa a un bloque empiezan a ser nulos si no se les asigna un valor. "son opcionales."
# - en el caso de un metodo los argumentos que recibes son obligatorios y si no se envian daran error de programa.
# - cuando haces return desde un bloque tambien se termina la ejecucion del metodo que mando a llamar el bloque.
# - si retornan de un metodo o una lambda solo terminas la ejecucion del metodo mismo pero no de quien lo mando a llamar. miremos aca:

# creo un metodo para llamar un bloque o una lambda en casos.

# def test_lambda
#     (->() {return "juego terminado"}).call()
#     puts "despues de la lambda"
# end

# def test_block
#     (Proc.new {return "juego terminado"}).call()
#     puts "despues del  bloque"
# end

# puts test_lambda    # salida en consola: despues de la lambda
# puts test_block     #  salida en consola: juego terminado

# vieron que se detuvo en el bloque y en retorno del lambda sigue la ejecucion.
# si queremos llamar el valor retornado de una lambda solo le asignamos variables asi:

# def test_lambda
#     lambdaReturn = (->() {return "juego terminado"}).call()
#     puts lambdaReturn
#     puts "despues de la lambda"
# end

# puts test_lambda

# ejemplo avanzado: Validación de entrada en una aplicación
# Supongamos que en una aplicación necesitas una función que verifique si el nombre ingresado tiene al menos 5 caracteres.

# validar_nombre = ->(nombre) do
#     if nombre.length >= 5
#       puts "Nombre válido: #{nombre}"
#     else
#       puts "El nombre debe tener al menos 5 caracteres para dartelo."
#     end
# end
  
# validar_nombre.call("kros")   # Salida: El nombre debe tener al menos 5 caracteres para dartelo.
# validar_nombre.call("Carlos") # Salida: Nombre válido: Carlos
# Este tipo de validación es común en formularios de entrada de datos o en scripts de validación automática.

# ejemplo avanzado 2 :
# Filtrar elementos en un array
# En un entorno de trabajo, podrías necesitar filtrar elementos de una lista según ciertas condiciones. Aquí,
# utilizamos una lambda para filtrar números pares de un array.

es_par = ->(numero) { numero.even? }  #.even? es una forma rápida y conveniente de verificar la paridad de un número en Ruby.

numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
pares = numeros.select(&es_par)
puts "Números pares: #{pares}"

# salida Números pares: [2, 4, 6, 8, 10]
# Este tipo de lógica es útil cuando trabajas con procesamiento de datos, como seleccionar subconjuntos de datos
# que cumplan ciertas condiciones.