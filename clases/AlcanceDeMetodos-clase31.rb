# En Ruby, el alcance de un método se refiere a la visibilidad y accesibilidad del método desde diferentes partes del programa.
# las clases hijas pueden llamar a estos tres metodos (incluyendo privados) , esto pasa en ruby a comparacion de otros lenguajes.
# los metodos de un objeto en ruby se pueden clasificar en 3:

# PUBLICOS -> public # Los métodos públicos pueden ser llamados desde cualquier lugar, tanto dentro como fuera de la clase.
# Todos los métodos en una clase son públicos por defecto, a menos que se especifique lo contrario.

class Persona
    def hablar
      puts "Hola, soy una persona."
    end
end
  
persona = Persona.new
persona.hablar # Esto funciona porque 'hablar' es un método público, en este ejemplo,
# el método hablar es público y se puede llamar desde fuera de la clase Persona.

# PRIVADOS -> private # pueden llamar unicamente desde dentro de la clase. 
# Los métodos privados solo pueden ser llamados dentro del contexto del objeto que los define.
# No pueden ser llamados con un receptor explícito, incluso si el receptor es self.
class Persona
    def initialize(nombre)
      @nombre = nombre
    end
  
    def presentar
      puts "Hola, soy #{@nombre}."
      saludo_privado
    end
  
    private
  
    def saludo_privado
      puts "Esto es un saludo privado."
    end
end
  
persona = Persona.new("Alice")
persona.presentar # Funciona porque presentar puede llamar a saludo_privado
# persona.saludo_privado # Esto dará error porque saludo_privado es un método privado
# En este ejemplo, el método saludo_privado es privado. Puede ser llamado desde otro método
# dentro de la misma clase (presentar en este caso), pero no puede ser llamado directamente desde fuera de la clase.


# PROTEGIDOS -> protected # se pueden llamar de otra clase siempre y cuando sean del mismo tipo.
# Los métodos protegidos solo pueden ser llamados dentro de la misma clase o subclases. No pueden ser llamados desde fuera de la clase.
class Persona
    def initialize(nombre)
      @nombre = nombre
    end
  
    def comparar_edad(otra_persona)
      if edad > otra_persona.edad
        puts "#{@nombre} es mayor que #{otra_persona.nombre}."
      else
        puts "#{@nombre} es menor o tiene la misma edad que #{otra_persona.nombre}."
      end
    end
  
    protected
  
    def edad
      30
    end
  
    def nombre
      @nombre
    end
end
  
persona1 = Persona.new("tatico")
persona2 = Persona.new("alex")
  
persona1.comparar_edad(persona2) # Funciona porque comparar_edad puede llamar a edad que es protegido
# persona1.edad # Esto dará error porque edad es un método protegido
# En este ejemplo, el método edad es protegido. Esto significa que puede ser llamado dentro de la clase
# Persona y por objetos de la misma clase, pero no puede ser llamado directamente desde fuera de la clase.

# EJEMPLO CON LOS TRES METODOS :

class Ejemplo
    def publico
      puts "Método público"
      protegido
      privado
    end
  
    protected
  
    def protegido
      puts "Método protegido"
    end
  
    private
  
    def privado
      puts "Método privado"
    end
end
  
ejemplo = Ejemplo.new
ejemplo.publico # Imprime "Método público", "Método protegido" y "Método privado"
# ejemplo.protegido # Esto dará error porque protegido es un método protegido
# ejemplo.privado # Esto dará error porque privado es un método privado

# En este ejemplo, publico es un método público y puede llamar a los métodos protegidos
# y privados dentro de la misma clase. Sin embargo, intentar llamar a los métodos protegidos
# o privados directamente desde fuera de la clase resultará en un error.



class Humano
  
  
  def publico
    puts "soy publicooo"
  end

  private
    def privado
     puts "soy privado"
    end
    protected
       def protegido
        puts "soy protegido ome"
       end

end

class Tutor < Humano
    def initialize
        @inner = Humano.new
    end
    
    def llamar_protegido
        inner.protegido
    end

end

class Alien
    def initialize
        @inner = Humano.new
    end
    def llamar_protegido
        @inner.protegido
    end
end

Tutor = Tutor.new

alien = Alien.new

puts Tutor.is_a?(Humano)
puts alien.is_a?(Humano)

