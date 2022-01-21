=begin

Q. Given a string text, you want to use the characters of text to form as many instances of the word "balloon"
as possible. You can use each character in text at most once. Return the maximum number of instances
that can be formed.
Example: loonballxballpoon
You can create only 2 balloon from example text, so return 2

=end


class Program
  def count_balloon(str)
    balloon = ['b','a','l','o','n']
    count_words = []
    for i in 0...balloon.length
      if balloon[i] == 'o' || balloon[i] == 'l'
        count_words[i] = str.count(balloon[i]) / 2
      else
        count_words[i] = str.count(balloon[i])
      end
    end
    if count_words.include?(0)
      return 0
    else
      return count_words.min
    end
  end
end

object = Program.new
pp object.count_balloon("balllllllllloooooooooon")

# OUTPUT : 1