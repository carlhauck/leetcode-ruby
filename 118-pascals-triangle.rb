# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  i_vert, i_horiz = 0, 0
  triangle, row = [], []
  while i_vert < num_rows
      while i_horiz <= i_vert
          if i_horiz == 0 || i_horiz == i_vert
              row << 1
          else
              row << triangle[-1][i_horiz - 1] + triangle[-1][i_horiz]
          end
          if i_horiz == i_vert
              triangle << row
              row = []
          end
          i_horiz += 1
      end
      i_horiz = 0
      i_vert += 1
  end
  triangle
end