# Your Code Here
def map(array)
  i = 0
  arr = []
  
  while i < array.length do
    arr.push(yield(array[i]))
    i += 1
  end
  
  return arr
end

def reduce(array, starting_point = nil)
  i = 0
  if starting_point
    sum = starting_point
    i = 0
  else
    sum = array[i]
    i = 1
  end
  
  while i < array.length do
    sum = yield(sum, array[i])
    i += 1
  end
  
  return sum
end