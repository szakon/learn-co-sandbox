  new_numbers = [ ]
  
  numbers = [1,2,3,4]
  numbers.each do |x|
    new_number = x + 1
    new_numbers << new_number
  end
  puts new_numbers
  