def bsearch(arr, n)
  arr.sort!
  start = 0
  last = arr.length - 1
  steps = 0
  while start <= last
    steps += 1
    middle = (last + start) / 2
    middle_value = arr[middle]
    return "#{n} was found at index #{middle} of the sorted array in #{steps} steps" if n == middle_value
    middle_value > n ? last = middle - 1 : start = middle + 1
  end

  return "#{n} was not found in the given array in #{steps} steps"
end

arr = []
(5000).times { arr << rand(5000)}

puts arr[2000]
puts bsearch(arr, arr[2000])
puts bsearch(arr, 6000)
