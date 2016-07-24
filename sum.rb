#Calcular la suma de los cuadrados x^2 de los
#números entre 1 y n.

puts "ingrese un numero"
n = gets.chomp

#conversion de datos
n= n.to_i
sum = 0
for i in 1..n
	x = i**2
	sum = sum + x
end
puts "la suma de los numeros es #{sum}"