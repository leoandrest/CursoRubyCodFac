# -es un objeto a comparacion de los bloques que no lo son.
# -los procs pueden ser almacenados en variables y pasados como argumento.
# -es un objeto que encapsula un bloque de código, permitiendo almacenarlo en
# -una variable, pasarlo como argumento a métodos, y ejecutarlo más tarde. los
# -Procs son útiles cuando quieres reutilizar un bloque de código en varios lugares.
# Puntos clave sobre Procs:
# Creación: Se crean usando Proc.new o la sintaxis corta proc.
# Ejecución: Se ejecutan llamando al método call.
# Retorno temprano: Si usas return dentro de un Proc, regresas desde el contexto en que fue definido, no desde donde se ejecuta.
# Flexibilidad: Procs permiten pasar bloques de código reutilizables a métodos, proporcionando flexibilidad en la estructura del programa.


def hola &block         # recibimos un proc cuando pasamos el bloque con el ampersand
    puts block.class.name    # objeto de una instancia llamada pro y no un bloque.
    block.call
end
hola {puts "yepeeeee"}


# un metodo puede recibir solo un bloque mientras que puede recibir muchas procs. asi como este ejemplo:

def hola proc1,proc2
    proc1.call
    proc2.call
end

proc1 = Proc.new { puts "hola proc1"}
proc2 = Proc.new { puts "hola proc2"}

hola(proc1,proc2)


#otro ejemplo: Creación y ejecución de un Proc.
mi_proc = Proc.new { |nombre| puts "Hola, #{nombre}!" } # El Proc se crea con Proc.new y acepta un argumento (nombre).

mi_proc.call("Juan")  # Salida: Hola, Juan! # Se llama con call y se pasa el valor "Juan" primero y luego "Ana",
mi_proc.call("Ana")   # Salida: Hola, Ana!  # imprimiendo el mensaje personalizado cada vez

#otro ejemplo: Uso de Procs en métodos.
def repetir_3_veces(proc)  # Se crea un Proc que imprime un mensaje.
    3.times { proc.call }
end
  
mi_proc = Proc.new { puts "¡Este es un mensaje repetido!" } # El método repetir_3_veces toma el Proc como argumento y lo ejecuta tres veces usando call.
repetir_3_veces(mi_proc)  #salida ¡Este es un mensaje repetido!¡Este es un mensaje repetido!¡Este es un mensaje repetido!


# cuando se deben usar bloques y cuando procs?.

# por defecto se debe usar bloques a menos que encuentres una buena razon tipo reenviar el bloque a otros objetos,
# almacenar el bloque en una variable,
# es valido si necesitas mas de un bloque por metodo.
# por que se utilizaria mas bloques que procs? # porque son mas rapidos.

