# @param {Integer[]} costs
# @param {Integer} coins
# @return {Integer}
def max_ice_cream(costs, coins)
  spent = 0
  costs.sort!.each_with_index do |cost, index|
    if spent + cost <= coins
      spent += cost
    else
      return index
    end
  end
  costs.length
end