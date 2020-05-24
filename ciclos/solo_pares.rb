n= (ARGV[0].to_i)
i= 0
print i
while i< n -1
    i += 1
    if i % 2 == 0
        print " #{i}"
    else
        n+=1  
        print" " 
    end
end
puts "\n"
