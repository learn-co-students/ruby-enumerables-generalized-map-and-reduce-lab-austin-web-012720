# Your Code Here
def map(array)
  #map returns new array of manipulated elements
  new = [] #new array to be returned
  i = 0
  while i < array.size
    new.push(yield(array[i])) #push each result from yeild into the new array
    i += 1
  end
  new
end

#
def reduce(array, sv = nil) #sv = starting value, initial value for returned value
  if sv
    sum = sv
    i = 0
  else
    sum = array[0]
    i = 1
  end

  while i < array.length
    sum = yield(sum, array[i])
    i += 1
  end
  sum
end
