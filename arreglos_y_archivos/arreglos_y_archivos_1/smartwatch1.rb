pasos= ['100','21','231as','2031', '1052000','213b','b123']

def clear_steps(steps)
	new_array=[]
   steps.each do |i|
      i= i.delete('abcdfgjhijklmnpqrstuvwxyz').to_i
	   if i > 200 && i < 100000
		  new_array.push(i)
	   end
   end
   new_array
end 

clear_steps(pasos)