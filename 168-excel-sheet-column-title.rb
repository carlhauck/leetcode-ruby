# @param {Integer} n
# @return {String}
def convert_to_title(n)
  output = ""
  nums = (1..26).to_a
  alpha = ("A".."Z").to_a
  alpha_hash = nums.zip(alpha).to_h
  while(n > 0)
    output = (n % 26 != 0) ? (alpha_hash[n % 26] + output) : (alpha_hash[26] + output)
    n = (n - 1) / 26
  end
  output
end