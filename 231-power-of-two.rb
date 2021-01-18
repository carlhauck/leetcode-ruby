# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  return true if n == 1
  
  while n > 2
    n = n.to_f / 2
  end
  
  n == 2 ? (return true) : (return false)
end