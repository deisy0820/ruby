

class Refencia
	PELICULA = 1
	VIDEOJUEGO = 2
end

class Estado
	SI = 1
	NO = 0	
end


#esta es otra forma de hacer get y se aqui lo lee y escribe
class Producto
	attr_reader :titulo,:tipo,:precio_alquiler,:plazo_alquiler,:alquiler
	attr_writer :titulo,:tipo,:precio_alquiler,:plazo_alquiler,:alquiler

#son los metodos que pertenece a productos

def obtenerTipoProducto(tipo)
	if(@tipo ==Refencia::PELICULA )
			"Pelicula"
		else
			"VideoJuego"
		end
end

def obtenerEsado(alquiler)
	if(@alquiler == Estado::SI)
			"si"
		else
			"no"
		end
end

def AgregarProducto ()
producto = Producto.new
producto.titulo = "pelicula extranjera"
producto.precio_alquiler = 236587
producto.plazo_alquiler= 10
producto.alquiler = Estado::SI
puts "Producto"
puts "el titulo del libro es #{producto.titulo}"
if(producto.tipo =="pelicula")
			tipo = Refencia::PELICULA
		else
			tipo = Refencia::VIDEOJUEGO
		end
puts "el tipo de  producto #{producto.tipo}"
puts "el precio de la pelicula es #{producto.precio_alquiler}"
puts "plazo del alquiler #{producto.plazo_alquiler}"
puts "estado de  alquiler #{producto.alquiler}"
if(producto.alquiler == Estado::SI)
			alquiler = Estado::SI
		else
			alquiler = Estado::SI
		end
	end


def MostrarFicha()
tipoProd = obtenerTipoProducto(:tipo)
alquilad = obtenerEsado(:alquiler)
puts "ficha de producto"
puts "====================="
puts "el titulo del libro es #{:titulo}"
puts "el tipo de  producto #{tipoProd}"
puts "el precio de la pelicula es #{:precio_alquiler}"
puts "plazo del alquiler #{:plazo_alquiler}"
puts "estado de  alquiler #{alquilad}"

	end
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

class Pelicula < Producto
attr_reader :genero,:year,:director,:interpretes
attr_writer :genero,:year,:director,:interpretes

end      



class VideoJuego < Producto
	attr_reader :estilo,:plataforma
    attr_writer :estilo,:plataforma
end

class Clientes
	attr_reader :num_cliente,:nombre,:direccion,:telefono,:produ_alquilados
	attr_writer :num_cliente,:nombre,:direccion,:telefono, :produ_alquilados

  #def obtenerNumclinte()
  	#rand(1000) # devuelve un muero de cliente entre 0 y 1000
 # end
end

class Factura
	attr_reader :productos,:cliente,:fecha_limite,:fecha_devolucion
	attr_writer :productos,:cliente,:fecha_limite,:fecha_devolucion
		
end
#vectror que va obterner los productos y clientes
productos_vc = []
clientes_vc  = []
while true
	puts "[1] Lista de productos"
	puts "[2] Añadir de productos"
	puts "[3] Ficha de producto"
	puts "[4] Lista clientes"
	puts "[5] Añadir clientes"
	puts "[6] Ficha clientes"
	puts "[7] Alaquiler Producto"
	puts "[8] salir"

	


	puts "\n elija una opcion:"
	opcion = gets.chomp.to_i

	if (opcion == 8)
		break
	end

	case 
	when opcion == 1 then
		puts "Lista de productos"
		puts "====================="
		for i in 0..productos_vc.length-1
			productos_vc[i].titulo
			puts "Titulo:#{productos_vc[i].titulo}"
			puts "Titulo:#{productos_vc[i].tipo}"
			puts "Titulo:#{productos_vc[i].precio_alquiler}"
			puts "Titulo:#{productos_vc[i].plazo_alquiler}"
			puts "Titulo:#{productos_vc[i].alquiler}"
			puts "====================="
       end
	when opcion == 2 then
		puts "Añadir los productos"
		puts "====================="
        producto = Producto.new
		puts "ingrese Titulo"
		producto.titulo = gets.chomp
		puts "ingrese Tipo (pelicula/videojuego)"
		tipo= gets.chomp
		if(tipo.upcase =="pelicula")
			producto.tipo = Refencia::PELICULA
		else
			producto.tipo = Refencia::VIDEOJUEGO
		end
		puts "ingrese precio"
		precio = gets.chomp.to_f
		puts "ingrese plazo"
		plazo = gets.chomp.to_i
		puts "estado de  alquiler #{producto.alquiler}"
		alquiled = gets.chomp
     if(alquiled == Estado::SI)
			producto.alquiler = Estado::SI
		else
			producto.alquiler = Estado::NO
		end
	
	#vector que asigana la lista de productos
	productos_vc.push(producto)
	puts "\n el producto se registro exitosamente.\n"
 
   #upcase = para poner en mayuscula
	when opcion==3 then
		puts "Ficha de Productos"
		puts "====================="
		puts "Introduzca el titulo"
		titulo = gets.chomp
		for j in 0..productos_vc.length-1
			if (titulo==productos_vc[i])
				puts "titulo: #{productos_vc[i].titulo}"
				puts "tipo: #{productos_vc[i].tipo}"
				puts "precio alquiler: #{productos_vc[i].precio_alquiler}"
				puts "plazo alquiler: #{productos_vc[i].plazo_alquiler}"
				puts "estado del alquiler: #{productos_vc[i].alquiler}"

				break
			end
		end

	when opcion==4 then	
		puts "Listar clientes"
		puts "====================="
		for i in 0..clientes_vc.length-1
			clientes_vc[i]
			puts "Codigo cliente:#{clientes_vc[i].num_cliente}"
			puts "Nombre:#{clientes_vc[i].nombre}"
			puts "Titulo:#{clientes_vc[i].direccion}"
			puts "Titulo:#{clientes_vc[i].telefono}"
			puts "Titulo:#{clientes_vc[i].produ_alquilados}"
			puts "====================="
       end
	when opcion==5 then
        puts "Añadir clientes"
		puts "====================="
		clientes = Clientes.new
		puts "ingrese codigo cliente"
		clientes.num_cliente = gets.chomp.to_i
		puts "ingrese nombre cliente"
		clientes.nombre = gets.chomp
		puts "ingrese Direccion"
		clientes.direccion = gets.chomp
		puts "ingrese Telefono"
		clientes.telefono = gets.chomp
		puts "productos alquilados"
		clietes.produ_alquilados = []
		clientes_vc.push(clientes)
		puts "\n el cliente se registro exitosamente.\n"
	

	when opcion==6 then	
		puts "Ficha de clientes"
		puts "====================="
		puts "Introduzca codigo cliente"
		codigo = gest.chomp
		for j in 0..clientes_vc.length-1
			if (codigo==clientes_vc[i])
				puts "codigo cliente: #{clientes_vc[i].num_cliente}"
				puts "nombre: #{clientes_vc[i].nombre}"
				puts "direccion: #{clientes_vc[i].direccion}"
				puts "telefono: #{clientes_vc[i].telefono}"
				puts "productos al quilados: #{clientes_vc[i].produ_alquilados}"

				break
			end
		end

	when opcion==7 then
		puts "Alquiler de Productos"
		puts "====================="
		puts "INtroduzca numero de cliente"
		num_cliente = gets.chomp.to_i
		encontrado = false
		for k in o ..length-1
			if (num_cliente == clientes_vc.num_cliente)
				puts "======="
				puts clientes_vc[k]
				puts "======="
				puts "Tipo de alquiler (P/V)"
				tipo = gets.chomp.upcase
				if (tipo=="P")
					puts "Titulo de la pelicula:"
					titulo = gets.chomp.upcase
					product_tem = productos_vc.find {|prod|prod.titulo==titulo}
				   if (product_tem)
				   	if (product_tem.Alquiler == Estado::SI)
				   		puts "pelicula ya alquilada"

					else
					clientes_vc [k].produ_alquilados.push (product_tem)
					#anadir el objeto  product_tem a la factura
				end
				encontrado = true

				break
			end
		end
		if not (encontrado)
			puts "el usuario con #{num} no existe"
		end
		
end
end