# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  strip = s.gsub(/[^a-zA-Z0-9]/, '').downcase
  return true if strip.length <= 1
  s1 = strip[0..(strip.length / 2).floor]
  s2 = strip[((strip.length / 2).floor)..-1]
  p s1
  p s2
  s1.chop! if s1.length > s2.length
  s1 == s2.reverse
end