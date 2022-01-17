=begin

Q. Write a function which takes year and returns how many Saturday 14ths there are in a given year.

=end

require 'date'
class Program
  def saturday_fourteenth(year)
    count = 0
    for i in 1..12
      dt = Date.new(year,i,14)
      if dt.strftime("%A") == "Saturday"
        count = count + 1
      end
    end
    return count
  end
end

object = Program.new
print object.saturday_fourteenth(2017), " "
print object.saturday_fourteenth(2025)
puts

# OUTPUT : 2 1