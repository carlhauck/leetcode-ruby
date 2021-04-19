# @param {Integer[]} code
# @param {Integer} k
# @return {Integer[]}
def decrypt(code, k)
  return code.fill(0) if k == 0
  sum_hash = {}
  size = code.length
  if k > 0  
    code.each_with_index do |num, idx|
      if idx == size - 1
        sum_hash[idx] = code[0..k-1].sum
      elsif idx + k >= size
        sum_hash[idx] = code[idx+1..-1].sum + code[0..(k-(size - idx))].sum
      else
        sum_hash[idx] = code[idx+1..idx+k].sum
      end
    end
  elsif k < 0
    code.each_with_index do |num, idx|
      if idx == 0
        sum_hash[idx] = code[k..-1].sum
      elsif idx + k < 0
        sum_hash[idx] = code[0..idx-1].sum + code[-(-k-idx)..-1].sum
      else
        sum_hash[idx] = code[idx+k..idx-1].sum
      end
    end
  end
  sum_hash.values
end