# Your Code Here

def map(source_array)
  new = []
  index = 0
    while index < source_array.length do
  
     yield(source_array[index])
  
     new.push(yield(source_array[index]))
     index += 1
    end
  new
end
    
def reduce(source_array, starting_value = nil)
    if starting_value
      index = 0
      sum = starting_value
    else
      index = 1
      sum = source_array[0]
   end
 
   while index < source_array.length do
     sum = yield(sum, source_array[index])
     index += 1
   end
  sum
end

