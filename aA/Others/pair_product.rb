# Given an array of numbers and a target product, return whether any pair of
# elements in the array multiplied together equals that product.
#
# You cannot multiply an element by itself.  An element on its own is not
# a product.
#
# pair_product?([3, 1, 5], 15) => true

def pair_product?(arr, target)
  arr.combination(2).any? { |pair| pair.reduce(&:*) == target }
end

puts '-------Pair Product-------'
puts pair_product?([5, 10, 15, 20, 25, 30], 75) == true
puts pair_product?([2, 4, 8, 16], 128) == true
puts pair_product?([10, 20], 10) == false
puts pair_product?([1, 2], 4) == false
puts pair_product?([], 1) == false
