=begin

Q. Given the parameters day, month and year, return whether that date is a valid date.
is_valid_date(35, 2, 2020) ➞ false
# February doesn't have 35 days.

=end

class Program
  def is_valid_date(days,month,year)
    bool = false
    if (month == 1)||(month == 3)||(month == 5)||(month == 7)||(month == 8)||(month == 10)||(month == 12)
      if ((1..31) === days)
        bool = true  
      end
    end
    if (month == 4)||(month == 6)||(month == 9)||(month == 11)
      if ((1..30) === days)
        bool  = true
      end
    end
    if month == 2
      if year % 4 == 0
        if year % 100 == 0
          if year % 400 == 0
            if ((1..29) === days)
              bool = true
            end
          elsif ((1..28) === days)
            bool = true
          end
        elsif ((1..29) === days)
          bool = true
        end 
      end
    end
    return bool
  end
end

object = Program.new
pp object.is_valid_date(29,2,1700)
pp object.is_valid_date(31,4,1900)
pp object.is_valid_date(29,1,2000)

=begin

OUTPUT : 

false
false
true

=end