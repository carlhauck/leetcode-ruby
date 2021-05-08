# @param {String} s
# @return {String}
def longest_nice_substring(s)
  return '' if s.length < 2

  uniqs = s.chars.uniq

  s.each_char.with_index do |c, i|
    next if uniqs.include?(c.upcase) && uniqs.include?(c.downcase)

    left = longest_nice_substring(s[0...i])
    right = longest_nice_substring(s[i+1..])

    if left.length >= right.length
      return left
    else
      return right
    end
  end
end