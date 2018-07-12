def tax
 tax_prices = [ ]
 cart_items_prices = [12.43, 19.99, 3.49, 75.00]
 cart_items_prices.each do |x|
   new_prices = x+x*0.07
   tax_prices << new_prices
 end
 puts tax_prices9
end
tax

def expensive
 over_price = [ ]
 cart_items_prices=[12.43, 19.99, 3.49, 75.00]
 cart_items_prices.each do |x|
   if x>15
     over_price << x
   end
 end
 puts over_price
end
expensive

def total 
  tax_prices = [13.3001, 21.3893, 3.7343, 80.25]
  total_price = tax_prices[0]+tax_prices[1]+tax_prices[2]+tax_prices[3]
  puts total_price
end
total

     