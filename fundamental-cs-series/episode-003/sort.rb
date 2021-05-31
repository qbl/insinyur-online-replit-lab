def sort(input_array)
  bubble_sort(input_array)
end

def bubble_sort(input_array)
  unsorted_until_index = input_array.size-1
  
  while unsorted_until_index > 0 do
    i = 0

    while i < unsorted_until_index do
      if input_array[i] > input_array[i+1]
        input_array[i], input_array[i+1] = input_array[i+1], input_array[i] 
      end
  
      i += 1
    end

    unsorted_until_index -= 1
  end

  return input_array
end