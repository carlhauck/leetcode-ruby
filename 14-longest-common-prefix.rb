# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  index = 0
  output = ""
  min_chars = nil
  
  return strs[0] if strs.length == 1
  
  strs.each do |str|
      if min_chars == nil || str.length < min_chars
          min_chars = str.length
      end
  end
  
  return "" if min_chars == nil || min_chars == 0
  
  while index <= min_chars
      return output if index == min_chars
      letter = strs[0][index]
      strs.each do |word|
          if word[index] != letter
             return output
          end
      end
      output << letter
      index += 1
  end 
end