def letra_o(n)
    # arriba
    n.times {|i| print "*"} 
    puts
    #centro
    (n-2).times do
        print "*"
        (n-2).times {|i| print " "}
        print "*"
        puts
    end
    # abajo
    n.times { |i| print "*"}
    puts
end
#letra_o(ARGV[0].to_i)

def letra_i(n)
    # inicio
    n.times { |i| print "*"}
    puts
    #centro
    (n-2).times do
        print " "*(n/2)
        print "*" 
        print " "
        puts
    end
    # final
    n.times {|i| print "*"}
    puts
end
#letra_i(ARGV[0].to_i)


def letra_z(n)
 # inicio
    n.times {|i| print "*"}
    print "\n"
    #centro
    (n-2).times do |i|
        print " "
        (n-i).downto(4) { print " "}
        1.times {|j| print "*"}
        (n-i).downto(4) {print " "}
        print " "
        print "\n"
    end
    # final
    n.times {|i| print "*"}
    print"\n"
end
#letra_z(ARGV[0].to_i)

def letra_x(x)
    n= x-(x/2)
    #arriba
    (n-1).times do |i|
        print" "*i
        (1).times {|i| print" *"}
        (x-(n+2)).downto(i){|j| print" "
         1.times {|k| print" "}
        }
        print " *"
        puts
    end
    #abajo
    (n).times do |i| 
        (n-i).times {|j| print " "}
        print "*"
        ((n-i)+1).upto(x/2) do
        print "  "        
        end
        if i>0 
            print" *"
        end
        puts    
    end  
end
#letra_x(ARGV[0].to_i)

def numero_cero(n)
    # inicio
    n.times {|i| print "*"}
        puts
        #centro
    (n-2).times do |i|
        print "*"
        (n-i).upto(n-1) {|i| print " "}
        print "*"
        (n-i).downto(n-(n-4)) {|i| print " "}
        print "*"
        puts
    end
        # final
        n.times {|i| print "*"}
    puts
end
#numero_cero(ARGV[0].to_i)

def navidad(n)
    # inicio
    (n-1).times do |i| 
        (n-i).times {|j| print " "}
        print "*"
        (n-i).upto(n-1) { print " *"}
        print " "  
        print "\n"     
    end
    #tronco
    (n/2).times do |i|
        print " "*(n-1)+" *"
        puts 
    end
    #suelo
    print "  "
    (n-2).times do |i|
        print " *"
    end
    puts 
end
#navidad(ARGV[0].to_i)