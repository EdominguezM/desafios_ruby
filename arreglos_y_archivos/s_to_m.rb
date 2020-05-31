seconds=[100,50,1000,5000,500,450,20,400,10000]
def to_minutes(seconds)
    list=[]
    n= seconds.count
    n.times do |i| 
        if seconds[i] >= 90 
            list.push seconds[i]/60.to_i
        else  
           list.delete seconds[i]
        end
    end
    list
    
end
puts to_minutes(seconds) 