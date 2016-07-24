#Crea una clase Fraccion que tenga como atributos el numerador y el denominador. 
#Implemente los métodos para sumar, restar, multiplicar y dividir fracciones.

class Fraccion
	def initialize(numerador,denominador)
		@denominador,@numerador = numerador,denominador
	end

	def Sumar(numerador,denominador)
		 suma =  @numerador + @denominador
	end

	def Restar (numerador,denominador)
	end

	def Multiplicar (numerador,denominador)
	end

	def Dividir (numerador,denominador)
	end
		
	

	suma = Fraccion.new(12,43)
	

	puts "la suma es :#{sumar.suma}"
	end
   