# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
  char_count = { "b" => 0, "a" => 0, "l" => 0, "o" => 0, "n" => 0 }
  text.each_char do |c|
    char_count[c] += 1 if char_count[c]
  end
  single = [char_count["b"], char_count["a"], char_count["n"]].min
  double = [char_count["l"], char_count["o"]].min
  if single == 0 || double <= 1
    return 0
  elsif double / single >= 2
    return single
  else
    return double / 2
  end
end