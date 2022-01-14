=begin

Q. Given an array of integers nums, return the number of good pairs.
A pair (i, j) is called good if nums[i] == nums[j] and i < j

=end


class Program
  def good_pairs(nums)
    count = 0
    for i in 0...nums.length-1
      for j in i+1...nums.length
        if(nums[i] == nums[j])
          count = count + 1
        end
      end
    end
    return count
  end
end

object = Program.new
nums = [1,2,3,4,1,2,1]
puts object.good_pairs(nums)


# OUTPUT : 4