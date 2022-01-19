=begin

Q. Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

Symbol   Value
I          1
V          5
X         10
L         50
C        100
D        500
M       1000

Write a function which takes roman number and return integer corresponding to that roman number.

=end

class Program
  def romans(roman)
    num = 0
    romans = {I:1,V:5,X:10,L:50,C:100,D:500,M:1000}
    for i in 0...roman.length
      if roman[i+1] != nil && (romans.values_at(roman[i].to_sym).join.to_i)<(romans.values_at(roman[i+1].to_sym).join.to_i)
        num = num - romans.values_at(roman[i].to_sym).join.to_i
      else
        num = num + (romans.values_at(roman[i].to_sym)).join.to_i
      end
    end
    return num
  end
end

object = Program.new
print object.romans(:MCMXCIV), ' '
pp object.romans(:IV)

# OUTPUT : 1994 4



# OUTPUT : 5