# @param {Integer[]} arr
# @return {Float}
def trim_mean(arr)
  remove = arr.length / 20
  remaining = arr.sort[remove..-(remove + 1)]
  remaining.sum / remaining.length.to_f
end