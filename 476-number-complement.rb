# @param {Integer} num
# @return {Integer}
def find_complement(num)
  num.to_s(2).tr("01", "10").to_i(2)
end