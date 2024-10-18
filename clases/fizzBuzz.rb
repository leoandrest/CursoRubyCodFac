"fizz buzz para multiplos de 3 y 5"
"fizz para multiplos de 3"
"buzz para multiplos de 2"



for numero in 1..101
    if numero % 3 == 0 && numero % 5 == 0
        print "fizz buzz"
    elsif numero % 3 == 0
        print ("fizz")
    elsif numero % 2 == 0
        print "buzz"
    else 
        print (numero)
    end
end

