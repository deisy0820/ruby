#modulos
module Areas
	#definicion de metodos
	def Triangulo(base,altura)
		a = (base * altura)/2
		puts "el area del triangulo es : #{a}"
	end

	def Cuadrado(lado)
		b = lado**2
		puts "el area del cuadrado es: #{b}"
	end

	def Circulo(r)
		pi = 3.1416
		c = ((pi)*r**2)
		puts "el area del circulo es: #{c}"
	end
	
		
	end
#definicion de clases

class Figuras
include  Areas # se agrega el module
end

class Circulo < Figuras
	

end

class Triangulo  < Figuras  #  esto indica que la clase mamifero pertenece al animal o mamifero es un animal

end

class Cuadrado  < Figuras

end

#ingreso de datos
triangulo = Triangulo.new 
triangulo.Triangulo(25,27)
cuadrado = Cuadrado.new 
cuadrado.Cuadrado(12)

circulo = Circulo.new 
circulo.Circulo(20)




