=begin

Q. Given an array nums. We define a running sum of an array as running Sum[i] = sum( nums[0]...nums[i]).
Return the running sum of nums.

=end

class Program
  def running_sum(arr)
    arr2 = []
    for i in 0...arr.length
      sum = 0
      for j in 0..i
        sum = sum + arr[j]
      end
      arr2[i] = sum
    end
    return arr2
  end
end

object = Program.new
arr = [1, 2, 3, 4, 5]
pp object.running_sum(arr)

# OUTPUT : [1, 3, 6, 10, 15]