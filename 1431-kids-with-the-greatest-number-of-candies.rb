# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
  greatest = candies.max
  candies.map {|candy| (candy == greatest || candy + extra_candies >= greatest) ? true : false}
end