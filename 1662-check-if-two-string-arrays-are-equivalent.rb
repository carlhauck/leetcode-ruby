# @param {String[]} word1
# @param {String[]} word2
# @return {Boolean}
def array_strings_are_equal(word1, word2)
  (word1.length > 1 ? word1.join : word1[0]) == (word2.length > 1 ? word2.join : word2[0])
end