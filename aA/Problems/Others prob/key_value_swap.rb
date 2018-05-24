# Key-Value Swap
# ----------------------------------------
# Write a method, #key_value_swap, that accepts a hash as an argument and
# returns a new hash with all the key / value pairs swapped. Do not use Hash#invert.

def key_value_swap(hash)

end

puts "---------Key Value Swap----------"
puts key_value_swap({a: :b, c: :d, e: :f}) == {b: :a, d: :c, f: :e}
puts key_value_swap({1 => "string"}) == {"string" => 1}
puts key_value_swap({a: :a, 1 => 1}) == {a: :a, 1 => 1}
