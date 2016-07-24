#Crear un algoritmo que dado un número de n filas
#y un símbolo, retorne una piramide de n filas.


#ingreso de datos

puts "ingrese la cantidad de filas"
f = gets.chomp

puts "ingrese el simbolo"
s = gets.chomp

#conversion de datos
f = f.to_i

for i in 1..f
	m = s * i
	puts "#{m}"
end


