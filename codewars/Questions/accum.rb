# See tests

def accum(string)
  
end



puts accum("RqaEzty") == "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
puts accum("abcd") == "A-Bb-Ccc-Dddd"
puts accum("cwAt") == "C-Ww-Aaa-Tttt"













































def accum(s)
  s.split("").each_with_index.map {|x, i| x.upcase + x.downcase * i}.join("-")
end


def accum(s)
 ret = []

  s.split("").each_with_index do |x, i|
    t = i + 1
    string = ''
    t.times {string += x.downcase}
    ret << string
  end

  ret.map {|x| x[0].upcase + x[1..-1]}.join("-")
end

