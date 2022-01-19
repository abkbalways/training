=begin

Q. reate a function that takes time1 and time2 and return how many hours and minutes have passed
between the two times.

=end

class Program
  def time_passed(time1,time2)
    hours = time2[0,2].to_i - time1[0,2].to_i
    mins = time2[3,4].to_i - time1[3,4].to_i
    time3 = "#{hours}:#{mins}"
    
    return time3
  end
end

object = Program.new
pp object.time_passed('12:00','18:25')


# OUTPUT : "6:25"