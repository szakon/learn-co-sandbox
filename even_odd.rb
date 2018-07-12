#input a number from user and print to scren whether it is even or odd then play again

puts "Let's play a game. Enter a number"
loop do
 number = gets.chomp 

 if number.to_i % 2 == 0
   puts "Your number is even!"
 else
   puts "Your number is odd!"
 end  
end
  