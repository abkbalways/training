=begin

Q. Given an integer array nums, move all the even integers at the beginning of the array followed by all the
odd integers. Return any array that satisfies this condition.

=end

class Program
  def even_array(nums)
    j = 0

    for i in 0...nums.length
      if nums[i] % 2 == 0
        nums[j],nums[i] = nums[i],nums[j]
        j = j+1
      end
    end
    return nums
  end 
end

object = Program.new
nums = [1, 2, 8, 9, 6, 12, 3, 69]
pp object.even_array(nums)


# OUTPUT : [2, 8, 6, 12, 1, 9, 3, 69]