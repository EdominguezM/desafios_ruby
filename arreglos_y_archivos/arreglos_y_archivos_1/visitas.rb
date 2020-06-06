visitas = [1000, 800, 250, 300, 500, 2500]

def promedio(average)
    total= average.inject(0) {|sum, grade|  sum += grade  }
    total= total/average.size
end

print promedio(visitas)