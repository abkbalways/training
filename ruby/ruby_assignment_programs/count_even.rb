=begin

Q. Write a function which takes an array of integers, return how many of them contain an even number of
digits.

=end


class Program 
  def count_even(arr)
    count2 = 0
    for i in 0...arr.length
      num = arr[i]
      count = 0
      while (num>0)
        num = num/10
        count = count + 1
      end
      if count % 2 == 0
        count2 = count2 + 1
      end
    end
    return count2
  end
end

p = Program.new
arr = [1, 5, 8, 9, 15, 6, 84, 5126, 2022, 892, 8]
puts p.count_even(arr)       


# OUTPUT : 4