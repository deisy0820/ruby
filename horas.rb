
#Escriba un programa que pregunte al usuario la hora actual 
#t del reloj y un número entero de horas h, que indique qué hora marcará el reloj dentro de h horas:
#ingreso de datos 
puts "ingrese la hora actual"
t = gets.chomp
puts "ingrese cantidad de horas"
h = gets.chomp
#conversion de datos
t = t.to_f
h = h.to_i
#procedimintos
ph= t + h
ph = ph.to_i

ho = ph % 12
puts "en #{h} horas seran las #{ho}"


