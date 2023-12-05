numero = gets.chomp

numero = numero.to_i

residuo = numero % 2

if residuo == 0 
    puts "#{numero} es par"
else residuo == 1
    puts "#{numero} es impar"
end

#begin
#    1. **
#    2. * / %
#    3. +
#end

# suma
resultado = 5 + 3  # resultado será 8

# resta
resultado = 5 - 3  # resultado será 2

# multiplicacion
resultado = 5 * 3  # resultado será 15

#division
resultado = 6 / 3  # resultado será 2

#modulo
resultado = 7 % 3  # resultado será 1 (porque 7 dividido por 3 es 2 con un resto de 1)

#exponente
resultado = 2 ** 3  # resultado será 8 (2 elevado a la potencia de 3)

# Es importante tener en cuenta la precedencia de los operadores, que dicta el orden en el que se evalúan las operaciones.
# Los paréntesis pueden utilizarse para cambiar el orden de evaluación si es necesario.
