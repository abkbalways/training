=begin

Q. Create a function that takes the month and year (as integers) and returns the number of days in that
month.

=end

class Program
  def day(month,year)
    days = 0
    if (month == 1)||(month == 3)||(month == 5)||(month == 7)||(month == 8)||(month == 10)||(month == 12)
        days = 31
    end

    if (month == 4)||(month == 6)||(month == 9)||(month == 11)
        days =30
    end

    if month == 2
      if year % 4 == 0 
        if year % 100 == 0
          if year % 400 == 0
            days = 29
          else
            days = 28
          end
        else
          days = 29
        end
      else
        days = 28
      end 
    end

    if (month>12)||(year<0)
      days = "Wrong Year or month"
    end
    return days
  end
end

object = Program.new
pp object.day(2,1965)


# OUTPUT : 28