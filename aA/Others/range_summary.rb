# Given a sorted arr of integers without duplicates, return the start and end
# integers of number ranges found in the arr. A number range is considered valid
# when all numbers from start to end are contiguous and only increment by 1.
# Assume all numbers are included as part of a range (no stand alone elements).

def range_summary(arr)
  start = 0
  ranges = []

  (1...arr.length).each do |i|
    if arr[i + 1] != arr[i] + 1
      ranges << [start, arr[i]]
      start = arr[i + 1]
    end
  end

  ranges
end



puts "-------Range Summary-------"

p range_summary([0, 1]) #== [[0, 1]]
p range_summary([0, 1, 4, 5]) #== [[0, 1], [4, 5]]
p range_summary([0, 1, 3, 4, 6, 7]) #== [[0, 1], [3, 4], [6, 7]]
p range_summary([0, 1, 2, 3, 4, 5, 7, 8, 9, 15, 16]) #== [[0, 5], [7, 9], [15, 1
