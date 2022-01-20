# Basic Program for understanding Exception Handling in ruby

begin 
  puts "Enter No. except zero"
  div = gets.to_i
  num = 10 / div
  puts "Answer is #{num}"
rescue
  puts "Division by zero Error"
end


=begin

OUTPUT : 

Enter No. except zero
5
Answer is 2

Enter No. except zero
0
Division by zero Error


=end
 