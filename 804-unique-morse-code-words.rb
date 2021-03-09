# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
  morse = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
  alpha = ("a".."z").to_a
  morse_hash = alpha.zip(morse).to_h
  transformations = {}
  words.each do |word|
    w = word.chars.map { |char| morse_hash[char] }.join
    transformations[w] = true
  end
  transformations.length
end