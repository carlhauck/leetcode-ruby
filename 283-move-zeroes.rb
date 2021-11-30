# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  index = 0
  length = nums.length
  while index < length
    if nums[index] == 0
      nums.delete_at(index)
      nums.append(0)
      length -= 1
    else
      index += 1
    end
  end
  nums
end