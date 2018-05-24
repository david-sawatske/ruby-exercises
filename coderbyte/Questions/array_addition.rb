# array_addition(arr) take the array of numbers stored in arr and return the
# string true if any combination of numbers in the array can be added up to equal
# the largest number in the array, otherwise return the string false.

def array_addition(arr)
  for x in 2...arr.length do
    return true if arr.combination(x).any? { |comb| comb.reduce(&:+) == arr.sort.pop }
  end

  false
end

p array_addition([3, 5, -1, 8, 12]) == true
p array_addition([-2, -3, -4, -1, 100]) == false
p array_addition([2, 4, 6, 12, 92]) == false
