#Realizar un algoritmo que lea n números y obtener
#su promedio, el número menor y el número mayor

puts "ingrese  un numero"
n1 = gets.chomp

puts "ingrese  un numero"
n2 = gets.chomp

puts "ingrese  un numero"
n3 = gets.chomp

#conversion de datos

n1 = n1.to_i
n2 = n2.to_i
n3 = n3.to_i

prom = (n1 + n2 + n3)/3


if (n1 > n2 and n1 > n3)
	max = n1
	puts "el numero mayor es #{max}"
end
if (n2 > n1 and n2 > n3)
	max = n2
	puts "el numero mayor es #{max}"
else
	max = n3
	puts "el numero mayor es #{max}"
end
if (n1 < n2 and n1 < n3)
	min = n1
	puts "el nummero menor es #{min}"
end
if (n2 < n1 and n2 < n3)
	min = n2
	puts "el numero menor es #{min}"
else
	min = n3
	puts "el numero menor es #{min}"

end
puts "el promedio de los numeros es #{prom}"




		




