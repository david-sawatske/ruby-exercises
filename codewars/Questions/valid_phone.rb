# Write a function that accepts a string, and returns true if it is in the form of a phone number. 

# Assume that any integer from 0-9 in any of the spots will produce a valid phone number.

# Only worry about the following format:(123) 456-7890 (don't forget the space after the close parentheses) 


def valid_phone_number(number)

end






puts valid_phone_number("(123) 456-7890")  == true
puts valid_phone_number("(1111)555 2345")  == false
puts valid_phone_number("(098) 123 4567")  == false
































def valid_phone_number(number)
  number[0] == "(" && number[4] == ")" && number[5] == " " && number[9] == "-" && number.length == 14  
end



def valid_phone_number(phone_number)
    if phone_number.length != 14 || phone_number[0] != "(" || phone_number[4] != ")" || phone_number[9] != "-"
      return false
    end

  true
end
