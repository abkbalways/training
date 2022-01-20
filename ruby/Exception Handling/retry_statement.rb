# Basic Program for understanding retry statement in ruby

a = [1, 2, 3, 4, 6, 7, 8]
begin 
    puts "Enter Any Number"
    num = Integer(gets)              
    puts a[num]
    rescue 
    retry         # It retry till user give valid integer
end

=begin

OUTPUT : 

Enter Any Number
dfs
Enter Any Number
df
Enter Any Number
df
Enter Any Number
5
7

=end
 