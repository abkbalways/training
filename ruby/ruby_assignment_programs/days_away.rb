=begin

Q. Given a date, return how many days date is away from 2023 (end date not included). date will be in
mm/dd/yyyy format.

=end


require 'date'
class Program
  def days_away(date2)
    date1 = Date.strptime(date2,'%m/%d/%Y')
    arr = [[0,0],[1,31],[2,28],[3,31],[4,30],[5,31],[6,30],[7,31],[8,31],[9,30],[10,31],[11,30],[12,31]]
    sum = 1
    
    for i in 12.downto(1)
      if i == date1.month
        sum = sum + (arr[i][1] - date1.day.to_i) 
        break
      end
      if i != date1.month
        sum = sum + arr[i][1]  
      end
    end
    return sum
    
  end
end

object = Program.new
pp object.days_away("12/12/2022")

# OUTPUT : 20

