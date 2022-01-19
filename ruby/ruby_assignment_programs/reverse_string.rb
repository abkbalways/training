=begin

Q. Write a function to return reverse of a string using recursion.

=end

class Program
  def revers(str)
    len =str.length
    if(str=="")
      return str
    end
    --len
    return revers(str[1..len])+str.chr
  end
end

p=Program.new;
puts p.revers('Rahul Dixit')

# OUTPUT : tixiD luhaR
