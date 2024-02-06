#ejemplo con evaluaciones
# 0-10 ; 5 es reprobatorio

print "Dame tu calificacion (1-10): "
calificacion = gets.chomp.to_i

puts case calificacion
when 10
     "perfecto tio"
when 9 
     "excelentee! "
when 8
    "muy bien pero me puedes mejorar un poco"
when 7
     " pasaste pero lo puedes hacer mejor"
when 6 
     "por poco y no pasas, ojo!!"
else 5
    " LOSER :( "
end




# if calificacion == 10 || calificacion == 9
#     puts "excelente mijito pues..."
# elsif calificacion == 8
#     puts " super bienn, puedes mejorar mas"
# elsif calificacion == 7
#     puts " pasas, pero sabemos que lo puedes hacer mejor"
# elsif calificacion == 6
#     puts "no estas horriblemente mal, pero por casi :("
# else
#     puts "u.u"
# end


# === /metodo (se usa en cadenaas casos)
# == no se usa este