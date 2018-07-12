#initialize empty hash
#items={}
#items ["Dazzling Pair of Shoes"] = 110
#puts items
#items ['Dazzling Pair of Shoes']=150
#puts items
#new_item = "Crazy Socks"
#new_price = 10 
#items[new_item] = new_price 
#puts items

items_with_prices = {}
items= ["Dazzling Shoes", "Crazy Socks", "Wild Laces"]
prices = [110,10,5]
i = 0
items.each do |item|
  items_with_prices[item] = prices[i]
  i+=1
end
puts items_with_prices.keys
#iterate over both keys and values 
items_with_prices.each do |item,price|
  puts "My #{item} costs #{price}"
end

#iterate over keys 
items_with_prices.each_key { |item| #here code }


#iterate over values
items_with_prices.each_value { |value| #code here }











