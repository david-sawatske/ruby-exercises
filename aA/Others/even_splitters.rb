# Even Splitters
# ------------------------------------------------------------------------------
# Return an array of characters on which we can split an input string to produce
# substrings of the same length.

# Don't count empty strings after the split.

# Here's an example for "banana":
#
# "banana".split("a") # => ["b", "n", "n"] (all elements same length)
# "banana".split("b") # => ["", anana"] (all elements same length - there's only
# one element "anana" because the empty string doesn't count)
# "banana".split("n") # => ["ba", "a", "a"] (all elements NOT same length)
#
# result: ["b", "a"]
#
# ------------------------------------------------------------------------------

def even_splitters(str)
  str.chars.uniq.map do |e|
    str.split(e).reject(&:empty?).map(&:length).uniq.count <= 1 ? e : nil
  end.compact
end

puts '-----Even Splitters----'
puts even_splitters('') == []
puts even_splitters('t') == ['t']
puts even_splitters('jk') == %w(j k)
puts even_splitters('xoxo') == %w(x o)
puts even_splitters('banana') == %w(b a)
puts even_splitters('mishmash') == %w(m h)
puts even_splitters('manner') == %w(m n r)
