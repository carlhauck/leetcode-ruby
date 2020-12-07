# @param {Integer} n
# @return {String}
def count_and_say(n)
  output = "1"
  return output if n == 1
  
  (n - 1).times do
     output = count_digits(output)
  end
  
  output
end
  
def count_digits(str)
  current_char = str[0]
  char_count = 0
  output = ""
  
  str.chars.each do |c|
      if c == current_char
          char_count += 1
      else
          output += "#{char_count}#{current_char}"
          char_count = 1
          current_char = c
      end
  end
  output += "#{char_count}#{current_char}"
  output
end