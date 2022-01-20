# Basic Program for understanding more than 2 exceptions in ruby

a = [1, 2, 3]
begin 
  ind = 0
  num = a[ind]
  div = 10/0
  puts "Answer is #{num}"
  puts "Answer is #{div}"
rescue TypeError => e
  puts e
rescue ZeroDivisionError => e
  puts e
end


=begin

OUTPUT : 

1.if ind = "ajb"

OUTPUT : no implicit conversion of String into Integer

2.if div = 10/0

OUTPUT : divided by 0

=end
 