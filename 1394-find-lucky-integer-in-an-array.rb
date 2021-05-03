# @param {Integer[]} arr
# @return {Integer}
def find_lucky(arr)
  nums = arr.sort!.reverse!.uniq
  nums.each { |num| return num if arr.count(num) == num }
  -1
end