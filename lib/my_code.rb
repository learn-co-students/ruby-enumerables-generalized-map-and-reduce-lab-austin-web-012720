# Your Code Here
def map(array)
  new_arr = []
  
  for i in 0...array.length
    new_arr.push(yield(array[i]))
  end
  
  new_arr
end

def reduce(array, start_val=nil)
  
  if start_val
    sum = start_val
    for i in 0...array.length
      sum = yield(sum, array[i])
    end 
  else 
    sum = array[0]
    for i in 1...array.length
      sum = yield(sum, array[i])
    end
  end
  
  
  
  return sum
end