# @param {Integer[]} group_sizes
# @return {Integer[][]}
def group_the_people(group_sizes)
  output = []
  assigned = {}
  
  group_sizes.each_with_index do |group_size, index|
      assigned[group_size] = Array.new if !assigned[group_size]
      assigned[group_size] << index
  end
  
  assigned.each do |k,v|
      groups = v.each_slice(k).to_a
      groups.each {|group| output << group}
  end
  
  output
end