# @param {String} sentence
# @param {String} search_word
# @return {Integer}
def is_prefix_of_word(sentence, search_word)
  sentence.split(" ").each_with_index do | word, index |
    return index + 1 if word.start_with?(search_word)
  end
  -1
end