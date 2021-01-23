# @param {Integer} n
# @return {Integer}
def rotated_digits(n)
  return (1..n).count do |num|
    digs = num.digits
    not digs.any? { |dig| [3, 4, 7].include?(dig) } and
    not digs.all? { |dig| [0, 1, 8].include?(dig) }
  end
end