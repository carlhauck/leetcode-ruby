# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []
      pairs = {
        "(" => ")",
        "[" => "]",
        "{" => "}"
        }
      chars = s.chars
      chars.each do |c|
        if pairs.keys.include? (c)
          stack.push(c)
        else
          if c == pairs[stack[-1]]
            stack.pop()
          else
            return false
          end
        end
      end

      stack == [] ? true : false
end