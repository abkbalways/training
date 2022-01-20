# Basic Program for understanding custom error exceptions in ruby

a = [1, 2, 3]
begin 
  ind = 0
raise if ind>1               # If We want to raise custom error by itself
  num = a[ind]
  puts "Answer is #{num}"
rescue 
  puts "index is greater than 1"
end


=begin

OUTPUT : 

if ind = 0 or 1
-> Answer is 1
-> Answer is 2

if ind > 1
-> index is greater than 1

=end
 