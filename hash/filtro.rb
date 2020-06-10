ventas ={
    Octubre: 65000,
    Noviembre: 68000,
    Diciembre: 72000
}

def filter(sales)
    new_hash={}
    sales.each do |k, v|
        puts new_hash[k] = v if v < 70000
    end
    new_hash
end

print filter(ventas)