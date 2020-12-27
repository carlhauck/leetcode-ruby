# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max_profit = 0
  buy_index = 0
  sell_index = 1
  while sell_index < prices.length
      if prices[sell_index] < prices[buy_index]
          buy_index = sell_index
      elsif (prices[sell_index] - prices[buy_index]) > max_profit
          max_profit = prices[sell_index] - prices[buy_index]
      end
      sell_index += 1
  end
  max_profit
end