# @param {Integer} n
# @return {Integer}
def number_of_matches(n)
  return 0 if n <= 1
  return 1 if n == 2
  (n / 2) + number_of_matches((n.to_f / 2).ceil)
end