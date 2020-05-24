pass= ARGV[0].length
num= 0
def gen(n)
    i= 1
    puts  letra="a"
    while i< n
        i += 1
       
        letra = letra.next
        puts   letra
    end
    puts "\n"
    puts  i
end


if pass == 1 
       num =26
elsif pass== 2 
      num = 702
elsif pass== 3
     num = 10000
elsif pass==4
        num= 282404

end

gen num