=begin

Q. A distinct string is a string that is present only once in an array. Given an array of strings arr, and an integer
k, return the kth distinct string present in arr. If there are fewer than k distinct strings, return an empty
string "".
Note that the strings are considered in the order in which they appear in the array.

=end

class Program
  def distinct(str,n)
    darray = []
    for i in 0...str.length
      count = 0
      for j in 0...str.length
        if str[i] == str[j]
          count = count+1
        end
      end
      if count == 1
        darray.push(str[i])
      end
    end
    return darray[n-1] || ""
  end
end

object = Program.new
arr = ['ram', 'shyam', 'danish', 'jatin', 'ram']
k = 5
puts object.distinct(arr,3)
puts object.distinct(arr,k)
puts object.distinct(arr,2)


=begin

OUTPUT : 

jatin

danish

=end