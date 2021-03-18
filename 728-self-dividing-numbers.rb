# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
  range = (left..right).to_a
  index = range.length - 1
  while index >= 0
    range[index].digits.each do |digit|
      if digit == 0 || range[index] % digit != 0
        range.delete_at(index)
        break
      end
    end
    index -= 1
  end
  range
end