# @param {String} s
# @return {Integer}
def roman_to_int(s)
  index = 0
  sum = 0
  
  while index < s.length
      digit_curr = s[index]
      digit_next = s[index + 1]
      if digit_curr == "L"
          sum += 50
          index += 1
      elsif digit_curr == "V"
          sum += 5
          index += 1
      elsif digit_curr == "D"
          sum += 500
          index += 1
      elsif digit_curr == "M"
          sum += 1000
          index += 1
      elsif digit_curr == "C"
          if digit_next == "M"
              sum += 900
              index += 2
          elsif digit_next == "D"
              sum += 400
              index += 2
          else
              sum += 100
              index += 1
          end
      elsif digit_curr == "X"
          if digit_next == "C"
              sum += 90
              index += 2
          elsif digit_next == "L"
              sum += 40
              index += 2
          else
              sum += 10
              index += 1
          end
      elsif digit_curr == "I"
          if digit_next == "X"
              sum += 9
              index += 2
          elsif digit_next == "V"
              sum += 4
              index += 2
          else
              sum += 1
              index += 1
          end
      end
  end
  sum
end