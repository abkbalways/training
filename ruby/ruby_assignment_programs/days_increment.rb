=begin

Q. If today was Monday, in two days, it would be Wednesday.
Create a function that takes in an array of days as input and the number of days to increment by. Return an
array of days after n number of days has passed.
after_n_days(["Thursday", "Monday"], 4) ➞ ["Monday", "Friday"]

=end

class Program
    def days_increment(day_1,num)
      hash1 = {"Sunday":"Monday","Monday":"Tuesday","Tuesday":"Wednesday","Wednesday":"Thursday","Thursday":"Friday","Friday":"Saturday","Saturday":"Sunday"}
      days = []
      for i in 0...day_1.length

        day1 = day_1[i]
        for i in 0...num
            day1 = hash1[day1.to_sym]
        end
        days.push(day1)
      end
      
      return days
  
    end
  end
  
  object = Program.new
  day_1 = ["Thursday", "Monday"]
  pp object.days_increment(day_1,4)
  
  # OUTPUT : ["Monday", "Friday"]