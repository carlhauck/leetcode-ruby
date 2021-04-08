# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  while stones.length >= 2
    stones.sort!
    diff = stones[-2..-1].max - stones[-2..-1].min
    if diff == 0
      stones = stones[0..-3]
    else
      stones = stones[0..-3].push(diff)
    end
  end
  if stones.length == 1
    stones[0]
  else
    0
  end
end