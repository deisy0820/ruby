#Escribir un algoritmo que recibe un número n, y se
#retorne las tablas de multiplicar del 1 al 20 de
#dicho número

puts "ingrese un numero"
n = gets.chomp

#conversion de datos
n = n.to_i

for i in 1..20
	mul = i*n
	puts "la multiplicacion es #{mul}"
	end



