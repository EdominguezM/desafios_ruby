i= 0
suma= 0
while i< ARGV[0].to_i
    i += 1
    if i % 2 == 0
        suma += i
    end
end
puts  suma