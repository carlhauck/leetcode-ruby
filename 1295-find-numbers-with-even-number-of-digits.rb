# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
  output = 0
  nums.each { |n| output += 1 if n.to_s.length.even? }
  output
end