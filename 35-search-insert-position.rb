# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  if nums.index(target)
      nums.index(target)
  else
      index = 0
      while (index < nums.length) && (target > nums[index])
          index += 1
      end
      index
  end
end