# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  nums_hash = {}
  while true
    nums_hash[n] ? (return false) : (nums_hash[n] = true)
    digit_ary = n.digits.reverse
    sum = digit_ary.reduce(0) { |sum, num| sum + num**2 }
    sum == 1 ? (return true) : (n = sum)
  end
end