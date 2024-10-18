# crud de asesinos de peliculas de miedo. segunda practica de lo aprendido en ruby.
# atributos :
# nombre :
# pelicula :
# año : 

class Asesino #  clase asesino que tendra los atributos de cada asesino
    attr_accessor :nombre, :pelicula, :año

    def initialize (nombre, pelicula, año)
        @nombre = nombre
        @pelicula = pelicula
        @año = año
    end
end

# estructura CRUD:
# funciones para el crud:
# create : crear un nuevo asesino.
# read : mostrar todos los asesinos disponibles.
# update : editar un asesino existente.
# delete : eliminar un asesino.

class ScaryMovies
    def initialize
        @asesinos = [] # lista vacia para add asesinos.
    end

    # Crear asesino:
    def crear_asesino(nombre,pelicula,año)
        asesino= Asesino.new(nombre,pelicula,año)
        @asesinos << asesino
        puts "asesino #{nombre} ha sido añadido exitosamente"
    end

    # Read: mostrar asesinos
    def mostrar_asesinos
        puts "\nLista de asesinos:"
        if @asesinos.empty?
          puts "No hay asesinos disponibles. Añade uno."
        else
          @asesinos.each_with_index do |asesino, index|
            puts "#{index + 1}. #{asesino.nombre} - #{asesino.pelicula} - #{asesino.año}"
          end
        end
      end
      

    #update: editar asesino
    def editar_asesino(indice , nuevo_nombre, nueva_pelicula, nuevo_año)
         asesino = @asesinos[indice - 1 ] #asumiendo que el indice es el mostrado
         asesino.nombre = nuevo_nombre
         asesino.pelicula = nueva_pelicula
         asesino.año = nuevo_año
         puts " asesino actualizado exitosamente"
    end

    # delete : eliminar asesino
    def eliminar_asesino(indice)
        asesino = @asesinos.delete_at(indice - 1) # asumiendo indice mostrado
        puts "asesino #{asesino.nombre} ha sido eliminado exitosamente"
    end
end

# interactuar con el crud scary movies
# menu basico para interactuar:

crud = ScaryMovies.new

loop do
    puts "\n--- Menú Asesinos ---"
    puts "1. Crear un nuevo asesino"
    puts "2. Mostrar asesinos"
    puts "3. Editar asesino"
    puts "4. Eliminar asesino"
    puts "5. Salir"
    print "Selecciona una opción: "
    opcion = gets.chomp.to_i
  
    case opcion
    when 1
      print "Nombre del asesino: "
      nombre = gets.chomp
      print "Pelicula: "
      pelicula = gets.chomp
      print "Año: "
      año = gets.chomp
      crud.crear_asesino(nombre, pelicula, año)
    
    when 2
      crud.mostrar_asesinos
  
    when 3
      crud.mostrar_asesinos
      print "Seleccione el número del asesino a editar: "
      indice = gets.chomp.to_i
      print "Nuevo nombre: "
      nuevo_nombre = gets.chomp
      print "Nueva película: "
      nueva_pelicula = gets.chomp
      print "Nuevo año: "
      nuevo_año = gets.chomp
      crud.editar_asesino(indice, nuevo_nombre, nueva_pelicula, nuevo_año)
  
    when 4
      crud.mostrar_asesinos
      print "Seleccione el número del asesino a eliminar: "
      indice = gets.chomp.to_i
      crud.eliminar_asesino(indice)
  
    when 5
      puts "Saliendo del programa..."
      break
  
    else
      puts "Opción inválida. Intenta de nuevo."
    end
end


