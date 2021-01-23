# @param {Integer[][]} grid
# @return {Integer}
def max_increase_keeping_skyline(grid)
  output = 0
  row_length = grid[0].length
  col_max = {}
  row_max = {}
  grid.each_with_index do |row, index_vert|
    row_max[index_vert] = row.max
    index_horiz = 0
    while index_horiz < row_length
      if row[index_horiz] < row_max[index_vert]
        output += (row_max[index_vert] - row[index_horiz])
      end
      if col_max[index_horiz] == nil || col_max[index_horiz] < row[index_horiz]
        col_max[index_horiz] = row[index_horiz]
      end
      index_horiz += 1
    end
  end
  grid.each_with_index do |row, index_vert|
    index_horiz = 0
    while index_horiz < row_length
      if row_max[index_vert] > col_max[index_horiz]
        output -= (row_max[index_vert] - col_max[index_horiz])
      end
      index_horiz += 1
    end
  end
  output
end