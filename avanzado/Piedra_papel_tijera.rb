
def menu
    puts
    puts '1) Piedra'
    puts '2) Papel'
    puts '3) Tijeras'
    puts '4) Salir'
end
status = {1=>"piedra",2=> "papel",3=>"tijera",4=>"Salir"}
print "\n*** Bienvenidos al Cachipún *** \n\n"
#imprimir en pantalla menú
print   "Turno Jugador I\n"
menu
puts
#jugador I
jugador1 = gets.chomp.to_i
puts
if jugador1 != 1..3
    if jugador1 > 4 || jugador1 < 1
        puts "ingrese valor correcto" 
        menu
        puts
        jugador1 = gets.chomp.to_i
        puts
    elsif jugador1 ==4
        exit
    end
    if jugador1==4 
        exit 
    end        
end

#jugador II
puts 'Turno jugador II'
menu
puts
jugador2 = gets.chomp.to_i
puts
if jugador2 != 1..3
    if jugador2 > 4 || jugador1 < 1
        puts "ingrese valor correcto" 
        menu
        puts
        jugador2 = gets.chomp.to_i
        puts
        elsif jugador1 ==4
        exit
    end
    if jugador2==4 
        exit 
    end
end

#Juego
 gamer1= status.fetch(jugador1)
 puts "Jugador I: #{gamer1}"
 puts
 gamer2= status.fetch(jugador2)
 puts "Jugador II: #{gamer2}"
 puts
#logica
case (gamer1)
when gamer1 
    if gamer2==gamer1 then puts "Resultado: Empate\n"
        elsif gamer2== 'piedra' && gamer1== 'tijera' then puts "Ganador: Jugador II, #{gamer2} gana a #{gamer1}.\n"
        elsif gamer2== 'piedra' && gamer1 == 'papel' then puts "Ganador: Jugador I, #{gamer1} gana a #{gamer2}.\n"
        elsif gamer2=='tijera' && gamer1== 'papel' then puts "Ganador: Jugador II, #{gamer2} gana a #{gamer1}.\n"
        elsif gamer2== 'tijera' && gamer1 == 'piedra' then puts "Ganador: Jugador I, #{gamer1} gana a #{gamer2}.\n"
        elsif gamer2=='papel' && gamer1== 'piedra' then puts "Ganador: Jugador II, #{gamer2} gana a #{gamer1}.\n"
        elsif gamer2== 'papel' && gamer1 == 'tijera' then puts "Ganador: Jugador I, #{gamer1} gana a #{gamer2}.\n"          
    end
    puts
end



