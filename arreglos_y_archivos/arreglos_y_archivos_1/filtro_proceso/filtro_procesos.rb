file= File.open('./procesos.data').readlines

def filter(field,filter)
 new_array= []
    field.each do |i|
      i= i.to_i
        if i > filter
           new_array.push i 
        end
    end
File.write('procesos_filtrados.data',new_array.join("\n"))
end


filter(file, ARGV[0].to_i)