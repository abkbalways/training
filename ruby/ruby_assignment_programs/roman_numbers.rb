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
  def romans(roman_number)
    roman = {I:1,V:5,X:10,L:50,C:100,D:500,M:1000}
    return roman.values_at(roman_number.to_sym)
  end
end

obj = Program.new
puts obj.romans(:V)


# OUTPUT : 5