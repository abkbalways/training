=begin

Q. You are given two strings of the same length s and t. In one step you can choose any character of t and
replace it with another character. Return the minimum number of steps to make t an anagram of s. An
Anagram of a string is a string that contains the same characters with a different (or the same) ordering.

=end

class Program
  def anagram(s,t)
    count = 0
=begin
    for i in 0...str2.length
      if str2.count(str2[i]) > str1.count(str2[i])    # This will also run finely
        str2.sub!(str2[i],'1')
        count = count + 1
      end
    end
=end

    for i in 'a'..'z'
      if t.count(i)>s.count(i)
        count = count + t.count(i) - s.count(i)
      end
    end
    return count
  end
end
   
object = Program.new
print object.anagram('leetcode','practice'), ' '
print object.anagram('aba','bab'), ' '
print object.anagram('anagram','mangaar'), ' '
puts


# OUTPUT : 5 1 0 
