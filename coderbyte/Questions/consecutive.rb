 # Have the function Consecutive(arr) take the array of integers stored in arr and return the minimum
 # number of integers needed to make the contents of arr consecutive from the lowest number to the
 # highest number. For example: If arr contains [4, 8, 6] then the output should be 2 because two
 # numbers need to be added to the array (5 and 7) to make it a consecutive array of numbers from 4 to 8.
 # Negative numbers may be entered as parameters and no array will have less than 2 elements.


def consecutive(arr)

end

puts consecutive([5,7]) == 1
puts consecutive([-2,10,4]) == 10




































# def Consecutive(arr)
#   sorted = arr.sort
#   result = 0

#   i = 0
#   while i < sorted.count && sorted[i + 1] != nil
#     result += sorted[i + 1] - sorted[i] - 1

#     i += 1
#   end


# return result
# end


# def Consecutive(arr)
#   sorted = arr.sort
#   count = 0

#   for x in sorted[0]..sorted[-1]
#     if sorted.include?(x)
#       next
#     else
#       count += 1
#     end
#   end

#   return
# end
