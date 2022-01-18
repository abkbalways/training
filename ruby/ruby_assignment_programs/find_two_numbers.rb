=begin

Q. iven an unsorted array Arr of size N of positive integers. One number 'A' from set {1, 2, ...N} is missing
and one number 'B' occurs twice in array. Find these two numbers.

=end

class Program 
  def two_numbers(arr)
    for i in 0 ... arr.length
      if arr.count(arr[i]) == 2
        puts "The Number occurs twice is #{arr[i]}"
        break
      end
    end

    for i in 1 .. arr.length
      bool = false
      for j in 0 ... arr.length
        if i == arr[j]
          bool = true
          break
        end
      end
      if bool == false
        puts "The Missing Number is #{i}"
        break
      end
    end
  end
end
     
object = Program.new
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10]
object.two_numbers(arr)


=begin

OUTPUT :

The Double Occurence Number is 10
The Missing Number is 11

=end