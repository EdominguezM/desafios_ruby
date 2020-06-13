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
   

m=[]
z=[]
ventas= ventas.values
n=0
sum=0
ventas.each do |i|
    n+=1
    sum += i
    if n == 3
        m << sum
        n=0
        sum=0  
    end
end
for i in (1..(m.count))
    z << "Q#{i}"
end


print quarters= z.zip(m).to_h



