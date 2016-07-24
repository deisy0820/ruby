#Escriba un programa que genere todas las potencias de 2, desde la 0-ésima hasta la ingresada por el usuario

puts "ingrese un numero"
n = gets.chomp

n = n.to_i

for i in 0..n
	po = 2**i
	puts "la potencia de los  numeros es #{po}"
end