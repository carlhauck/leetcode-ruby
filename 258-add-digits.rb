# @param {Integer} num
# @return {Integer}
def add_digits(num)
  while true
      return num if num.to_s.length == 1
      num = num.digits.map {|digit| digit.to_i}.sum
  end
end