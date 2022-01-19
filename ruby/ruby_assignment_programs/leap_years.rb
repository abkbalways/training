=begin

Q. Given a range of years as a string, return the number of leap years there are within the range (inclusive).

=end

class Program 
  def leap(years)
    count = 0
    year1 = years[0..4].to_i
    year2 = years[5..8].to_i
    while(year1<year2+1)
      if year1 % 4 == 0
        if year1 % 100 == 0
          if year1 % 400 == 0
            count = count + 1
          end
        else
          count = count + 1
        end
      end
      year1 = year1 + 1 
    end
    return count
  end
end

object = Program.new
pp object.leap("1980-1984")

# OUTPUT : 2
