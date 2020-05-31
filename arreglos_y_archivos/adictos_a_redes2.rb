min=[rand(100),rand(1000),40,90,0,1000,200,180,500,60,95, 125]
def scan_addicts2(min)
    list=[]
    n= min.count
    n.times do |i| 
        if min[i] < 90 
            list.push 'bien'
        elsif  min[i] >= 90 &&  min[i] <= 180
            list.push 'mejorable'
        else  
            list.push 'mal'
        end
    end
    list
end
puts scan_addicts2(min)