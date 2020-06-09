ventas ={
    Octubre: 65000,
    Noviembre: 68000,
    Diciembre: 72000
}

new_hash={}
ventas.each do |k, v|
    puts new_hash[k] = v if v < 70000
end
puts new_hash