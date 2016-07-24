#En una zapatería se realiza un descuento 
#dependiendo del ultimo número de la cédula del 
#cliente. Los descuentos son los siguientes: 
#Cédulas terminadas en 1, 2, 3 reciben un 15%, en 
#4, 5, 6 reciben 20%, 7, 8, 9 y 0 reciben un 25%. 
#Realizar un algoritmo que dado la cedula y el valor 
#de la compra calcule el total con el descuento

puts "ingrese el numero de la cedula"
celula = gets.chomp
puts "ingrese el valor "
valor = gets.chomp
#conversion
val=valor.to_f
cel = celula[celula.length-1]
puts "#{cel}"
#conversion
ultimo=cel.to_i
puts "#{ultimo}"
puts "#{valor}"
if (ultimo == 1  or ultimo == 2 or ultimo == 3) 
	des = val*0.15
	puts " el descuento es del 15% #{des}"
elsif (ultimo == 4  or ultimo == 5 or ultimo == 6) 
	des = val*0.2
	puts " el descuento es del 20% #{des}"

elsif (ultimo == 7  or ultimo == 8 or ultimo == 9  or ultimo == 0) 
	des = val*0.25
	puts " el descuento es del 25% #{des}"


end

