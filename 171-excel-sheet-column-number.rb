# @param {String} s
# @return {Integer}
def title_to_number(s)
  output = 0
  alpha = ("A".."Z").to_a
  nums = (1..26).to_a
  num_hash = alpha.zip(nums).to_h
  s.reverse.chars.each_with_index {|c, index| output += (num_hash[c] * (26 ** index)) }
  output
end