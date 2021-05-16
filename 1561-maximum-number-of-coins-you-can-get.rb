# @param {Integer[]} piles
# @return {Integer}
def max_coins(piles)
  piles.max(piles.length * 2 / 3).select.with_index { |_, index| index.odd? }.sum
end