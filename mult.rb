#Lea un ventor de n elementos y calcule el número
#de elementos que son multiplos de 3.

d = [1,2,3,4,5,6]
acum = 0
e = []
for i in 0..5
	if d[i]%3==0
       acum = acum + 1
       e[i]=d[i]
		end
end
puts "los multiplos de 3 son : #{e}"
puts "el total de los multiplos son: #{acum}"