
arr=[5,3,2,5,10]

def chart(datos)
    n=datos.count
    i= 1
    n.times do |i|
       i.to_i
       print"|" + ("*"*datos[i]*2)+"\n"

    end
    print ">"+ ("-" * datos.max*2)+"\n"
    (datos.max).times { |k| print "|#{k+=1}"}
    print"\n"
end

chart(arr)