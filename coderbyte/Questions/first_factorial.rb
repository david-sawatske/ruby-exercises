# Using the Ruby language, have the function FirstFactorial(num) take the num
# parameter being passed and return the factorial of it
# (e.g. if num = 4, return (4 * 3 * 2 * 1)).
#
# For the test cases, the range will be between 1 and 18 and the input will always
# be an integer. s

def first_factorial(num)
  (1..num).reduce(&:*)
end

p first_factorial(4) == 24
p first_factorial(8) == 40_320
