# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  index = 1
  while index < nums.length
      index2 = index - 1
      while index2 >= 0
          if nums[index] + nums[index2] == target
              return [index2, index]
          end
          index2 -= 1
      end
      index += 1
  end
end