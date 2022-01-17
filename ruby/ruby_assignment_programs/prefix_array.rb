=begin

Q. Given a string s and an array of strings words, determine whether s is a prefix string of words.
A string s is a prefix string of words if s can be made by concatenating the first k strings in words for some
positive k no larger than words.length. Return true if s is a prefix string of words, or false otherwise.

=end

class Program
  def prefix(str,arr)
    str.tr!(' ','')
    str2 = '' 
    for i in 0...arr.length
      if(str.length<=str2.length)
        break
      else
        str2 = str2<<arr[i]
      end
    end
    if str2 == str
      return true
    else
      return false
    end      
  end
end

object = Program.new
str = "my name is ajay agrawal"
arr = ["a","my","name","is","ajay","agrawal","i","am","from","mathura"]
arr2 = ["my","name","is","ajay","agrawal","i","am","from","mathura"]
print object.prefix(str,arr), ' '
print object.prefix(str,arr2)
puts

# OUTPUT : false true