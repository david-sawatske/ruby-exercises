# stock_picker(arr) take the array of numbers stored in arr which will
# contain integers that represent the amount in dollars that a single stock
# is worth, and return the maximum profit that could have been made by buying
# stock on day x and selling stock on day y where y > x.
# For example: if arr is [44, 30, 24, 32, 35, 30, 40, 38, 15] then your
# program should return 16 because at index 2 the stock was worth $24 and
# at index 6 the stock was then worth $40, so if you bought the stock at 24
# and sold it at 40, you would have made a profit of $16, which is the
# maximum profit that could have been made with this list of stock prices.

def stock_picker(arr)

end


p stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) == 16
p stock_picker([14,20,4,12,5,11]) == 8




























# def stock_picker(arr)
#   profit = 0

#   arr.each_with_index do |x, i|
#     while i < arr.count
#       if arr[i] - x > profit
#         profit = arr[i] - x
#       end

#       i += 1
#     end
#   end

#   return profit
# end
