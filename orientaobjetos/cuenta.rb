

class CuentaBancaria
	def initialize(nombre,cedula,cuenta,saldo)
		@nombre,@cedula,cuenta,@saldo = 
		nombre,cedula,cuenta,saldo	
	end

	def Ingreso(saldo)
     @saldo += saldo

		
	end

	def Retiro(saldo)
		if (saldo > @saldo)
			puts "Fondos insuficientes"
		else
		@saldo -=saldo

		
		
	end

	def Transferencia (cuenta,saldo)
		if (saldo <= @saldo)
		cuenta.Ingreso(saldo)
		@saldo -= @saldo
	else
		puts "saldo insuficintes"
	end
	
		
	end

end

def saldo()
	@saldo
	end
cuenta1 = CuentaBancaria.new("fido","43526789",
	                       "152674112",4512333)

cuenta2 = CuentaBancaria.new("jose","435267899", 
	                       "1526741122",8512333)

puts "cuenta 2 : #{cuenta2.saldo}"
cuenta2.Ingreso(654893)
puts "cuenta 2 : #{cuenta2.saldo}"
puts "cuenta 1 : #{cuenta1.saldo}"
cuenta1.Retiro(50000)
puts "cuenta 1 : #{cuenta1.saldo}"
cuenta1.Transferencia(cuenta2,5000.0)
puts "cuenta 1 : #{cuenta1.saldo}"

end