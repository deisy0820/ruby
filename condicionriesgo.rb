
#Escriba un programa que reciba como entrada la estatura, el peso y la edad de una persona, y le entregue su condición de riesgo.

puts "ingrese la estatura"
estatura = gets.chomp
puts "ingrese el peso"
peso = gets.chomp
puts "ingrese la edad "
edad = gets.chomp
#conversion
estatura=estatura.to_f
peso=peso.to_f
edad=edad.to_i

estatura = estatura**2

msc = peso / estatura
msc = msc.to_f
puts " la masa corporal es  #{msc}"
if (edad < 45 and msc<22.0)
	puts " su riesgo es  bajo"
elsif (edad >=45 and msc<22.0)
	puts " su riesgo es  medio"
elsif (edad < 45 and msc>=22.0)
	puts " su riesgo es  normal"
elsif (edad >= 45 and msc>=22.0)
	puts " su riesgo es  alto"	
end
