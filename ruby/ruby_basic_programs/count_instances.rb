class Program
  def count_instance(str,instance)
  instance_arr = instance.split("").uniq
    count_words = []
    for i in 0...instance_arr.length
      if instance.count(instance_arr[i])>1
        count_words[i] = str.count(instance_arr[i]) / instance.count(instance_arr[i])
      else
        count_words[i] = str.count(instance_arr[i])
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
pp object.count_instance("cahhdshhadsfdwhcfannnnnnngeeteeggtiiiiitttt","changeit")

# OUTPUT : 