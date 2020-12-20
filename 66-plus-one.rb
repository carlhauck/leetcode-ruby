# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  output = (digits.join().to_i + 1).digits.reverse
  if output == [1]
      digits.pop
      return digits.push(1)
  else
      return output
  end
end