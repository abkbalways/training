=begin

Q. Write a function which takes square matrix mat, return the sum of the matrix diagonals.
Only include the sum of all the elements on the primary diagonal and all the elements on the secondary
diagonal that are not part of the primary diagonal.

=end

class Program
  def diagonals_sum(mat)
    sum = 0
    for i in 0...mat.length
      for j in 0...mat.length
        if i == j || i + j == mat.length - 1
          sum = sum + mat[i][j]
        end
      end
    end
    return sum
  end
end

object = Program.new
mat1 = [[1, 2, 3], [5, 6, 7] , [9, 10, 11]]
mat2 = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
print object.diagonals_sum(mat1),'  '
print object.diagonals_sum(mat2)
puts


# OUTPUT = 30  68