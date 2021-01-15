# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  num_hash = {}
  for i in 0...nums.length
      if !num_hash[nums[i]]
          num_hash[nums[i]] = i
      else
          return true if (i - num_hash[nums[i]]).abs <= k
          num_hash[nums[i]] = i
      end
  end
  false
end