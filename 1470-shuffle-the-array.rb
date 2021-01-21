# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
  nums[0..(n-1)].zip(nums[n..-1]).flatten
end