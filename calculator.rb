#define a method add that will take 2 integers as arguments and returns the sum 

def add (int1,int2)
  int1 + int2
  
end 

#define a method substract that will take 3 integers as arguments and returns the difference

def substract (int1,int2)
 int1-int2
 
end

def multiply(int1, int2)
  int1*int2
end

def divide (int1,int2)
  int1/int2
end

#main body. Ask user to inpot "1 + 3" or "3 - 1" and call the correct method based on input to return desired result
#loop do
 input=gets.chomp
 while input != "stop"
 #puts input

 input_array = input.split (" ")
 #the space in the parentheses tells the pogram to split the input between each space

 number1 = input_array[0].to_f
 operator = input_array[1]
 number2 = input_array[2].to_f
 operator2 = input_array[3]
 number3 = input_array[4].to_f
 operator3 = input_array[5]
 number4 = input_array[6].to_f
 operator4 = input_array[7]
 number4 = input_array[8].to_f

 if operator == "+"
   puts add(number1, number2)
 elsif operator == "-" 
  puts subtract(number1, number2)
 elsif operator == "*"
  puts multiply(number1, number2)
 elsif operator == "/"
  puts divide(number1, number2)
 else 
   puts "I don;t know how to do this! Your input should be a number, a + or - and a second number all seperated by a singe space"
 end
 
 if 
 
 
 puts "If you would like to continue type in an equation, if you would like to stop type : stop"
 input =gets.chomp
end 
  
