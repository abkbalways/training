=begin

Q. Given the month and year as numbers, return whether that month contains a Friday 13th.

=end

require 'date'
class Program
  def friday(month,year)
    dt = Date.new(year,month,13)
    if dt.strftime('%A')=='Friday'
      return true
    else 
      return false
    end
  end
end

object = Program.new
print object.friday(6,2022), ' '
print object.friday(5,2022)
puts

# OUTPUT : false true