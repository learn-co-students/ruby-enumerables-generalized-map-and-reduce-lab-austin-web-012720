def map(arr)
  new= []
  i = 0
  while i < arr.length do
    new << yield(arr[i])
    i += 1
  end
  new
end

def reduce(arr, start = nil)
  if start
    sum = start
    i = 0
  else
    sum = arr[0]
    i = 1
  end
  
  while i < arr.length
  sum = yield(sum, arr[i])
  i+= 1
  end
  sum
end
