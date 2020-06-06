
file= File.open('./ventas_base.db').read.chomp.split(',')

file= file.map {|i| i.to_f}

def proyeccion(sales,percent,first, last)
    first= first - 1
    last = last - 1
    total =  sales[first..last].sum
   proyect= total*(1+percent/100.0)

end
print proyeccion(file, 10, 1, 4)
# data=[}]
# data.push.proyeccion(file, 10, 1, 4)
# data.push.proyeccion(file, 20, 7, 12)
# File.write('/.resultados.data', data)