# Largest Odd Factors
# ------------------------------------------------------------------------------
# Return an array of the largest odd factors NOT including the number itsself

def largest_odd_factors(nums)
  nums.map { |num| (1...num).select { |x| num % x == 0 && x.odd? }.max }
end

puts '-------Largest Odd Factor-------'
puts largest_odd_factors([]) == []
puts largest_odd_factors([5]) == [1]
puts largest_odd_factors([8]) == [1]
puts largest_odd_factors([26, 27, 28, 29]) == [13, 9, 7, 1]
puts largest_odd_factors([10, 20, 30]) == [5, 5, 15]

def largest_odd_factors(nums)
  nums.map { |num| (num - 1).downto(1).find { |x| num % x == 0 && x.odd? } } # a reverse range
end
