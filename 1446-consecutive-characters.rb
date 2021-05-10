# @param {String} s
# @return {Integer}
def max_power(s)
  max = 1
  output = 1
  index = 1
  s_length = s.length
  while index <= s_length
    if s[index] == s[index - 1]
      max += 1
    else
      output = max if max > output
      if index + max > s_length
        return output
      end
      max = 1
    end
    index += 1
  end
  output
end