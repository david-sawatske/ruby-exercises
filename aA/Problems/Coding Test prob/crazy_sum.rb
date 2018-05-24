
# estab sum variable, iterate through numbers with while loop, add to sum the number in the
# array mult is index, return the sum after iteration is complete

def crazy_sum(numbers)

end


puts crazy_sum([2]) == 0 # (2*0)
puts crazy_sum([2, 3]) == 3 # (2*0) + (3*1)
puts crazy_sum([2, 3, 5]) == 13 # (2*0) + (3*1) + (5*2)
puts crazy_sum([2, 3, 5, 2]) == 19 # (2*0) + (3*1) + (5*2) + (2*3)
















def crazy_sum(numbers)
  numbers.map.with_index {|x, i| x * i}.reduce(&:+)
end


 def crazy_sum(numbers)
  sum = 0

  i = 0
  while i < numbers.count
    sum += (numbers[i] * i)
    i += 1
  end

return sum
end
