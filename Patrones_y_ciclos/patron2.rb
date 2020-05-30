ARGV[0].to_i.times {|i| print i%4 == 0 || i%4 == 1 ? '*' : '.'}
puts