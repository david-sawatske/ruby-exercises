# takes in an array of integers and returns true if 
# any three consecutive elements sum to 7.

# Make sure your code correctly checks for edge cases 
# i.e. the first and last elements of the array).

# iterate through numbers adding index of i + 1 & + 2 (also do neg for edge cases), 
# return true if == 7, fail return false

def lucky_sevens?(numbers)
  
end

puts lucky_sevens?([2,1,5,1,0]) == true
puts lucky_sevens?([0,-2,1,8])  == true 
puts lucky_sevens?([7, 7, 7, 7]) == false
puts lucky_sevens?([3,4,3,4]) == false



















def lucky_sevens?(numbers)
  numbers.combination(3).any? {|three| three.reduce(&:+) == 7} 
end

def lucky_sevens?(numbers)

  i = 0 
  while i < numbers.count
    if numbers[i] + numbers[(i + 1)] + numbers[(i + 2)] == 7 || 
       numbers[i] + numbers[(i - 1)] + numbers[(i - 2)] == 7 
      return true
    else
    end
    
    i += 1
  end

false 
end




