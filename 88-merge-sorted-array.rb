# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  (m...m+n).each do |i|
     nums1[i] = nums2[i - m] 
  end
  nums1.sort!
end