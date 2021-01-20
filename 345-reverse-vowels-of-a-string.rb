# @param {String} s
# @return {String}
def reverse_vowels(s)
  vowels = s.scan(/[aeiou]/i).reverse
  s.each_char.with_index {|c, idx| s[idx] = vowels.shift if c.match?(/[aeiou]/i) }
end