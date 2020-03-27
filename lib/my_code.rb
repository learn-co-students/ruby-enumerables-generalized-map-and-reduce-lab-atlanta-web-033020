# Your Code Here
def map(array)
  new_array = []
  count = 0
  
  while count < array.length
    new_array << yield(array[count])
    count += 1
  end
  new_array
end

def reduce(array, src = 0)
  value = src
  count = 0
  while count < array.length do
    value = yield(array[count], value)
    value = false if value == nil
    count += 1
  end
  value
end