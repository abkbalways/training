=begin

Q. Given an array nums of size n, return the majority element. The majority element is the element that
appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

=end


class Program
  def majority(arr)
    
    for i in 0...arr.length
      count = 0
      for j in 0...arr.length
        if arr[i] == arr[j]
          count = count + 1
        end
      end
      if count>arr.length/2
        return arr[i]
        break
      end
    end
  end
end

object = Program.new
arr = [1, 5, 9, 7, 5, 7, 5, 5, 5]
puts object.majority(arr)


# OUTPUT : 5