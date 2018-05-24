#### Pascal's Triangle ####
# This is an example of Pascal's Triangle:
#
#  depth
#    0   |      1
#    1   |     1 1
#    2   |    1 2 1
#    3   |   1 3 3 1
#    4   |  1 4 6 4 1
#
#
# Pascal's Triangle is a mathematical construct that follows a simple
# rule: each number in the triangle is the sum of the two numbers
# directly above-and-to-the-left and above-and-to-the-right of it.
#
# For example, to find the next row after [1,2,1]:
#
#         1       2       1
#
#     1       3       3       1
#     |       |       |       |
#  (0 + 1) (1 + 2) (2 + 1) (1 + 0)
#
#
# Write a function that will return Pascal's Triangle at the given
# depth. The triangle should be represented as an array of rows.
#
# pascals_triangle(0) => [[1]]
# pascals_triangle(2) => [[1], [1,1], [1,2,1]]
# pascals_triangle(4) => [[1], [1,1], [1,2,1], [1,3,3,1], [1,4,6,4,1]]


def pascals_triangle(num)
    triangle = [[1]]

    until triangle.count == num + 1    # added until loop to complete method
      triangle << next_row(triangle.last)
    end

    triangle
end

def next_row(ary)  #1 2 1
    row = Array.new(ary.length + 1, 1) # specify setting up new array with 1
    # row[0] = 1                       # to eliminate need to set at idx 0 & -1
    # row[-1] = 1

    i = 1
    while i < ary.length
      row[i] = ary[i] + ary[i - 1]
        i += 1
    end

    row
end

p pascals_triangle(6) == [[1], [1,1], [1,2,1], [1,3,3,1], [1,4,6,4,1], [1,5,10,10,5,1], [1,6,15,20,15,6,1]]
