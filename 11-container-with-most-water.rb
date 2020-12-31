# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  index_l = 0
  index_r = height.length - 1
  max = 0
  while index_l < index_r
    area = [height[index_l], height[index_r]].min * (index_r - index_l)
    max = (area > max) ? area : max
    height[index_l] > height[index_r] ? index_r -= 1 : index_l += 1
  end
  max
end