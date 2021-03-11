# @param {Integer[]} a
# @return {Integer[]}
def sort_array_by_parity(a)
  a.select { |num| num.even? } + a.select { |num| num.odd? }
end