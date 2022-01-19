require "date"

class Program
  def date_convert(date)
    case
    when date.include?(",")
      date1 = Date.parse(date)
    when date.include?("/")
      date1 = Date.strptime(date, "%m/%d/%Y")
    when date.include?("-")
      date1 = Date.strptime(date, "%m-%d-%Y")
    else
      date1 = Date.strptime(date, "%m.%d.%Y")
    end
    return [date1.month,date1.day,date1.year]
    
  end
end

object = Program.new
pp object.date_convert("12.19.1999")
pp object.date_convert('December 19, 1999')
