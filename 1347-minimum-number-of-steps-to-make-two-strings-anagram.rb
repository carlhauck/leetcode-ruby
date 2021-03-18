# @param {String} s
# @param {String} t
# @return {Integer}
def min_steps(s, t)
  s_hash = {}
  s.each_char do |char|
    s_hash[char] ? s_hash[char] += 1 : s_hash[char] = 1
  end
  t.each_char do |char|
    s_hash[char] -= 1 if s_hash[char] && s_hash[char] > 0
  end
  s_hash.values.sum
end