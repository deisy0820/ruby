 #mostrar el promedio de cuatro notas

 #ingreso de datos

puts "ingrese la nota 1"
nota1 = gets.chomp
puts "ingrese la nota 2"
nota2 = gets.chomp
puts "ingrese la nota 3"
nota3 = gets.chomp
puts "ingrese la nota 4"
nota4 = gets.chomp

#conversion de  datos
nota1 = nota1.to_f
nota2 = nota2.to_f
nota3 = nota3.to_f
nota4 = nota4.to_f

#procedimientos de  datos

promedio = (nota1 + nota2 + nota3 + nota4)/4 
puts "el promedio de las notas es #{promedio}"
