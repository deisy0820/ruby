
#Desarrolle un programa que permita trabajar con las potencias fraccionales de dos, es decir:

#1/2,1/4,1/8,1/6,1/32,1/64,…

#en forma decimal:

#0.5,0.25,0.125,0.0625,0.03125,0.015625,
#El programa debe mostrar tres columnas que contengan la siguiente información:

n = true
acum = 0
i = 1
while n
	
	p=2**i
	p = p.to_f
	de = (1/p)
	#conversion de datos
	de = de.to_f
	acum = acum + de
	puts "potencia  #{i} fraccion #{de} suma #{acum}"
	i = i + 1
	if de<=0.000001
		n=false
	end
	
end


