ventas = {
    Enero: 15000,
    Febrero: 22000,
    Marzo: 12000,
    Abril: 17000,
    Mayo: 81000,
    Junio: 13000,
    Julio: 21000,
    Agosto: 41200,
    Septiembre: 25000,
    Octubre: 21500,
    Noviembre: 91000,
    Diciembre: 21000
    }
   
 n = ARGV

def filter(sell, n)
    n.each do |x|
        x= x.to_i 
        indice = sell.values.include?(x)  
        print  indice ? "" : " no encontrado "
        sell.each {|k,v| print v == x ? "#{k} " : "" }
    end
end

filter(ventas, n)