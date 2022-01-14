=begin

Given an array of integers nums and an integer target, return indices of the two numbers such that they add
up to target. You may assume that each input would have exactly one solution, and you may not use the
same element twice. You can return the answer in any order.

=end


class Program
  def two_sum(arr,num)
    for i in 0...arr.length-1
      j = i + 1
      while(j < arr.length)
        if(arr[i] + arr[j] == num)
          print i, ' '
          print j
          puts
        end
        j = j + 1
      end 
    end    
  end
end

object = Program.new
nums = [1, 5, 8, 9, 7, 10]
object.two_sum(nums, 12)


# OUTPUT : 1 4