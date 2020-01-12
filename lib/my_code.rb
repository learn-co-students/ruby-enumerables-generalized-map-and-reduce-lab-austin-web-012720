def map(source_array)
    #map returns new array, I am building my own map method
    new_array = []
    i = 0 
    while i < source_array.length do 
        new_array.push(yield(source_array[i]))
        i += 1
    end
    new_array
end 

def reduce(source_array, start_value = nil)
    if start_value
        sum = start_value
        i = 0
    else
        sum = source_array[0]
        i = 1
    end 
    while i < source_array.length do 
        sum = yield(sum, source_array[i])
        i += 1
    end 
    sum
end