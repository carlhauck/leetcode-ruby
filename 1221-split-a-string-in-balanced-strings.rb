# @param {String} s
# @return {Integer}
def balanced_string_split(s)
  stack = ""
  output = 0
  s.each_char {|c|
    if stack.empty?
      stack << c
    elsif c != stack[-1]
      stack.chop!
    else
      stack << c
    end
    output += 1 if stack == ""
  }
  output
end