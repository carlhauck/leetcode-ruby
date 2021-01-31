# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
  sorted_nums = nums.sort
  nums.map {|num| sorted_nums.index(num)} 
end