=begin

Q. Create a function that takes an array and returns a new array containing only prime numbers.

=end

class Program
  def primes(a)
    a2 = Array.new
    for i in 0...a.size
      for j in 2...a[i]
        if a[i] %  j == 0 
          a2.push(a[i])
          break
        end
      end
    end
    #return a2
    #return a[0]
    return  a - a2 - [1]
  end
end
object = Program.new
b = [10007, 1009, 1007, 27, 147, 1, 77, 1001, 70]
pp object.primes(b)

# OUTPUT : [10007, 1009]