# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  i_vert, i_horiz = 0, 0
  prev_row, row = [], []
  while i_vert <= row_index
    while i_horiz <= i_vert
      if i_horiz == 0 || i_horiz == i_vert
        row << 1
      else
        row << prev_row[i_horiz - 1] + prev_row[i_horiz]
      end
      if i_horiz == i_vert
        if i_vert == row_index
          return row
        else
          prev_row = row
          row = []
        end
      end
      i_horiz += 1
    end
    i_horiz = 0
    i_vert += 1
  end
end