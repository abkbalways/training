=begin

Q. Write a function which takes an integer (positive) and return an array of factorials of each index in index
position till given number.

=end



class Program
  def fact(num)
    if (num >= 1)
    a = [1]
    end
    for i in 1..num
      fact = 1
      for j in 1..i
        fact = fact * j
        j = j - 1
      end
      a[i] = fact
    end
  return a
  end
end

p = Program.new
pp p.fact(7)


# OUTPUT : [1, 1, 2, 6, 24, 120, 720, 5040]