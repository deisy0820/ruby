
puts  "ingrese dia"
dia = gets.chomp
puts  "ingrese mes"
mes = gets.chomp
#conversion de datos
mes = mes.to_i
dia = dia.to_i
#entradas de datos
if ((dia>=21 and mes==3) or ( dia<20 and mes == 4))
	print "el signo es aries"
elsif ((dia>=21 and mes==4 ) or (dia<20 and  mes == 5))
	puts "el signo es tauro"

elsif ((dia>=21 and mes==5) or (dia<20 and mes == 6))
	puts "el signo es geminis"

elsif ((dia>=21 and mes==6) or ( dia<20 and mes == 7))
	puts "el signo es cancer"

elsif ((dia>=21 and  mes==7) or (dia<20 and  mes == 8))
	puts "el signo es leo"

elsif ((dia>=21 and  mes==8) or (dia<20 and  mes == 9))
	puts "el signo es virgo"

elsif ((dia>=21 and mes==9 ) or (dia<20 and   mes == 10))
	puts "el signo es libra"

elsif ((dia>=21 and mes==10 ) or (dia<20 and  mes == 11))
	puts "el signo es escorpio"

elsif ((dia>=21 and mes==11) or ( dia<20 and   mes == 12))
	puts "el signo es sagitario"

elsif ((dia>=21 and mes==12) or (dia<20 and  mes == 1))
	puts "el signo es acuario"
end

