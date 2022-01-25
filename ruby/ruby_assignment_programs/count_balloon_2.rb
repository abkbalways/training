class Program
  def count_balloon(str)
    balloon = ['b','a','l','o','n']
    count_words = []
    for i in 0...balloon.length
      if count_words[i] == "/[lo]/"
        count_words[i] = (str.count(balloon[i])) / 2
      else
        count_words[i] = str.count(balloon[i]) 
      end
    end
    return count_words
    #return count_words.each {|element| element>=2}
  end
end

object = Program.new
pp object.count_balloon('baloon')