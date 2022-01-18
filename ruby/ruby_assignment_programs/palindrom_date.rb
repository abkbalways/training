=begin

Q. The 2nd of February 2020 is a palindromic date in both dd/mm/yyyy and mm/dd/yyyy format
(02/02/2020). Given a date in dd/mm/yyyy format, return true if the date is palindromic in both date
formats, otherwise return false

=end

class Program
  def palindrom_date(dt)
    date1 = dt.to_s
    date2 = ''
    date1.tr!('/','')
    for i in 3.downto(0)
      date2 = date2<<date1[i]
    end
      date2 = date2<<date1[4,8]
    if date1 == date2
      return true
    else
      return false
    end
  end
end

object = Program.new
pp object.palindrom_date('30/03/2021')

# OUTPUT : true 