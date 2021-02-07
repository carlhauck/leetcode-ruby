# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n)
  nums = n.digits
  nums.reduce(:*) - nums.reduce(:+)
end