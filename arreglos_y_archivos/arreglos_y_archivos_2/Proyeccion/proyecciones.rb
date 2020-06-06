file= File.open('./ventas_base.db').read.chomp.split(',')
file= file.map {|i| i.to_f}

def proyeccion(sales,percent,first, last)
    first= first - 1
    last = last - 1
    total =  sales[first..last].sum
    project= total*(1+percent/100.0)
    '%.2f' % project
end

data=[]
uno= data.push proyeccion(file, 10, 1, 3)
dos= data.push proyeccion(file, 20, 6, 9)
File.write('resultados.data', data.join("\n"))