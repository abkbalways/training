=begin

Q. Write a function which takes an integer (positive) and return an array of Fibonacci number of each index in
index position till given number.

=end

class Program 
  def fabonacci(num)
    arr = []
    arr[0] = 0
    num1 = 0
    num2 = 1
    for i in 0...num
      arr.push(num2)
      num1, num2 = num2, num1 + num2
    end
  return arr
  end
end

object = Program.new
pp object.fabonacci(10)

# OUTPUT : [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]