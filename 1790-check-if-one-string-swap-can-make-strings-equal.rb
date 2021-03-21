# @param {String} s1
# @param {String} s2
# @return {Boolean}
def are_almost_equal(s1, s2)
  char_at_idx_hsh = {}
  char_count_hsh = {}
  swap_count = 0
  s1.each_char.with_index do |c, idx|
    char_at_idx_hsh[idx] = c
    char_count_hsh[c] ? char_count_hsh[c] += 1 : char_count_hsh[c] = 1
  end
  s2.each_char.with_index do |c, idx|
    if char_at_idx_hsh[idx] != c
      swap_count += 1
    end
    return false if swap_count > 2
    char_count_hsh[c] ? char_count_hsh[c] += 1 : (return false)
  end
  return false if char_count_hsh.any? { |_, v| v.odd? }
  true
end