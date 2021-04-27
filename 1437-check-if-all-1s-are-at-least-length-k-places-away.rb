# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def k_length_apart(nums, k)
  started = false
  gap = 0
  
  return true if nums.count(1) < 2
  
  nums.each do |num|
    if num == 1
      return false if started && k > gap
      gap = 0
      started ||= true
    else
      gap += 1
    end
  end
  started
end