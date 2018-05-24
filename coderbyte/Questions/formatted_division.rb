# Using the Ruby language, have the function FormattedDivision(num1,num2) take both parameters being passed,
# divide num1 by num2, and return the result as a string with properly formatted commas and 4 significant digits
# after the decimal place. For example: if num1 is 123456789 and num2 is 10000 the output should be "12,345.6789".
# The output must contain a number in the one's place even if it is a zero.



def formatted_division(num1, num2)

end

p formatted_division(123_456_789, 10_000) == "12,345.6789"
p formatted_division(503_394_930, 43) == "11,706,858.8372"
p formatted_division(101_077_282, 21_123) == "4,785.1764"
