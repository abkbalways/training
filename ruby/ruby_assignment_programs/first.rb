=begin
Q . Create a function that takes an array of strings and integers, and filters out the array so that it returns an 
array of integers only. 
=end

arr = [1,'ram','narayana',56,'jatin']
arr2 = []
  for i in 0...arr.length
    if arr[i].is_a?Integer 
	  arr2<<arr[i]
    end
  end
print arr2, ' '
puts

#OUTPUT :  [1, 56] 

