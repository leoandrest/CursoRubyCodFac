class Object
    def i_have_superpower
        puts "este metodo esta en todos los objetos"
    end
end

class Video
    attr_accessor :tittle
    attr_accessor :duration
    attr_accessor :description
    
    def embed_video_code
        "<video></video>"
    end

    def setup(tittle)
        @tittle = tittle
    end
end

class YouTubeVideo < Video
    attr_accessor :youtube_id

    def embed_video_code
        "<Iframe,heredaDpadre"
    end

    def setup(tittle)
        super  # sirve para mandar a llamar al metodo del mismo nombre pero en la clase padre. 
        # YoutubeAPI.init()
        puts "algo extra"
    end
end

[].i_have_superpower
"".i_have_superpower
10.i_have_superpower
Video.new.i_have_superpower
YouTubeVideo.i_have_superpower


# Herencia: crear clases a partir de otras clases
# la mayor ventaja es no escribir mucho codigo repetido.
# solamente en ruby las clases pueden heredar de clase padre.
# todas las clases nacen o heredan de objetc

# sintaxis para heredar clase es signo menor que < mas clase padre eje:

# class Video
#     attr_accessor : tittle, :duration
# end

# class YouTubeVideo < video
#     attr_accessor :youtube_id
# end

# yt.tittle = "herencia en ruby"  # asignando titulo de herencia.
# yt.youtube_id = "asdgjjjd"
# puts yt.tittle 

# sobreescribir metodos con clases:

# class Video
#     attr_accessor :tittle
#     attr_accessor :duration
#     attr_accessor :description
    
#     def embed_video_code
#         "<video></video>"
#     end
# end

# class FacebookVideo < Video
#     attr_accessor :facebook_id
# end

# class YouTubeVideo < Video
#     attr_accessor :youtube_id

#     def embed_video_code
#         "<iframe />"
#     end
# end

# puts YouTubeVideo.new().embed_video_code

# es como decir papa ignoro tu comportamiento yo tengo el propio
