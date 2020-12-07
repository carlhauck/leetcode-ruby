# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  min = 1
  mid = n / 2
  max = n
  
  bad_v_sort = -> (min, mid, max) { 
      if mid == (max - 1)
          if is_bad_version(mid)
              return mid
          else
              return max
          end
      elsif is_bad_version(mid)
          max = mid
          mid = mid / 2
      else
          min = mid
          mid = (min + max) / 2
      end
      bad_v_sort.call(min, mid, max)
  }
  
  bad_v_sort.call(min, mid, max) 
end