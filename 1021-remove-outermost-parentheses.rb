# @param {String} s
# @return {String}
def remove_outer_parentheses(s)
  stack = []
  delete_these = []
  index = 0
  while index < s.length
    if s[index] == ")"
      if stack.length == 1 && stack.last == "("
        stack.pop
        delete_these << index
      else
        stack.pop
      end
    elsif stack.length == 0
      stack << s[index]
      delete_these << index
    elsif s[index] == "("
      stack << s[index]
    end
    index += 1
  end
    delete_these.reverse.each do |idx|
    s.slice!(idx)
  end
  s
end