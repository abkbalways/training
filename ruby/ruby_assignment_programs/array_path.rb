=begin

Q. You are given the array paths, where paths[i] = [cityAi, cityBi] means there exists a direct path going from
cityAi to cityBi. Return the destination city, that is, the city without any path outgoing to another city.
It is guaranteed that the graph of paths forms a line without any loop, therefore, there will be exactly one
destination city.
Input: paths = [["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]]
Output: "Sao Paulo"
Explanation: Starting at "London" city you will reach "Sao Paulo" city which is the destination city. Your trip
consist of: "London" -> "New York" -> "Lima" -> "Sao Paulo"

=end

class Program
  def paths(arr)

    for i in 0...arr.length
      bool = false
      for j in 0...arr.length
        if arr[i][1] == arr[j][0]
          bool = true
          break
        end
      end
      if (bool == false)
        return arr[i][1]
        break
      end 
    end
  end
end

object = Program.new
arr = [["DELHI","PUNE"],["MUMBAI","BENGLURU"],["PUNE","MUMBAI"]]
pp object.paths(arr)
     

# OUTPUT : "BENGLURU"