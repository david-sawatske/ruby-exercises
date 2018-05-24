

# Using the Ruby language, have the function arith_geo(arr) take the array of arrays stored
# in arr and return the string "Arithmetic" if the sequence follows an arithmetic pattern or
# return "Geometric" if it follows a geometric pattern. If the sequence doesn't follow either
# pattern return -1. An arithmetic sequence is one where the difference between each of the
#  arrays is consistent, where as in a geometric sequence, each term after the first is
# multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and
# Geometric example: [2, 6, 18, 54]. Negative arrays may be entered as parameters,
# 0 will not be entered, and no array will contain all the same elements.

def arith_geo(arr)
  if arr.each_with_index.all? {|x, i| !arr[i+2].nil? && arr[i] - arr[i+1] == arr[i+1] - arr[i+2]}
    'Arithmetic'
  elsif arr.each_with_index.all? {|x, i| !arr[i+2].nil? && arr[i] / arr[i+1] == arr[i+1] / arr[i+2]}
    'Geometric'
  else
    -1
  end
end

puts arith_geo([5, 10, 15]) == 'Arithmetic'
puts arith_geo([3, 9, 27, 81]) == 'Geometric'
puts arith_geo([2, 4, 16, 24]) == -1
puts arith_geo([1, 2, 3, 100]) == -1
puts arith_geo([1, 2, 3, 4, 5, 10, 20]) == -1
