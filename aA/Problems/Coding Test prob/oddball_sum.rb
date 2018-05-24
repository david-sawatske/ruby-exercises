# Write a function oddball_sum(numbers), which takes in an array 
# of integers and returns the sum of all the odd elements.

def oddball_sum(numbers)

end

puts oddball_sum([1,2,3,4,5]) == 9
puts oddball_sum([0,6,4,4]) == 0
puts oddball_sum([1,2,1]) == 2




















def oddball_sum(numbers)
  numbers.select {|x| x.odd?}.reduce(0, &:+)
end





def oddball_sum(numbers)
  odd = []

  numbers.each do |x|
    if x % 2 != 0
      odd << x
    end
  end

  sum = 0
  odd.each do |y|
    sum += y
  end

return sum
end
