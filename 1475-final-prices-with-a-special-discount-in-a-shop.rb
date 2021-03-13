# @param {Integer[]} prices
# @return {Integer[]}
def final_prices(prices)
  idx = 0
  output = []
  max = prices.length - 1
  while idx < max
    idx_b = idx + 1
    until prices[idx_b] <= prices[idx] || idx_b == max
      idx_b += 1
    end
    if prices[idx_b] <= prices[idx]
      output << prices[idx] - prices[idx_b]
    else
      output << prices[idx]
    end
    idx += 1
  end
  output << prices[-1]
  output
end