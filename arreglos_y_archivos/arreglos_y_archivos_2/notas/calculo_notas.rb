file= File.open('notas.data').readlines

def notas_mas_altas(notas)
    new_array=[]
    i = notas.chomp.split(',')
    i.reject { |i| i[0]}
    o= i.size
    o.times do |l|
        new_array.push i[l].to_i
        end
    new_array.max
end

notas_mas_altas(file[0])