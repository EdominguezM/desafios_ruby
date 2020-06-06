 visitas1 = [1000, 800, 250, 2000, 500, 2500]
 visitas2 = [1000, 800, 250, 900, 500, 2500]

def compara_arrays(average1, average2)
 max=[]
 total1= average1.inject(0) {|sum, grade|  (sum += grade)  }.to_f
 average1= (total1/average1.length).ceil(2)
 
 total2= average2.inject(0) {|sum, grade|  (sum += grade)  }.to_f
 average2= (total2/average2.length).ceil(2)

 average1 >average2 ?  max.push(average1) :  max.push(average2)
 
end

compara_arrays(visitas1, visitas2)
