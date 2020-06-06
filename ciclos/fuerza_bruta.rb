def gen(num)
    i= 0
    letra="a"
    until num==letra 
        i += 1
        letra = letra.next
    end
    i
end
 print gen(ARGV[0].to_s)
 print " intentos\n"