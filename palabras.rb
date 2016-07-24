#Escriba un programa que pida al usuario dos palabras, y que indique cuál de ellas es la más larga y por cuántas letras lo es.

#ingreso de datos

puts "inhrese una palabra"
p1 = gets.chomp
puts "inhrese otra palabra"
p2 = gets.chomp

cp1 = p1.length
cp2= p2.length

#conversion


puts "la primera palabra tiene estas letras #{cp1}"
puts "la segunda palabra tiene estas letras #{cp2}"


if (cp1 > cp2)
 res = cp1-cp2
puts "la palabra #{p1} es mayor que la palabra #{p2} por etas letras #{res} "
else
res = cp2-cp1
puts "la palabra #{p2} es mayor que la palabra #{p1} por etas letras #{res} " 
end





