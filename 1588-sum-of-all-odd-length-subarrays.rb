# @param {Integer[]} arr
# @return {Integer}
def sum_odd_length_subarrays(arr)
  size = arr.length.odd? ? arr.length : arr.length - 1
  output = 0
  while size > 0
    index = 0
    while index <= arr.length - size
      output += arr[index..index+size-1].sum
      index += 1
    end
    size -= 2
  end
  output
end