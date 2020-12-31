# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  count_hash = {}
  nums.each do |num|
    count_hash[num] ||= nums.count(num)
    return num if count_hash[num] == 1
  end
end