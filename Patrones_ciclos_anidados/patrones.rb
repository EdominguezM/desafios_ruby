def letra_o(n)
    # inicio
    n.times do |i|
    print "*"
    end
    print "\n"
    #centro
    (n-2).times do
        print "*"
        (n-2).times do |i|
            print " "
        end
        print "*"
        print "\n"
    end
    # final
    n.times do |i|
    print "*"
    end
end
#letra_o(ARGV[0].to_i)

def letra_i(n)
    # inicio
    n.times do |i|
    print "*"
    end
    print "\n"
    #centro
    (n-2).times do
        print " "*(n/2)
        (1).times do |i|
            print "*"   
        end
        print " "
        print "\n"
    end
    # final
    n.times do |i|
    print "*"
    end
    print"\n"
end
#letra_i(ARGV[0].to_i)


def letra_z(n)
 # inicio
    n.times do |i|
        print "*"
    end
    print "\n"
    #centro
    (n-2).times do |i|
        print " "
        (n-i).downto(4) do
        print " "
        end
        1.times {|j| print "*"}
        (n-i).downto(4) do
            print " "
        end
        print " "
        print "\n"
    end
    # final
    n.times do |i|
    print "*"
    end
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
        print"\n"
    end
    #abajo
    (n).times do |i| 
        (n-i).times do |j|
            print " "
        end
        print "*"
        ((n-i)+1).upto(x/2) do
        print "  "        
        end
        if i>0
            print" *"
        end
        print "\n"     
    end  
end
#letra_x(ARGV[0].to_i)

def numero_cero(n)
    # inicio
    n.times do |i|
        print "*"
    end
        print "\n"
        #centro
    (n-2).times do |i|
        print "*"
        (n-i).upto(n-1) do |i|
            print " " 
        end
        print "*"
        (n-i).downto(n-(n-4)) do |i|
            print " " 
        end
        print "*"
        print "\n"
    end
        # final
        n.times do |i|
        print "*"
    end 
    print "\n"
end
#numero_cero(ARGV[0].to_i)

def navidad(n)
    # inicio
    (n-1).times do |i| 
        (n-i).times do |j|
            print " "
        end
        print "*"
        (n-i).upto(n-1) do
                (1).times {|j| print " *"}
            end    
        print " "  
        print "\n"     
    end
    #tronco
    (n/2).times do |i|
        print " "*(n-1)+" *"
        print "\n"  
    end
    #suelo
    print "  "
    (n-2).times do |i|
        print " *"
    end
    print "\n" 
end
#navidad(ARGV[0].to_i)