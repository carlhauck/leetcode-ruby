# @param {Integer} n
# @return {Integer}
def total_money(n)
  total_savings = 0
  week_count = 1
  while n > 0
    total_savings += (week_count..(n > 7 ? week_count + 6 : week_count + n - 1)).to_a.sum
    n -= 7
    week_count += 1
  end
  total_savings
end