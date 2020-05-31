
def promedio(array)
    new_array=[]
    n= array.count
    n.times do |i|      
        if array[i] == 'N/A'
            new_array.push 2.0
        else  
            new_array.push array[i]
        end
    end
    new_array.sum/n
end

notas=[5,7,1,3,5,8,9,'N/A','N/A',3]
puts promedio(notas)