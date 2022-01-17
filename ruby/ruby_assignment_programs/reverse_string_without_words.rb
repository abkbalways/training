=begin

Q. Given a String S, reverse the string without reversing its individual words. Words are separated by dots.

=end

class Program
  def reverse_string(str)
    str3 = ''
    str2 = str.split('.').to_a
    for i in 0..str2.length-1
      len = str2[i].length-1
      for j in len.downto(0)
        str3<<str2[i][j]
      end
      if (i != str2.length-1)
        str3<<'.'
      end
    end 
    return str3  
  end
end

object = Program.new
pp object.reverse_string("My.Name.is.Ajay.Agrawal")

# OUTPUT : "yM.emaN.si.yajA.lawargA"
  
      