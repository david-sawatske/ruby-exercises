# estab var for count, squar numbers 1 to max and +1 count if less than max, return count  

def square_nums(max)

end


puts square_nums(5) == 2
puts square_nums(10) == 3
puts square_nums(25) == 4



















def square_nums(max)
(1..max / 2).select {|x| x ** 2 < max}.count
end

def square_nums(max)
  count = 0

  for x in 1..max
    if x ** 2 < max
      count += 1
    end
  end

return count
end
