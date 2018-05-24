# Write a function that finds whether any two elements in the array sum to 0. If it does, return true; else, return false.
def two_sum_to_zero?(array)
  array.combination(2).any? {|pair| pair.reduce(&:+) == 0}
end

# Tests
puts "\nTwo sum to zero?:\n" + "*" * 15 + "\n"
puts two_sum_to_zero?([4, 2, 6]) == false
puts two_sum_to_zero?([-2, 5, 12, -3, 2]) == true
puts two_sum_to_zero?([0, 5]) == false