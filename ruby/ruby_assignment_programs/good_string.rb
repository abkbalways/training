=begin

Q. Given a string s, return true if s is a good string, or false otherwise. A string s is good if all the characters that
appear in s have the same number of occurrences (i.e., the same frequency).

=end


class Program
  def good(str)
    count = 1
    for i in 1...str.length
      if str[0] == str[i]
        count = count + 1
      end
    end
    bool = true
    for i in 1...str.length
      count2 = 0
      for j in 0...str.length
        if str[i] == str[j]
          count2 = count2 + 1
        end
      end
      if(count2 != count)
        bool = false
        break
      end
    end
    return bool
  end
end
   
object = Program.new
print object.good('harioom'), ' '
print object.good('rasars')
puts


# OUTPUT : false true
