

#modulos
module Comportaminto
	def comer(tipo)
		puts "Este animal come #{tipo}"
	end
	def hablar(sonido)
		puts "Este animal dice #{sonido}"
	end
		
	end
#definicion de clases
class Animal
	include  Comportaminto # se agrega el module

end

class Mamifero < Animal  #  esto indica que la clase mamifero pertenece al animal o mamifero es un animal

end

class Ave < Animal

end


class Gato < Mamifero

end


class Perro < Mamifero

end

class Canario < Ave

end


class Pinguino < Ave

end

class Largato < Animal

end

perro = Perro.new 
perro.comer("perrarina")
perro.hablar("gua gua")

lagarto = Largato.new
lagarto.comer("bichos")
