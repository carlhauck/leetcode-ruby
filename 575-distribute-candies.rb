# @param {Integer[]} candy_type
# @return {Integer}
def distribute_candies(candy_type)
  variety_count = candy_type.uniq.length
  half_count = candy_type.length / 2
  output = variety_count > half_count ? half_count : variety_count
end