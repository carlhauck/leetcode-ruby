# @param {String} a
# @param {String} b
# @return {String[]}
def uncommon_from_sentences(a, b)
  all_words = a.split(" ") + b.split(" ")
  all_words.select { |word| all_words.count(word) == 1 }
end