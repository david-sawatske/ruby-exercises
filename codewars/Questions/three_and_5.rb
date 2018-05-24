# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

# Note: If the number is a multiple of both 3 and 5, only count it once.


def three_and_5(number)
  
end

puts three_and_5(10) == 23






































def three_and_5(number)
  (3...number).select {|x| x % 3 == 0 || x % 5 == 0}.reduce(:+)
end



def three_and_5(number)
  sum = 0
  (3...number).select {|x| x % 3 == 0 || x % 5 == 0}.each {|x| sum += x}
  sum
end






def three_and_5(number)
  to_sum = []
  sum = 0

  for x in 1...number
    if x % 3 == 0 || x % 5 == 0
      to_sum << x
    end
  end

  to_sum.uniq.map {|x| sum += x}

  return sum
end
