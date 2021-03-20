# @param {Integer[]} arr
# @return {Boolean}
def three_consecutive_odds(arr)
  odds = []
  arr.each do |num|
    if num.odd?
      odds << num
      return true if odds.length == 3
    else
      odds = []
    end
  end
  false
end