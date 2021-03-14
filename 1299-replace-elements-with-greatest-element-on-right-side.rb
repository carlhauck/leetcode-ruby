# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)
  arr.map.with_index { |num, idx| idx == arr.length-1 ? -1 : arr[idx+1..-1].max }
end