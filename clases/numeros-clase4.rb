pasar un numero a flotando -> 10.to_f  salida en consola -> 10.0
pasarlo de flotante a entero -> 12.2313.to_i  salida en consola -> 12

- como en ruby todo es un objeto los numeros tambien y por eso se pueden usar distintos metodos
ej:
-10.abs   -> salida en consola -> 10 (para retornar su valor absoluto )
3.even?   -> salida en consola -> false ( para saber si un numero es par o no)
2.even?   -> salida en consola -> true 
2.next?   -> salida en consola -> 3 (numero siguiente)

- pueden usar estos ejemplos en el compilador IRB en consola:
USER@LEOANDREST MINGW64 ~/programacion/CursoRubyCodFac/clases (main)
$ irb
irb(main):001:0> 20
=> 20
irb(main):002:0> 21
=> 21
irb(main):003:0> 34
=> 34
irb(main):004:0> 20.
irb(main):004:0> 20.0
=> 20.0
irb(main):005:0> 20+10
=> 30
irb(main):006:0> 20 * 2
=> 40
irb(main):007:0>
irb(main):008:0> 20/2
=> 10
irb(main):009:0> 10/3
=> 3
irb(main):010:0> 10.0 /3.0
=> 3.3333333333333335
irb(main):011:0* -10.
irb(main):011:0> -10.abs
=> 10
irb(main):013:0> 3.even?
=> false
irb(main):014:0> 2.even?
=> true
irb(main):015:0> 2.
irb(main):015:0> 2.next
=> 3
irb(main):016:0>
