#crear una aplicacion para gestionar un videoclub.
#el vehiculo cuenta con varios  tipos de productos
#todos los productos tienen:
#referencias(Titulo,tipo()

class Refencia
	PELICULA = 1
	VIDEOJUEGO = 2
end

class Estado
	SI = 1
	NO = 0	
end

class Productos
	def initialize (titulo, # Titulo de la pelicula
                    precio_alquiler,  # precio pelicula
					plazo_alquiler   # plazo de la pelicula
					 # estado de la pelicula
					) 

	              @titulo,@precio,@plazo  = titulo,precio_alquiler,plazo_alquiler

   end
end

#metodos get y set


def ObtenerTitulo()
	@titulo
end

def AsignarTitulo(titulo)
	@titulo = titulo
end

def ObtenerPrecio()
	@precio
end

def Asignarprecio(precio_alquiler)
	@precio = precio_alquiler
end

def Obtenerplazo()
	@plazo
end

def Asignarplazo(plazo_alquiler)
	@plazo = plazo_alquiler
end



class Genero
	ACCION = 1
	FANTASTICA = 2
	DRAMA = 3
	AVENTURA = 4
	PUZZLE = 5
	INFANTIL = 6
	
end

class Estilo
	ACCION = 1
	DEPORTE = 2
	AVENTURA = 3
	PUZZLE = 4
	INFANTIL = 5
	
end

class Plataforma
	XBOX = 1
	PLAYSTATION = 2
	WII= 3
	
end

#tipo de Productos que herendan d ela clase pelicula

class Pelicula < Productos

def initialize (genero,year,director)

	     @genero,@year,@director,@interpretes = genero,year,director,[]
end
end

#metodos get y set productos
def Obteneryear()
	@year
end

def Asignaryear(year)
	@year = year
end

#get y set del  interprete 	que es un arreglo
def ObtenerInterprete(posicion)
	@interpretes[posicion]
end

def Asignarinterprete(posicion,interpretes)
	@interpretes[posicion] = interpretes
end

def ObtenerLongitudInterpretes()
	@interpretes.length
end

#verificar si se pueden enviar todos los parametros
class VideoJuego < Productos
end

#metodos get y set videojuegos

def Obtenerestilo()
	@estilo
end

def AsignaEStilo(estilo)
	@estilo = estilo
end

def ObtenerPlataforma()
	@plataforma
end

def AsignaEStilo(plataforma)
	@plataforma = plataforma
end

class Clientes 
	def initialize (num_cliente,nombre,direccion,telefono)
		@num_cliente =  num_cliente
		@nombre = nombre
		@direccion = direccion
		@telefono = telefono
		@produstos_alquilados = []
end
end


#metodo get y set de clientes

def Obtenercliente()
	@num_cliente
end

def Asignarcliente(num_cliente)
	@num_cliente = num_cliente
end

def Obtenernombre()
	@nombre
end

def Asignarnombre(nombre)
	@nombre = nombre
end

def Obtenerdireccion()
	@direccion
end
def Asignardireccion(direccion)
	@direccion = direccion
end

def Obtenertelefono()
	@telefono
end
def Asignartelefono(telefono)
	@telefono = telefono
end

def Obtenerprodustos_alquilados(posicion)
	@produstos_alquilados[posicion]
end

def Asignarprodustos_alquilados(posicion,produstos_alquilados)
	@produstos_alquilados[posicion] = produstos_alquilados
end

def ObtenerLongitudprodustos_alquilados()
	@produstos_alquilados.length
end


class Factura
	def initialize (cliente,fecha_limite,fecha_devolucion)
		@cliente,@producto,@fechalimite,@fechadevolucion = cliente,[],fecha_limite,fecha_devolucion
end
end

#get y set de factura


def Obtenerproducto(posicion)
	@producto[posicion]
end

def Asignarproducto(posicion,producto)
	@producto[posicion] = producto
end

def Obtenerproducto()
	@producto.length
end


def Obtenercliente()
	@cliente
end
def Asignarcliente(cliente)
	@cliente = cliente
end

def Obtenerfechalimite()
	@telefono
end
def Asignarfechalimite(fechalimite)
	@fechalimite = fechalimite
end

def Obtenerfechadevolucion()
	@fechadevolucion
end
def Asignartelefono(fechadevolucion)
	@fechadevolucion = fechadevolucion
end

#variables para manejar los productos del videoclub
productos_vc = []
clientes_vc  = []

#opcions del menu

while true
	puts "[1] Lista de productos"
	puts "[2] Añadir de productos"
	puts "[3] Ficha de producto"
	puts "[4] Lista clientes"
	puts "[5] Añadir clientes"
	puts "[6] Ficha clientes"
	puts "[7] Alaquiler Producto"

	puts "\n elija una opcion:"
	opcion = gets.chomp.to_i

	if (opcion == 8)
		break
	end


case 
	when opcion == 1 then

	when opcion == 2 then
		
		puts "ingrese Titulo"
		titulo = gets.chomp
		puts "ingrese precio"
		precio = gets.chomp.to_f
		puts "ingrese plazo"
		plazo = gets.chomp.to_i
		puts "ingrese Refencia (peliculo/videojuego )"
		referencia = gets.chomp
		

	   
		if(referencia =="pelicula")
			tipo_alquiler = Refencia::PELICULA
		else
			tipo_alquiler = Refencia::VIDEOJUEGO
		end

	producto = Producto.new(titulo,precio,plazo,tipo_alquiler,Estado::NO)
	#vector que asigana la lista de productos
	productos_vc.puts(producto)
	pust "\n el producto se registro exitosamente.\n"
 

	#when opcion==3 then
		
	

	#when opcion==4 then
		
	
	when opcion==5 then

		puts "ingrese codigo cliente"
		num_cliente = gets.chomp.to_i
		puts "ingrese nombre cliente"
		nombre = gets.chomp
		puts "ingrese Direccion"
		direccion = gets.chomp
		puts "ingrese Telefono"
		tel = gets.chomp

		
		cliente = Clientes.new(num_cliente,nombre,direccion,tel)
		clientes_vc.puts(cliente)
		pust "\n el cliente se registro exitosamente.\n"
	

	when opcion==6 then

		

		
	

	#when opcion==7 then
		
end
end


