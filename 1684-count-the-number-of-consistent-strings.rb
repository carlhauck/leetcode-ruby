# @param {String} allowed
# @param {String[]} words
# @return {Integer}
def count_consistent_strings(allowed, words)
  nope = 0
  words.each { |w| nope += 1 if w.chars.any? { |char| !allowed.include? char } }
  words.length - nope
end