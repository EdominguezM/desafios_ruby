
def augment(array,value)
    new_prices= []
    array.each { |i| new_prices.push (i*value).to_i}
    new_prices
end

prices =[1000,2000,600,10000,700,2500,350]
print augment(prices,1.30)
