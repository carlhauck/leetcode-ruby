# @param {Integer} num
# @return {Integer}
def number_of_steps (num)
  steps = 0
  while true
    return steps if num == 0
    num.even? ? (num = num / 2) : (num -= 1)
    steps += 1
  end
end