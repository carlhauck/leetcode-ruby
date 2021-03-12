# @param {Integer[]} nums
# @return {Integer}
def sum_of_unique(nums)
  nums.select { |num| nums.count(num) < 2 }.sum
end