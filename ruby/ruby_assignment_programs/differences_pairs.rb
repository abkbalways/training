=begin

Q. Given an integer array nums and an integer k, return the number of pairs (i, j) where i < j such that |nums[i]
- nums[j]| == k.
The value of |x| is defined as:
x if x >= 0.
-x if x < 0.

=end

class Program
  def differences_pairs(arr,num)
    count = 0
    for i in 0...arr.length - 1
      for j in i+1...arr.length
        if (arr[i] - arr[j] == num) || (arr[i] - arr[j] == -num)
          count = count + 1
        end
      end
    end
    return count
  end
end

object = Program.new
nums = [3, 2, 1, 5, 4]
k = 2
pp object.differences_pairs(nums,k)

# OUTPUT : 3