# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    
  if x < 0
      return false
  end
  
  i_forw = 0
  i_back = -1
  digits = x.digits
  midpoint = digits.length / 2
  
  while i_forw <= midpoint
      if digits[i_forw] != digits[i_back]
          return false
      elsif i_forw == midpoint
          return true
      end
      i_forw += 1
      i_back -= 1
  end
end