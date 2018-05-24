# You are going to be given an array of integers. Your job is to take that array 
# and find an index N where the sum of the integers to the left of N is equal to the 
# sum of the integers to the right of N. 
# If there is no index that would make this happen, return -1.


# Let's say you are given the array {1,2,3,4,3,2,1}:
# Your function will return the index 3, because at the 3rd position of the array,
# the sum of left side of the index ({1,2,3}) and the sum of the right side of the 
# index ({3,2,1}) both equal 6.

def find_even_index(arr)

end


puts find_even_index([2,2,3,4,3,2,2]) == 3
puts find_even_index([1,1,1,1,1,9,5]) == 5
puts find_even_index([2,2,2,1,1,1,1]) == 2




























def find_even_index(arr)
  arr.length.times do |idx|
    if arr[0...idx].inject(0, :+) == arr[(idx + 1)..-1].inject(0, :+)
      return idx
    end
  end
  
  return -1
end



def find_even_index(arr)
  left = 0
  right = 0

  arr.each_with_index do |x, i1|  
    left = 0
    right = 0
   
    for i2 in 0...i1
      left += arr[i2]
    end 

    for i3 in i1 + 1...arr.length
      right += arr[i3]
    end

    return i1 if right == left 
  end
end




