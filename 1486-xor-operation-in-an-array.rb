# @param {Integer} n
# @param {Integer} start
# @return {Integer}
def xor_operation(n, start)
  Array.new(n).fill {|i| start + (2 * i)}.reduce(:^)
end