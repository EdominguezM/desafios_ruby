second=[100,50,1000,5000,1000,500]

def to_minutes(seconds)
    list=[]
    seconds.each do |i|    
    list.push(i/60) if i >= 60 
    end
    list
end

print "minutes = #{to_minutes(second)}\n" 