=begin

Q. Write a function that takes an integer (less than 1000) and return an array of primes till that number.

=end

class Program
  def prime(num)
    arr = []
    for i in 2..num
      bool = false
      for j in 2...i
        if i % j == 0
          bool = true
          break
        end
      end
      if bool == false
        arr.push(i)
      end
    end
    return arr
  end
end

object = Program.new
pp object.prime(30)

# OUTPUT : [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]