# @param {Integer} candies
# @param {Integer} num_people
# @return {Integer[]}
def distribute_candies(candies, num_people)
  candy_hash = {}
  current_distribution = 1
  people = (0..num_people - 1).to_a
  people.each { |p| candy_hash[p] = 0 }
  idx = 0
  while true
    if candies > current_distribution
      candy_hash[idx] += current_distribution
      candies -= current_distribution
      current_distribution += 1
    else
      candy_hash[idx] += candies
      return candy_hash.values
    end
    
    if idx < num_people - 1
      idx += 1
    else
      idx = 0
    end
  end
end