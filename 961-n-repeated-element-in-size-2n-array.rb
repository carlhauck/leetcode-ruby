# @param {Integer[]} a
# @return {Integer}
def repeated_n_times(a)
  num_hash = {}
  target = a.length / 2
  a.each do |num|
    if num_hash[num]
      num_hash[num] += 1
    else
      num_hash[num] = 1
    end
    return num if num_hash[num] == target
  end
end