# practicando lo aprendido en ruby creando un crud de jugadores de futbol.


# crud de jugadores de futbol.
# atributos:
# nombre
# edad
# posicion
# equipo

# 1. estructura: arreglo para almacenar los valores.
# 2. modelo de jugador: 

class Jugador  #crearemos clase jugador que tendra los atributos de cada jugador.
    attr_accessor :nombre, :edad, :posicion, :equipo
    
    def initialize(nombre, edad, posicion, equipo)
      @nombre = nombre
      @edad = edad
      @posicion = posicion
      @equipo = equipo
    end
end

# Estructura para CRUD
# Ahora, crearemos las funciones para cada operación del crud:

# Create: Añadir un nuevo jugador.
# Read: Mostrar todos los jugadores.
# Update: Editar un jugador existente.
# Delete: Eliminar un jugador.

class CrudFutbol
    def initialize
      @jugadores = []  # Lista vacía para almacenar jugadores
    end
  
    # CREATE: Añadir un nuevo jugador
    def crear_jugador(nombre, edad, posicion, equipo)
      jugador = Jugador.new(nombre, edad, posicion, equipo)
      @jugadores << jugador        #Esta es una variable de instancia que contiene una lista (array) de todos los jugadores creados. "<<"": Este operador es utilizado para añadir un nuevo elemento a un array en Ruby.
      puts "Jugador #{nombre} ha sido añadido exitosamente."
    end
  
    # READ: Mostrar todos los jugadores
    def mostrar_jugadores
      puts "\nLista de jugadores:"
      if @jugadores.empty? #empty?: Es un método que verifica si el array está vacío. Si @jugadores no contiene ningún jugador, este método retornará true.
        puts "No hay jugadores registrados."
      else
        @jugadores.each_with_index do |jugador, index|
          puts "#{index + 1}. #{jugador.nombre} - #{jugador.edad} años, Posición: #{jugador.posicion}, Equipo: #{jugador.equipo}"
        end
      end
    end
  
    # UPDATE: Editar un jugador existente
    def editar_jugador(indice, nuevo_nombre, nueva_edad, nueva_posicion, nuevo_equipo)
      jugador = @jugadores[indice - 1]  # Asumiendo que el índice es el mostrado (1-based)
      jugador.nombre = nuevo_nombre
      jugador.edad = nueva_edad
      jugador.posicion = nueva_posicion
      jugador.equipo = nuevo_equipo
      puts "Jugador actualizado exitosamente."
    end
  
    # DELETE: Eliminar un jugador
    def eliminar_jugador(indice)
      jugador = @jugadores.delete_at(indice - 1)  # Asumiendo índice mostrado (1-based)
      puts "Jugador #{jugador.nombre} ha sido eliminado."
    end
end


# Paso 4: Interactuar con el crud
# Ahora, crearemos un menú básico para interactuar con el crud de jugadores:

crud = CrudFutbol.new

loop do
  puts "\n--- Menú ---"
  puts "1. Añadir jugador"
  puts "2. Mostrar jugadores"
  puts "3. Editar jugador"
  puts "4. Eliminar jugador"
  puts "5. Salir"
  print "Seleccione una opción: "
  opcion = gets.chomp.to_i

  case opcion
  when 1
    print "Nombre: "
    nombre = gets.chomp
    print "Edad: "
    edad = gets.chomp.to_i
    print "Posición: "
    posicion = gets.chomp
    print "Equipo: "
    equipo = gets.chomp
    crud.crear_jugador(nombre, edad, posicion, equipo)
  
  when 2
    crud.mostrar_jugadores

  when 3
    crud.mostrar_jugadores
    print "Seleccione el número del jugador a editar: "
    indice = gets.chomp.to_i
    print "Nuevo nombre: "
    nuevo_nombre = gets.chomp
    print "Nueva edad: "
    nueva_edad = gets.chomp.to_i
    print "Nueva posición: "
    nueva_posicion = gets.chomp
    print "Nuevo equipo: "
    nuevo_equipo = gets.chomp
    crud.editar_jugador(indice, nuevo_nombre, nueva_edad, nueva_posicion, nuevo_equipo)

  when 4
    crud.mostrar_jugadores
    print "Seleccione el número del jugador a eliminar: "
    indice = gets.chomp.to_i
    crud.eliminar_jugador(indice)

  when 5
    puts "Saliendo..."
    break

  else
    puts "Opción inválida. Inténtelo de nuevo."
  end
end


