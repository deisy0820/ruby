#Un importante local comercial de la provincia solicita la confección de un sistema para el
#seguimiento de sus ventas. Para ello solicita la confección de un programa que realice lo
#siguiente:
#1. Ingrese los datos de los productos a la venta que dispone dicho local. De cada producto
#se conoce: código (un valor numérico), descripción y precio unitario.
#2. Ingrese los datos de las ventas registradas. De cada venta se conoce: Fecha, Nro de
#Vendedor (un valor entre 0 y 9), código del producto vendido, cantidad vendida y forma
#de pago (0 – Efectivo, 1 – Débito, 2- Tarjeta)
#3. Determinar cual fue el vendedor que realizó la mayor cantidad de ventas.
#4. Generar un listado, ordenado por número de vendedor, de todas las ventas realizadas
#por débito. El listado debe incluir el precio final de cada venta (precio unitario x
#cantidad)
#5. Determinar si el vendedor x realizó una venta del producto y. En caso de que dicha
#venta exista mostrar todos sus datos (incluido el precio final de venta), en caso que no
#exista, informar con un mensaje.
#6. Determinar el monto total de ventas realizadas.
#7. Mostrar los datos de la venta de mayor importe abonada con tarjeta de crédito

#se definene las clases
class Producto
	attr_reader  :codigo,:descripcion,:precio
	attr_writer  :codigo,:descripcion,:precio

	def Registro_productos
		produtos = Productos.new
		productos.codigo = 25
		productos.descripcion = "pantalones"
		productos.precio = 12364789
	end
end


class Forma_pago
	EFECIVO = 0
	DEBITO  = 1
	TARJETA = 2
	
end



class Ventas_Registradas 
	attr_reader  :fecha,:nro_vendedo,:cod_producto,:cantidad_vendida,:forma_pago
	attr_writer  :fecha,:nro_vendedo,:cod_producto,:cantidad_vendida,:forma_pago


def obtenerFormaPago(forma_pago)
	if (@forma_pago== Forma_pago::EFECIVO)
			"efectivo"
		elsif (@forma_pago== Forma_pago::DEVITO)
			"devito"
		else
			"tarjeta"
			
		end
end

	def Registro_ventas
		ventas = Ventas_Registradas.new
		ventas.fecha = 10/05/20
		ventas.nro_vendedo = 0
		ventas.cod_producto = 237
		ventas.cantidad_vendida= 25
		if (ventas.forma_pago== Forma_pago::EFECIVO)
			forma_pago = "efectivo"
		elsif (ventas.forma_pago== Forma_pago::DEVITO)
			forma_pago = "devito"
		else
			forma_pago = "tarjeta"
			
		end
		puts "la forma de pago es  #{ventas.forma_pago}"


    

	end

end

#ventores para los productos y ventas
productos_rg = []
ventas_rg = []
cantidadvendida = []
ordenardevito = []
mayordev = []

while true
	puts "[1] Ingrese los datos del producto"
	puts "[2] Ingrese los datos de las ventas"
	puts "[3] vendedor con mayor cantidad de ventas"
	puts "[4] Listado de ventas realizadas por debito"
	puts "[5] "
	puts "[6] Total ventas Realizadas"
	puts "[7] Ventas mayor tarjeta de credito"
	puts "[8] salir"

	
	puts "\n elija una opcion:"
	opcion = gets.chomp.to_i

	if (opcion == 8)
		break
	end

case 
	when opcion == 1  then
		productos = Producto.new
		puts "ingrese el  codido del producto"
		productos.codigo = gets.chomp.to_i
		puts "ingrese la descripcion del producto"
		productos.descripcion = gets.chomp
		puts "ingrese el precio del producto"
		productos.precio = gets.chomp.to_f

		#vector que asigana la lista de productos
	     productos_rg.push(productos)
	     puts "\n el producto se registro exitosamente.\n"
	     puts "#{productos_rg}"

	when opcion == 2 then
		ventas = Ventas_Registradas.new
		puts "ingrese la fecha"
		ventas.fecha = gets.chomp
		puts "ingrese el codigo del vendedor"
		ventas.nro_vendedo = gets.chomp.to_i
		if ventas.nro_vendedo > 9
			puts "el numero del vendedor debe ser menor a 9"
		end
		puts "ingrese el codigo del producto"
		ventas.cod_producto = gets.chomp.to_i
		puts "ingrese cantidad vendida"
		ventas.cantidad_vendida = gets.chomp.to_i
		puts "ingrese  la forma de pago"
		forma_pago = gets.chomp
		if (forma_pago.upcase == "efectivo")
			forma_pago = Forma_pago::EFECIVO
		elsif (forma_pago.upcase == "devito")
			ventas.forma_pago = Forma_pago::DEVITO
		else
			ventas.forma_pago = Forma_pago::TARJETA
			
		end	
	ventas_rg.push(ventas)
	

	puts "\n las ventas se registraron exitosamente.\n"
	puts "vector #{ventas_rg}"

	when opcion ==3 then
		puts "vendedor con maayor cantidad vendida"
		puts "====================="
		cantidadvendida.push(ventas.cantidad_vendida)
		max = cantidadvendida.push(ventas.cantidad_vendida).max
		puts "#{cantidadvendida}"
        puts "el venddor #{ventas.nro_vendedo} con mas cantidad es #{max}"


	when opcion ==4 then
		puts "Listado de ventas por devito"
		puts "====================="
		if (forma_pago == "DEVITO")
			puts "#{forma_pago}"
			ordenar = ordenardevito.push(ventas.nro_vendedo).sort
			total_pagar = ventas.cantidad_vendida*productos.precio
			puts "el codigo de los vededores #{ordenar}"
			puts "la cantidad vendida #{total_pagar}"
		
		else
		puts " no se registro ninguna forma de pago  con devito"
	end
	when opcion ==5 then
	when opcion ==6 then
		puts "Monto Total ventas Realizadas"
		puts "====================="
		count = 0
		totalventas = productos.precio * ventas.cantidad_vendida
		count = count + totalventas
		puts "total ventas son #{count}"
	when opcion ==7 then
		
		puts "Ventas Realizadas por tarjeta"
		puts "====================="

		if (forma_pago == "TARJETA")
			   puts "produtos: #{productos.codigo}"
				puts "Descriciop: #{productos.descripcion}"
				puts "precio: #{productos.precio}"
				puts "fecha: #{ventas.fecha}"
				puts "codigo vendedor: #{ventas.nro_vendedo}"
				puts "codigo Producto: #{ventas.cod_producto}"
				puts "Cantidad vendida: #{ventas.cantidad_vendida}"
				puts "Forma de pago: #{ventas.forma_pago}"
		end


		
end
end


