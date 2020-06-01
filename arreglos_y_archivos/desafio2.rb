nombres=['Violeta','Andino','Clemente','Javiera','Paula','Pía','Ray']
#select
print nombres.select { |x| x.length > 5}
puts
#map
print nombres.map { |i| i.downcase}
puts
#select
print nombres.select { |x| x[0] == "P"}
puts
#count
print nombres.count {|x| x[0]== 'A' || x[0]== 'B'|| x[0]== 'C' }
puts
#map
print nombres.map { |x| x[x].length }
puts