#lee los datos
price= ARGV[0].to_i
users = ARGV[1].to_i
expenses=ARGV[2].to_i
ganancia = price * users - expenses
impuesto = (ganancia - ganancia*0.35).to_i 
#si las ganancias son mayor a 0 se aplica impuesto sino indica solo ganancias brutas
if ganancia > 0 
    puts "las utilidades son #{impuesto} dólares con impuestos incluidos" 
    else 
    puts " las Utilidades son #{ganancia} dólares"
end 