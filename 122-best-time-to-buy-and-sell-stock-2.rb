# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profit, buy_index, sell_index = 0, 0, 1
  while sell_index < prices.length
    if prices[sell_index] < prices[buy_index]
      buy_index = sell_index
    else
      until (sell_index == prices.length - 1) || (prices[sell_index + 1] < prices[sell_index])
        sell_index += 1
      end
      profit += (prices[sell_index] - prices[buy_index])
      buy_index = sell_index + 1
      sell_index = buy_index
    end
    sell_index += 1
  end
  profit
end