class GoodDog
	@@count=0
	ESTADO = "todos tienen pulga"
	def initialize(nombre,edad)
		@name = nombre
		@age = edad
		@@count += 1
	end

	
	#def perro(nombe,edad,raza)
		#@name = nombre.capitalize
		#@age = edad
		#@raze = raza
		#@@count += 1
	#end

	#metodos getters devuelve variables
	def getcount()
		@@count
	end
	def getName()
		@name
	end
	def getAge()
		@age
	end
	#definir metodos stters _ modificar atributos
	def setName(nombre)
		@name=nombre
	end

	def setage(edad)
		@age=edad
	end

end


sparky = GoodDog.new("sparky",4)
fido   = GoodDog.new("fido", 6)
spot   = GoodDog.new("spot",10)



puts "cantidad de perros #{fido.getcount}- #{sparky.getcount}- #{spot.getcount}"
puts "perro 1 #{sparky.getName}"

sparky.setName("firulay")
nombre = sparky.getName
puts "perro 1 #{nombre}"
edad = fido.getAge
puts "perro 2 #{edad}"

