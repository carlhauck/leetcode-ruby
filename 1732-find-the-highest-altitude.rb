# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
  current_alt = 0
  max_alt = 0
  gain.each do |p|
    current_alt += p
    max_alt = current_alt if current_alt > max_alt
  end
  max_alt
end