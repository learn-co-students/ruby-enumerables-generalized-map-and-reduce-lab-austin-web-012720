# Your Code Here
def map(array)
  new_array = []
  index = 0 
  while index < array.length 
    new_array << yield(array[index])
  index += 1
end
  new_array
end

def reduce(array, starting_point=nil)
  if starting_point
  total = starting_point
  index = 0 
else 
  total = array[0]
  index = 1 
end 
  while index < array.length
    total = yield(total, array[index])
    index +=1
  end
  total
end