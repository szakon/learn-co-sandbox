def addition(int1, int2)
  return int1.to_f + int2.to_f
end

def subtraction(int1, int2)
  return int1.to_f - int2.to_f
end

def multiplication(int1, int2)
  return int1.to_f * int2.to_f
end

def division(int1, int2)
  return int1.to_f / int2.to_f
end

puts "Please enter your equation, with spaces in between every item (e.g. 1 + 3)"
entry = gets.chomp.split(" ") #this is the 


while entry[0] != "exit" #while the user hasn't entered "exit" yet...

  while entry.length > 1 #while the array/equation is larger than one item, i.e. when there are still operations left to complete
  
    while entry.include?("*") or entry.include?("/") #ORDER OF OPERATIONS: MULTIPLICATION AND DIVISION FIRST
    
    #MULTIPLICATION SECTION 
      if entry.include?("*") #if the equation has a multiplication sign, do the following:
      
        mult_index = entry.index("*") #this gets the index in the array of the first multiplication sign
        
        if !(entry[0..mult_index].include?("/")) #ORDER OF OPERATIONS: makes sure that we aren't skipping over any division signs before the multiplication sign; if there is a division sign before the multiplication sign, it will skip down to the division section below
        
          solution = multiplication(entry[mult_index - 1], entry[mult_index + 1]) #calls the multiplication method on the number BEFORE the multiplication sign (entry[mult_index - 1]) and the number AFTER the multiplication sign (entry[mult_index + 1]).  
          
          entry.delete_at(mult_index + 1) #deletes the second number from array 
          
          entry.delete_at(mult_index) #deletes the operator from the array
          
          entry[mult_index - 1] = solution #replaces the first number with the product of the two numbers
          
          #So, to summarize how this would work with an example:
          #We start out with the equation 1 + 2 * 3 / 4
          #As an array, it looks like [1, '+', 2, '*', 3, '/', 4]
          #We first go to the multiplication sign, whose index is 3
          #We then call the multiplication method on the surrounding numbers at indices 2 and 4 (2 * 3), which returns 6
          #We store that 6 as the "solution" variable.
          #Then, because we've completed the multiplication, we delete the 3, the 2, and the '*' from the array, putting in their place the solution
          #Now, our array looks like [1, '+', 6, '/', 4], or 1 + 6 / 4
          #We continue on to the division now (order of operations)
          #The remaining sections below function exactly the same as this multiplication method, it's just the operation that changes.
          
        end
      end 
      
      #DIVISION SECTION
      if entry.include?("/")
        div_index = entry.index("/")
        solution = division(entry[div_index - 1], entry[div_index + 1])
        entry[div_index + 1] = solution
        entry.delete_at(div_index + 1)
        entry.delete_at(div_index)
        entry[div_index - 1] = solution
      end 
    end
    while entry.include?("+") or entry.include?("-") #SECOND PART OF ORDER OF OPERATIONS
    
    #ADDITION SECTION
      if entry.include?("+")
        add_index = entry.index("+")
        if !(entry[0..add_index].include?("-") )
          solution = addition(entry[add_index - 1], entry[add_index + 1])
          entry[add_index + 1] = solution
          entry.delete_at(add_index + 1)
          entry.delete_at(add_index)
          entry[add_index - 1] = solution
        end
      end
      
    #SUBTRACTION SECTION 
      if entry.include?("-")
        sub_index = entry.index("-")
        solution = subtraction(entry[sub_index - 1], entry[sub_index + 1])
        entry[sub_index + 1] = solution
        entry.delete_at(sub_index + 1)
        entry.delete_at(sub_index)
        entry[sub_index - 1] = solution
      end
    end
  end
  puts entry[0] #once we've solved the entire equation, print the solution
  
  puts "To solve another equation, please enter below. To exit the calculator, please type 'exit'."
  entry = gets.chomp.split(" ")
end

puts "Thank you for using the calculator."