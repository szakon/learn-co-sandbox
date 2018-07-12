states = {"Massachusetts" => "MA", "Wisconsin" => "WI", "New Jersey" => "NJ", "Colorad" => "CO"}

capitals = {"MA" => "Boston", "WI" => "Madison", "NJ" => "trenton", "CO" =>"denver"}

#1 
puts states["Wisconsin"]
#2 
#puts capitals["NJ"]
#3
states["Ohio"]="OH"
puts states
#4
states.each do |states, code|
  puts states
  puts code
end
#5
#puts states.each_key {|state|puts state}
states.each do |states, code|
  puts states
end

#6
capitals.each do |code, capital|
  puts capital
end
#or puts capitals.each_value {|capital| puts capital}
 