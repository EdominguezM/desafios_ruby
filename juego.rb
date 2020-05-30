#lee datos
jugador = ARGV[0].downcase
computador = rand(0..2)
status = {0=>"piedra",1=> "papel",2=>"tijera"}
#convierte el número random en la palabra asignada
compu= status.fetch(computador)
if jugador != "piedra" && jugador!= "tijera" && jugador!="papel"
    puts "argumento inválido. debe ser piedra, papel o tijera"
    else
    case (jugador)
    when jugador 
        if compu==jugador then puts "Computador juega "+ compu +"\nEmpataste"
            elsif compu== 'piedra' && jugador== 'tijera' then puts "Computador juega "+ compu +"\nperdiste"
            elsif compu== 'piedra' && jugador == 'papel' then puts "Computador juega "+ compu +"\nGanaste"
            elsif compu=='tijera' && jugador== 'papel' then puts "Computador juega "+ compu +"\nperdiste"
            elsif compu== 'tijera' && jugador == 'piedra' then puts "Computador juega "+ compu +"\nGanaste"
            elsif compu=='papel' && jugador== 'piedra' then puts "Computador juega "+ compu +"\nperdiste"
            elsif  compu== 'papel' && jugador == 'tijera' then puts "Computador juega "+ compu + "\nGanaste"
        end
    end
end