# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
  nums.sort!
  output = 0
  index = 0
  while index < nums.length - 1
      index_compare = index + 1
      while index_compare < nums.length
          (nums[index] == nums[index_compare]) ? (output += 1) : (break)
          index_compare += 1
      end
      index += 1
  end
  output
end