=begin

Q. Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a
given target value.
If target is not found in the array, return [-1, -1].

=end

class Program
  def start_end_position(arr,target)
    first = -1
    last = -1
    for i in 0...arr.length
      if arr[i] == target
        first = i
        break
      end 
    end
    for i in (arr.length-1).downto(0)
      if arr[i] == target
        last = i
        break
      end
    end
    return first, last
  end
end

object = Program.new
arr = [1, 3, 5, 5, 5, 5, 7, 123, 125]
arr2 = [5, 6, 8, 8, 6, 7]
target = 7
pp object.start_end_position(arr, target)
pp object.start_end_position(arr2, 8)

# OUTPUT1 : [6, 6]
# OUTPUT2 : [2, 3]