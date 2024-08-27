# Polimorfismo:
# es un principio de la programación orientada a objetos que permite que diferentes objetos respondan al mismo método de diferentes maneras.
# En otras palabras, puedes enviar el mismo mensaje (método) a diferentes objetos y cada uno de ellos puede interpretar y responder ese mensaje
# de manera específica.


# class Video
#     def play
#         # not 
#     end
# end

# class Vimeo < Video
#     def play
#         p " inserta el reproductor de vimeo"
#     end
# end

# class Youtube < Video
#     def play
#         p " inserta el reproductor de Youtube"
#     end
# end

# videos = [Youtube.new, Vimeo.new, Vimeo.new, Youtube.new, Youtube.new]

# videos.each do |video|
#     video.play
# end

# se envia el mismo mensaje para todos de parte de play para que respondan igual.
# simplemente no se necesita herencia o interfaces para expresar el comportamiento de un objeto.
# solo se debe poner instrucciones en ruby para que sea ordenado.

# otro ejemplo corto:
class Perro
    def sonido
      "Guau!"
    end
  end
  
  class Gato
    def sonido
      "Miau!"
    end 
   
end
  
# Polimorfismo en acción
animales = [Perro.new, Gato.new]
  
animales.each do |animal|
    puts animal.sonido
end

# Aquí, tanto la clase Perro como la clase Gato tienen un método sonido.
# Cuando iteramos sobre la lista animales, llamamos al método sonido en cada objeto.
# Aunque llamamos al mismo método (sonido), cada objeto responde de manera diferente: el perro dice "Guau!" y el gato dice "Miau!".