# You are given a list/array which contains only integers (positive and negative). Your job is to sum only the numbers that are the
# same and consecutive. The result should be one list.

# Extra credit if you solve it in one line. You can asume there is never an empty list/array and there will always be an integer.

# Same meaning: 1 == 1

def sum_consecutives(array)

end

p sum_consecutives([1,4,4,4,0,4,3,3,1,1]) == [1,12,0,4,6,2]
p sum_consecutives([1,1,7,7,3]) == [2,14,3]
puts sum_consecutives([-5,-5,7,7,12,0]) == [-10,14,12,0]
