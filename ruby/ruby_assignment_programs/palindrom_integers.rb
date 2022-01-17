=begin

Q. Given an integer limit being the upper limit of the range of interest, implement a function that returns the
last 15 palindromes numbers lower or equal to limit as an array sorted ascendingly.

=end

class Program
  def palindrom(num)
    pal = Array.new(15)
      for i in 1..num
        num2 = 0
        num_1 = i
        while (num_1>0)
          num2 = (num2 * 10) + (num_1 % 10)
          num_1 = num_1 / 10
        end
        if (num2 == i)
          pal.push(num2)
        end
      end
      len = pal.length
    return pal[len-15,len]
  end
end

object = Program.new
pp object.palindrom(121)

# OUTPUT : [7, 8, 9, 11, 22, 33, 44, 55, 66, 77, 88, 99, 101, 111, 121]