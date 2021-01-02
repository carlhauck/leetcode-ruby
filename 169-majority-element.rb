# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  min = nums.length / 2
  unique = nums.uniq
  unique.each {|num| return num if nums.count(num) > min}
end