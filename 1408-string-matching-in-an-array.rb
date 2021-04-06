# @param {String[]} words
# @return {String[]}
def string_matching(words)
  words = words.sort_by {|w| w.length}
  index_l = 0
  output = []
  while words.length > 1
    index_r = 1
    while index_r < words.length
      if words[index_r].include? words[index_l]
        output << words.slice!(index_l)
        break
      end
      if index_r == words.length - 1
        words.shift
      end
      index_r += 1
    end
  end
  output
end