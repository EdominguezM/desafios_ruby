
#inicio

#lee datos
g = ARGV[0].to_f 
r = ARGV[1].to_i 

#formula
v = Math.sqrt((2*g)*r).to_f.ceil(2)
#resultado
puts "la velocidad de escape del planeta es #{v} mts/s aproximadamente"