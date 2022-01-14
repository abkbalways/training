=begin

Q. A pangram is a sentence where every letter of the English alphabet appears at least once.
Given a string sentence containing only lowercase English letters, return true if sentence is a pangram, or
false otherwise

=end

class Program
  def pangram(str)
    

    for i in'a'..'z'
      bool = false
      for j in 0...str.length
        if i == str[j]
          bool = true
          break
        end
      end
      if bool == false
        break
      end
    end
    return bool
  end
end

object = Program.new
print object.pangram('the quick brown fox jumps over the lazy dog'), ' '
print object.pangram('the quick brown fox jumps over the lazy dol'), ' '
puts

# OUTPUT : true false 