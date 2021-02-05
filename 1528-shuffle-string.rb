# @param {String} s
# @param {Integer[]} indices
# @return {String}
def restore_string(s, indices)
  indices.zip(s.chars).sort.each.map {|c| c[1]}.join
end