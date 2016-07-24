#Desarrolle un programa que entregue la secuencia de Collatz de un número entero:

#ingreso de datos
puts "ingrese un numero entero"
n = gets.chomp

#conversion de datos
n = n.to_i
foco = true

while foco
	if n%2==0
		res = n/2
		puts"#{res}"
		n = res
	else
		n%2==1
		res=n*3+1
		puts"#{res}"
		n = res
	end
	if res == 1
		foco = false
	end
end
