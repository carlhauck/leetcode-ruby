# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  output = []
  for i in 1..n
    if i % 3 == 0
      if i % 5 == 0
        output << "FizzBuzz"
      else
        output << "Fizz"
      end
    elsif i % 5 == 0
      output << "Buzz"
    else
      output << i.to_s
    end
  end
  output
end