=begin

Q. You are given an array of strings nums and an
integer k. Each string in nums represents an integer without leading zeros.
Return the string that represents the kth largest integer in nums.
Note: Duplicate numbers should be counted distinctly. For example, if nums is ["1","2","2"], "2" is the first
largest integer, "2" is the second-largest integer, and "1" is the third-largest integer.

=end

class Program
  def largest(arr,n)
    len = arr.length - 1
    for i in 0 ... arr.length - 1
      for j in i+1 ... arr.length
        if arr[i].to_i < arr[j].to_i
          arr[i], arr[j] = arr[j], arr[i]
        end
      end
    end
    return arr[n-1]
  end
end

arr = ["1","5","8","10","5","16","3","2","4"]
k = 4
object = Program.new
pp object.largest(arr,k)

# OUTPUT : "5"