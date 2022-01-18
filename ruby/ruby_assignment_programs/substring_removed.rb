=begin

Q. Given two strings s and part, perform the following operation on s until all occurrences of the substring
part are removed:
Find the leftmost occurrence of the substring part and remove it from s.Return s after removing all
occurrences of part.

=end

class Program
  def substring_removed(str,part)
    len = part.length 
    for i in 0...str.length - 1
      bool = false
      for j in 0...str.length
        if str.slice(j...j + len) == part
          str.slice!(j...j + len)
          bool = true
          break
        end
      end
      if bool == false
          break
      end
    end
    if str != part
      return str
    else
      return ""
    end
  end
end

object = Program.new
str = "aabababa"
part = "aba"
pp object.substring_removed(str,part)


# OUTPUT : "ba"
    