=begin

Q. A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all
non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include
letters and numbers. Given a string s, return true if it is a palindrome, or false otherwise

=end

class Program
  def valid_palindrom(str)
    str.downcase!
    str.tr!('^[/a-z1-9/]','')
    str2 = ''
    len = str.length-1
    for i in len.downto(0)
        str2 = str2 << str[i]
    end
    if str == str2
      return true
    else
      return false
    end
  end
end


object = Program.new
print object.valid_palindrom('A man, a plan, a canal: Panama'), ' '
print object.valid_palindrom('race a car')
puts

# OUTPUT : true false