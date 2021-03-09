# @param {Integer[][]} points
# @return {Integer}
def min_time_to_visit_all_points(points)
  seconds = 0
  idx = 1
  while idx < points.length
    x_diff = (points[idx][0] - points[idx - 1][0]).abs
    y_diff = (points[idx][1] - points[idx - 1][1]).abs
    seconds += x_diff >= y_diff ? x_diff : y_diff
    idx += 1
  end
  seconds
end