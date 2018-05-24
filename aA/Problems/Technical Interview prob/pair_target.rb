#### Pair Sum ####
# Write a function that accepts an array of numbers and a target.
# Find the pairs of indices whose elements sum to the target.
# No pair should appear twice in the result.

def pair_target(array, target)


end

p pair_target([1, 3, 0, 2, 1], 3) # == [[0, 3], [1, 2], [3, 4]]
p pair_target([2, 4, 8], 10) # == [[0, 2]]

# Constraints:
# * Do not use looping constructs other than while loops
# * Do not call any methods on the input array except for [], []=, and length.
#
# Example 1:
# target = 10
# ary = [2, 4, 8]
# pairs = pair_sum(ary, target)
# pairs # => [[0, 2]]
#
# Example 2:
# target = 3
# ary = [1, 3, 0, 2, 1]
# pairs = pair_sum(ary, target)
# pairs # => [[0, 3], [1, 2], [3, 4]]
