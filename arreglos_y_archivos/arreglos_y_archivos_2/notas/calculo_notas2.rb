file= File.open('notas.data').readlines

def notas_mas_alta(notas)
    new_array=[]
    new_array1=[]
    n= notas.size
    n.times do |l|
        i = notas[l].chomp.split(',')
        new_array.push i.delete i[0]
        new_array1.push i.max
    end
    new_array
    new_array1
    final=[]
    n.times do |i|
        final.push new_array[i]+" "+new_array1[i]
    end
    final.join("\n")
end

notas_mas_alta(file)