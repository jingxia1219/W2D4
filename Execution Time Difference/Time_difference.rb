# Phase 1: O(n^2)
def my_min1(arr) 
  smallest = nil 
  
  i = 0 
  while i < arr.length - 1 
    j = i + 1
    while j < arr.length 
      if arr[i] < arr[j] && arr[i] < smallest
        smallest = arr[i]
      end 
      j += 1
    end
    i += 1
  end
  smallest
end

# Phase 2: O(n)
def my_min(arr) 
  smallest = arr.first
  arr.each do |el| 
    smallest = el if el < smallest 
  end 
  smallest
end 

# Phase 1: O(n^2)
def largest_contiguous_subsum(list)
  result = []
  i = 0
  while i < list.length 
    j = i
    while j < list.length 
      result << list[i..j]
      j += 1 
    end
    i += 1 
  end
  result.map { |el| el.reduce(:+) }.max  
end

#Phase 2: O(n)
def largest_contiguous_subsum(arr) 
  largest = arr.first 
  prev_sum, sum = 0, 0
  
  arr.each do |el| 
    if sum + el < 0   
      sum = 0 
    else 
      prev_sum = sum 
      sum += el 
    end
    largest = el if largest < el 
  end 

  return largest if sum == 0 
  return prev_sum if prev_sum > sum 
  sum 
end
