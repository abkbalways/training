=begin

Q. Write a function that, given a date (in the format MM/DD/YYYY), returns the day of the week as a string.
Each day name must be one of the following strings: "Sunday", "Monday", "Tuesday", "Wednesday",
"Thursday", "Friday", or "Saturday".
To illustrate, the day of the week for "12/07/2016" is "Wednesday".

=end

require 'date'
class Program
  def day_of_week(date1)
    date1.to_s
    date1 = Date.strptime(date1,'%d/%m/%Y')
    return date1.strftime('%A')
  end
end

object = Program.new
pp object.day_of_week('12/07/2018')


# OUTPUT : "Thursday"