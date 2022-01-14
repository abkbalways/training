=begin

Q. Write a function which takes an array of integers, return how many of them contain an even number of
digits.

=end


class Program 
  def count_even(arr)
    sum = 0
    for i in 0...arr.length
      if arr[i] % 2 == 0
      sum = sum + 1
      end
    end
    return sum
  end
end

p = Program.new
arr = [1, 5, 8, 9, 15, 6, 84, 56, 89, 8]
puts p.count_even(arr)       


# OUTPUT : 5