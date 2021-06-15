# @param {String} first_word
# @param {String} second_word
# @param {String} target_word
# @return {Boolean}
def is_sum_equal(first_word, second_word, target_word)
  values = { "a" => "0", "b" => "1", "c" => "2", "d" => "3", "e" => "4", "f" => "5", "g" => "6", "h" => "7", "i" => "8", "j" => "9" }
  two_word_sum = 0
  
  [first_word, second_word].each do |word|
      two_word_sum += word.chars.map { |c| values[c] }.join.to_i
  end

  two_word_sum == target_word.chars.map { |c| values[c] }.join.to_i
end