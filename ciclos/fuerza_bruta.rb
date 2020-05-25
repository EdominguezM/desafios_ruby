
def gen(num)
    i= 0
    letra="a"
    until num==letra 
        i += 1
        letra = letra.next
    end
    print "\n#{i} intentos\n"
end

gen ARGV[0].to_s