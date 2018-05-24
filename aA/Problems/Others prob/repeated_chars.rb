# Return an array of all the characters that appear multiple times consecutively.
# repeated_chars("mississippi") => ["s, s, p"]

def repeated_chars(word)
  
end

puts '-------Repeated Chars-------'
puts repeated_chars('cat') == []
puts repeated_chars('caat') == ['a']
puts repeated_chars('applle') == %w(p l)
puts repeated_chars('mississippi') == %w(s s p)
puts repeated_chars('caataapulllllt') == %w(a a l)
