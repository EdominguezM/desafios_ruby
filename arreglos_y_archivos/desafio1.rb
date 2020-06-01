a=[1,9,2,10,3,7,4,6]
#map 
print a.map { |i| i+1}
puts

print a.map { |i| i.to_f}
puts
#select
print a.select { |x| x < 5 }
puts
#inject
print a.inject(0){|sum,x| sum + x}
puts
#count
print a.count {|x| x < 5 }
puts