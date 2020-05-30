ARGV[0].to_i.times { |i| print i % 3 == 0 ?  "1" : i % 3 == 1 ? "2" : "3"}
puts