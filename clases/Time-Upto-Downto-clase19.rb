# MAS ITERADORES. times, upto , downto.

#Times:
# Time es una clase en Ruby que representa un momento específico en el tiempo.
# Puedes crear instancias de Time para representar fechas y horas en el pasado, presente o futuro.

1 - 10

20.times do |i|
  puts i 
end

# Upto (hasta que llegues a)

# nos permite ejecutar un ciclo partiendo de un numero inicial y ejecute el ciclo al llegar al 10
# upto es un método que puedes llamar en un objeto Numeric (como Integer) para iterar desde ese 
# número hasta otro número, incrementando de uno en uno, y ejecutando un bloque en cada iteración

1.upto(10) do |i|
    puts i 
end

# Downto

# downto es similar a upto, pero en lugar de incrementar, decrementa desde el número inicial hasta el número final.
# Aquí tienes un ejemplo:

10.downto(1) do |i|
    puts i 
end



