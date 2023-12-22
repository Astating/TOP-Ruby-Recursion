def merge_sort(array)
  array_dup = array.dup

  return array_dup if array_dup.length <= 1 

  left = merge_sort(array_dup.shift(array_dup.length / 2))
  right = merge_sort(array_dup)

  merged = []

  merged.push(left.first <= right.first ? left.shift : right.shift) until left.empty? || right.empty?

  merged + left + right
end

5.times do
  unsorted = Array.new(9) {rand(9)}

  sorted = merge_sort(unsorted)
  
  p ({unsorted:, sorted:})
end

p merge_sort([])

 
