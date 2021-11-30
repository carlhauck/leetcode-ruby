# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  s_char_hash = Hash.new(0)
  
  s.each_char do |c|
    s_char_hash[c] += 1
  end
  
  t.each_char do |c|
    s_char_hash[c] -= 1
  end

  if s_char_hash.values.all? {|c| c == 0}
    return true
  else
    return false
  end
end