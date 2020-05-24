n = ARGV[0].to_i
n.times do |i|
    if i >= 1 && i != n-1
        puts "\t   <li>#{i}</li>"
    elsif i == 0 
        puts "\t<ul>"
    else  
        puts "\t</ul>"
    end
end
print "\n"

 