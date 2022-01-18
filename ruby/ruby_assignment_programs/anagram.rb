=begin

Q. Given two strings s and t, return true if t is an anagram of s, and false otherwise.

=end

class Program
  def anagram(s,t)
    bool=false
    
    for i in 0...s.length
      for j in 0...t.length
        if(s[i]==t[j] && s.count(s[i]) == t.count(t[j]))
          bool=true
          break
        end
        
        bool=false
      end

      if(bool==false)
        break
      end
    end
    if t.length != s.length
      bool = false
    end
    
    return bool
  end
end

p = Program.new
print p.anagram('noda h g','doanh g '),' '
print p.anagram('noda h g','doanh gg')
puts


# OUTPUT : true false