# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  nums.map.with_index {|num, index| nums[0..index].sum}
end