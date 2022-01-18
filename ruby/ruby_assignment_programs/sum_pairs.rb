=begin

Q. Given two unsorted arrays A of size N and B of size M of distinct elements, the task is to find all pairs from
both arrays whose sum is equal to X.

=end

class Program
  def sum_pairs(arr1,arr2,x)
    arr = []
    for i in 0...arr1.length
      for j in 0...arr2.length
        if arr1[i] + arr2[j] == x
            print [arr1[i], arr2[j]], ' '
        end
      end
    end
    return 0
  end
end

object = Program.new
arr1 = [1, 2, 4, 5, 7]
arr2 = [5, 6, 3, 4, 8]
x = 9
object.sum_pairs(arr1,arr2,x)
puts

# OUTPUT : [1, 8] [4, 5] [5, 4] 