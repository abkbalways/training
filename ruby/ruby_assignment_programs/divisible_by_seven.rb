=begin

Q. Given an n-digit large number in form of string, check whether it is divisible by 7 or not. Print 1 if divisible
by 7, otherwise 0.

=end

class Program
  def divisible_seven(str)
    num = str.to_i
    if(num % 7 == 0)
      return 1
    else
      return 0
    end
  end
end

object = Program.new
print object.divisible_seven("111909"), ' '
print object.divisible_seven("145896345")
puts

# OUTPUT : 1 1