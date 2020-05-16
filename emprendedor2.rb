#lee los datos
price= ARGV[0].to_i
users = ARGV[1].to_i
user_premium= ARGV[2].to_i
user_free= ARGV[3].to_i
expenses= ARGV[4].to_i
ganancia = (price*2*user_premium + 0 * user_free) - expenses
impuesto = (ganancia - ganancia*0.35).to_i 
#si la suma de los usuarios premium y usuarios free no es igual al total de usuarios da el mensaje
if (user_premium + user_free) != users then puts "favor ingresar cantidad de usuarios correcta"
    else
        #si las ganancias son mayor a 0 se aplica impuesto sino indica solo ganancias brutas
    if ganancia > 0 
        puts "las utilidades son #{impuesto} dólares con impuestos incluidos" 
        else 
        puts " las Utilidades son #{ganancia} dólares"
    end 
end
