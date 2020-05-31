seconds=[100,50,1000,5000,500,450,20,400,10000]
def to_minutes(seconds)
    list=[]
    n= seconds.count
    n.times do |i| 
        t= Time.at(seconds[i]).min
        list.push t if t >= 1 else list.delete seconds[i]
        #print m if seconds[i] > 1
        #     list.push seconds[i]/60.to_i
        # else  
        #    list.delete seconds[i]
        # end
    end
    list 
end
print "minutes = #{to_minutes(seconds)}\n" 