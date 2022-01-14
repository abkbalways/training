=begin

Q. Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result
must be unique and you may return the result in any order.

=end

class Program
  def intersec(nums1,nums2)
    nums3 = []
    for i in 0...nums1.length
      for j in 0...nums2.length
        if nums1[i] == nums2[j]
          nums3.push(nums1[i])
          break
        end
      end
    end
    return nums3.uniq
  end 
end

object = Program.new
arr1 = [12, 15, 85, 56, 89, 65, 65]
arr2 = [12, 85, 54, 65]
pp object.intersec(arr1 , arr2)   


# OUTPUT : [12, 85, 65]