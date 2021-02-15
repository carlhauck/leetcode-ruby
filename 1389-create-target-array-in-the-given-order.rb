# @param {Integer[]} nums
# @param {Integer[]} index
# @return {Integer[]}
def create_target_array(nums, index)
  output = []
  for i in 0..nums.length - 1
    output.insert(index[i], nums[i])
  end
  output
end