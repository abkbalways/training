=begin

Q. Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range
that is missing from the array.
=end

class Program
    
  def distinct1(arr)               #By using methods

    b = (0..arr.max).to_a
    return b - arr
  end

  def distinct2(arr)               #By manually
    max = arr[0]
    arr2 = []

    for i in 0...arr.length-1
      if arr[i] < arr[i+1]
        max = arr[i+1]
      end
    end

    for i in 0..max
      bool = false
      for j in 0..arr.length
        if i == arr[j]
          bool = true
          break
        end
      end
      if bool == false
        arr2.push(i)
      end
    end
    return arr2
  end
end

object = Program.new
arrs = [0, 7, 10]
pp object.distinct1(arrs)
pp object.distinct2(arrs)


=begin

OUTPUT : 

[1, 2, 3, 4, 5, 6, 8, 9]
[1, 2, 3, 4, 5, 6, 8, 9]

=end