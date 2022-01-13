=begin

Q. Given a string s, reverse only all the vowels in the string and return it ,the vowels are 'a', 'e', 'i', 'o', 
and 'u', and they can appear in both cases.

=end



class Program
  def revers(str)
    str2 = ''

    for i in 0...str.length
      if str[i].match?(/[aeiouAEIOU]/)
        str2<<str[i]
      end
    end

    j = (str2.length)-1 

    for i in 0...str.length
      if str[i].match?(/[aeiouAEIOU]/)
        str[i] = str2[j]
        j = j-1 
      end
    end

    return str
  end
end

p = Program.new

puts p.revers("Ajay")


# OUTPUT : ajAy