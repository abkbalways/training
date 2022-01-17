=begin

Q. Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -
1.

=end

class Program
  def non_repeating(str)
    bool = false
    for i in 0...str.length
      count = 0
      for j in 0...str.length
        if(str[i]==str[j])
          count = count + 1
        end
        if count>1
          bool = false
          break
        end
      end
      if(count==1)
        bool = true
        return i 
        break
      end
    end
    if bool == false
      return -1
    end
  end
end

object = Program.new
print object.non_repeating("aajay"), ' '
print object.non_repeating("aabbccdd"), ' '
puts


# OUTPUT : 2 -1 

    
          