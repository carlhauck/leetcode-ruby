# @param {Integer} x
# @return {Integer}
def reverse(x)
  neg = false
  neg = true if x < 0
  
  x = x.abs
  reversed = x.to_s.split("").reverse.join.to_i
  
  if reversed > 2147483647
      return 0
  elsif neg
      return reversed * -1
  else
      return reversed
  end
end